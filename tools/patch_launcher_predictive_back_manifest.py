"""Enable predictive Back only for the separate settings Activity."""

from pathlib import Path
import struct

from patch_badge_service_manifest import ANDROID_NS, attribute, build_pool, read_pool, u16, u32


MANIFEST = Path(__file__).resolve().parents[1] / "launcher" / "original" / "AndroidManifest.xml"
TARGET_ACTIVITIES = {
    "com.smartisanos.launcher.Launcher": False,
    "com.smartisanos.launcher.theme.ThemeChooserActivity": True,
}


def main():
    data = bytearray(MANIFEST.read_bytes())
    pool_start, pool_size, strings, flags = read_pool(data)

    def index(value):
        if value not in strings:
            strings.append(value)
        return strings.index(value)

    android_ns = index(ANDROID_NS)
    activity_tag = index("activity")
    name_attr = index("name")
    back_attr = index("enableOnBackInvokedCallback")
    target_values = {index(name): name for name in TARGET_ACTIVITIES}
    true_value = index("true")
    false_value = index("false")
    new_pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:pool_start] + new_pool + data[pool_start + pool_size:])
    # AXML resolves Android attributes through the resource map, not just the
    # string name. Extend it for this newly appended framework attribute.
    resource_map = pool_start + len(new_pool)
    if u16(rebuilt, resource_map) != 0x0180:
        raise ValueError("binary manifest has no resource map")
    map_size = u32(rebuilt, resource_map + 4)
    map_count = (map_size - 8) // 4
    if map_count <= back_attr:
        added = (back_attr + 1 - map_count) * 4
        rebuilt[resource_map + map_size:resource_map + map_size] = b"\0" * added
        struct.pack_into("<I", rebuilt, resource_map + 4, map_size + added)
    struct.pack_into("<I", rebuilt, resource_map + 8 + back_attr * 4, 0x0101066c)
    found = set()
    pos = pool_start + len(new_pool)
    while pos < len(rebuilt):
        chunk_type = u16(rebuilt, pos)
        chunk_size = u32(rebuilt, pos + 4)
        if chunk_size < 8:
            raise ValueError("invalid AXML chunk")
        if chunk_type == 0x0102 and u32(rebuilt, pos + 20) == activity_tag:
            attr_start = u16(rebuilt, pos + 24)
            attr_size = u16(rebuilt, pos + 26)
            attr_count = u16(rebuilt, pos + 28)
            attrs = pos + 16 + attr_start
            target = None
            back_attribute_offset = None
            for offset in range(attr_count):
                current = attrs + offset * attr_size
                if u32(rebuilt, current) == android_ns and u32(rebuilt, current + 4) == name_attr:
                    target = target_values.get(u32(rebuilt, current + 8))
                if u32(rebuilt, current) == android_ns and u32(rebuilt, current + 4) == back_attr:
                    back_attribute_offset = current
            if target is not None:
                found.add(target)
                enabled = TARGET_ACTIVITIES[target]
                raw_value = true_value if enabled else false_value
                if back_attribute_offset is not None:
                    struct.pack_into("<I", rebuilt, back_attribute_offset + 8, raw_value)
                    struct.pack_into("<I", rebuilt, back_attribute_offset + 16, int(enabled))
                else:
                    encoded = attribute(android_ns, back_attr, raw_value, 0x12, int(enabled))
                    rebuilt[attrs + attr_count * attr_size:attrs + attr_count * attr_size] = encoded
                    struct.pack_into("<I", rebuilt, pos + 4, chunk_size + len(encoded))
                    struct.pack_into("<H", rebuilt, pos + 28, attr_count + 1)
                    chunk_size += len(encoded)
        pos += chunk_size
    if found != set(TARGET_ACTIVITIES):
        raise ValueError("predictive back target activities not found: "
                         + repr(set(TARGET_ACTIVITIES) - found))
    struct.pack_into("<I", rebuilt, 4, len(rebuilt))
    MANIFEST.write_bytes(rebuilt)
    print("Launcher predictive back disabled; settings enabled", MANIFEST)


if __name__ == "__main__":
    main()
