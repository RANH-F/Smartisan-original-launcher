"""Add the URI-grant-only icon share provider to the retained binary manifest."""
import struct

from patch_badge_service_manifest import (
    ANDROID_NS, MANIFEST, attribute, build_pool, end_element, read_pool, start_element, u16, u32,
)

PROVIDER = "com.smartisanos.home.settings.icons.IconShareProvider"
AUTHORITY = "com.smartisanos.launcher.iconshare"

data = MANIFEST.read_bytes()
offset, size, strings, flags = read_pool(data)

if PROVIDER not in strings:
    def index(value):
        if value not in strings:
            strings.append(value)
        return strings.index(value)

    ns = index(ANDROID_NS)
    provider = index("provider")
    application = index("application")
    name = index(PROVIDER)
    authority = index(AUTHORITY)
    grant = index("grantUriPermissions")
    attrs = [
        attribute(ns, strings.index("name"), name),
        attribute(ns, strings.index("exported"), index("false"), 0x12, 0),
        attribute(ns, strings.index("authorities"), authority),
        attribute(ns, grant, index("true"), 0x12, 0xFFFFFFFF),
    ]
    pool = build_pool(strings, flags)
    rebuilt = bytearray(data[:offset] + pool + data[offset + size:])
    pos = offset + len(pool)
    if u16(rebuilt, pos) != 0x0180:
        raise ValueError("Missing resource map")
    map_size = u32(rebuilt, pos + 4)
    resource_count = (map_size - 8) // 4
    if grant < resource_count:
        raise ValueError("Unexpected grantUriPermissions resource slot")
    extension = bytes((grant - resource_count) * 4) + struct.pack("<I", 0x0101001b)
    rebuilt[pos + map_size:pos + map_size] = extension
    struct.pack_into("<I", rebuilt, pos + 4, map_size + len(extension))
    while pos < len(rebuilt):
        chunk_size = u32(rebuilt, pos + 4)
        if chunk_size < 8:
            raise ValueError("Invalid AXML chunk")
        if u16(rebuilt, pos) == 0x0103 and u32(rebuilt, pos + 20) == application:
            rebuilt[pos:pos] = start_element(provider, attrs) + end_element(provider)
            struct.pack_into("<I", rebuilt, 4, len(rebuilt))
            MANIFEST.write_bytes(rebuilt)
            break
        pos += chunk_size
    else:
        raise ValueError("Missing application end element")
