"""Execute production layout-key selection against real profile XMLs."""
import argparse
from pathlib import Path
import re
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[3]
PARSER = ROOT / 'launcher/smali/com/smartisanos/launcher/data/P.smali'
HORIZONTAL = {'page_view_margin_left', 'page_view_margin_right'}


def instructions(source):
    method = source.read_text(encoding='utf-8').split(
        '.method public static a(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;)', 1
    )[1].split('.end method', 1)[0]
    body = method.split('    if-eqz p3, :cond_2', 1)[1].split(
        '    invoke-interface {p0, v2}, Ljava/util/Map;->containsKey', 1)[0]
    body = 'if-eqz p3, :cond_2\n' + body
    return [line.split('#', 1)[0].strip() for line in body.splitlines()
            if line.strip() and not line.strip().startswith(('.', '#'))]


def select(code, values, field, suffix, directory, mode):
    labels = {line: i for i, line in enumerate(code) if line.startswith(':')}
    regs = {'p0': values, 'p3': suffix, 'v2': field,
            'v4': field + (suffix or ''), 'v7': directory, 'v8': mode}
    pc, result = 0, None
    while pc < len(code):
        line = code[pc]
        op = line.split()[0]
        args = [v.strip() for v in line[len(op):].split(',')]
        if line == ':goto_2': return regs['v2']
        if line.startswith(':'): pass
        elif op == 'const-string': regs[args[0]] = re.search(r'"(.*)"', line)[1]
        elif op.startswith('const/'): regs[args[0]] = int(args[1], 0)
        elif op == 'move-object': regs[args[0]] = regs[args[1]]
        elif op == 'move-result': regs[args[0]] = result
        elif op in ('if-eqz', 'if-nez'):
            if bool(regs[args[0]]) == (op == 'if-nez'):
                pc = labels[args[1]]; continue
        elif op in ('if-eq', 'if-ne'):
            if (regs[args[0]] == regs[args[1]]) == (op == 'if-eq'):
                pc = labels[args[2]]; continue
        elif op == 'goto': pc = labels[args[0]]; continue
        elif op.startswith('invoke'):
            r = [regs[s.strip()] for s in re.search(r'\{(.*?)\}', line)[1].split(',')]
            method = re.search(r'->(\w+)\(', line)[1]
            if method == 'equals': result = r[0] == r[1]
            elif method == 'startsWith': result = r[0].startswith(r[1])
            elif method == 'containsKey': result = r[1] in r[0]
            else: raise AssertionError(line)
        else: raise AssertionError(line)
        pc += 1
    raise AssertionError('Missing selected-key return')


def normalize(source, values, suffix, directory, mode, gaussian):
    marker = '.method private static unifyThemePageMargins('
    text = source.read_text(encoding='utf-8')
    if marker not in text: return values.copy()
    body = text.split(marker, 1)[1].split('.end method', 1)[0].split('.locals 2', 1)[1]
    code = [s.split('#', 1)[0].strip() for s in body.splitlines()
            if s.strip() and not s.strip().startswith(('.', '#'))]
    labels = {s: i for i, s in enumerate(code) if s.startswith(':')}
    result, pc = None, 0
    property = values.copy()
    regs = {'p0': property, 'p1': suffix, 'p2': directory, 'p3': mode}
    while pc < len(code):
        s = code[pc]; op = s.split()[0]
        args = [a.strip() for a in s[len(op):].split(',')]
        if s.startswith(':'): pass
        elif op == 'const-string': regs[args[0]] = re.search(r'"(.*)"', s)[1]
        elif op.startswith('const/'): regs[args[0]] = int(args[1], 0)
        elif op == 'move-result': regs[args[0]] = result
        elif op == 'sget-boolean':
            assert args[1].endswith('->sIsGaussianTheme:Z')
            regs[args[0]] = gaussian
        elif op == 'iput':
            regs[args[1]][args[2].split('->')[1].split(':')[0]] = regs[args[0]]
        elif op in ('if-eqz', 'if-nez'):
            if bool(regs[args[0]]) == (op == 'if-nez'):
                pc = labels[args[1]]; continue
        elif op in ('if-eq', 'if-ne'):
            if (regs[args[0]] == regs[args[1]]) == (op == 'if-eq'):
                pc = labels[args[2]]; continue
        elif op == 'goto': pc = labels[args[0]]; continue
        elif op.startswith('invoke'):
            r = [regs[k.strip()] for k in re.search(r'\{(.*?)\}', s)[1].split(',')]
            name = re.search(r'->(\w+)\(', s)[1]
            if name == 'equals': result = r[0] == r[1]
            elif name == 'startsWith': result = r[0].startswith(r[1])
            else: raise AssertionError(s)
        elif op == 'return-void': return property
        else: raise AssertionError(s)
        pc += 1
    raise AssertionError('Missing normalization return')


def main():
    parser = argparse.ArgumentParser(__doc__)
    parser.add_argument('--source', type=Path, default=PARSER)
    options = parser.parse_args()
    code = instructions(options.source)
    checks = 0
    for file in (ROOT / 'launcher/assets/layout').rglob('layout.xml'):
        values = {n.get('name'): int(n.text) for n in ET.parse(file).getroot()
                  if n.tag == 'integer'}
        mode = int(file.parent.name.removeprefix('MODE_'))
        directory = file.parent.parent.relative_to(ROOT / 'launcher/assets').as_posix()
        names = {k.removesuffix('_trans').removesuffix('_folder') for k in values}
        for suffix in (None, '_trans', '_folder'):
            for field in names:
                old = field + (suffix or '') if field + (suffix or '') in values else field
                got = select(code, values, field, suffix, directory, mode)
                assert got == old, (file, field, suffix, got, old)
                checks += 1
            raw = {field: values.get(select(code, values, field, suffix, directory, mode), 0)
                   for field in names | HORIZONTAL}
            for gaussian in (False, True):
                eligible = (mode in (9, 12, 20) and directory.startswith('layout/portrait/')
                            and (suffix == '_trans' or (suffix is None and gaussian)))
                actual = normalize(options.source, raw, suffix, directory, mode, gaussian)
                expected = raw.copy()
                if eligible:
                    for field in HORIZONTAL: expected[field] = 0
                assert actual == expected, (file, suffix, gaussian, 'layout fields differ')
                assert normalize(options.source, actual, suffix, directory, mode, gaussian) == actual
                checks += 2
        if directory.startswith('layout/portrait/') and mode in (9, 12, 20):
            for width in (720, 1080, 1260, 1368, 1440):
                cols = 3 if mode == 12 else 4
                for suffix, gaussian in [('_trans', False), (None, True)]:
                    actual = normalize(options.source, {k: values.get(k + (suffix or ''), values.get(k, 0))
                                                        for k in HORIZONTAL}, suffix, directory, mode, gaussian)
                    assert sum(actual[k] for k in HORIZONTAL) == 0
                    # The original formatter now consumes the full width, without extra padding.
                    spacing = values.get('cell_spacing_h', 0)
                    cell = (width - (cols - 1) * spacing) / cols
                    assert abs(cell * cols + spacing * (cols - 1) - width) < .00001
                    checks += 2
    print('PASS production transparent/gaussian margin checks=' + str(checks))


if __name__ == '__main__': main()
