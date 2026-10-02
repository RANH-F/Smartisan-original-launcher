"""Execute the production Smali removal prefix against sibling/clone/shortcut rows."""
import pathlib
import re

ROOT = pathlib.Path(__file__).resolve().parents[3]
BASE = ROOT / 'launcher/smali/com/smartisanos/launcher'


def body(file, signature):
    return (BASE/file).read_text('utf-8').split('.method '+signature, 1)[1].split('.end method', 1)[0]


def execute_removal(item, rows):
    code = body('data/A.smali', 'private static q(Lcom/smartisanos/launcher/data/ItemInfo;)V')
    lines = [s.strip() for s in code.splitlines() if s.strip() and not s.strip().startswith(('#', '.'))]
    labels = {s: i for i, s in enumerate(lines) if s.startswith(':')}
    registers = {'p0': item}
    result = None
    queued = []
    pc = 0
    for _ in range(100):
        line = lines[pc]
        pc += 1
        if line == ':remove_legacy_item':
            return 'legacy', queued
        if line.startswith(':'):
            continue
        op, args = line.split(' ', 1) if ' ' in line else (line, '')
        if op.startswith('move-object'):
            dest, src = args.split(', ')
            registers[dest] = registers[src]
        elif op.startswith('move-result'):
            registers[args] = result
        elif op.startswith('iget'):
            dest, src, field = args.split(', ')
            registers[dest] = registers[src][field.split('->')[1].split(':')[0]]
        elif op.startswith('const/'):
            dest, value = args.split(', ')
            registers[dest] = int(value, 16)
        elif op in ('if-eqz', 'if-nez'):
            reg, label = args.split(', ')
            jump = bool(registers[reg]) == (op == 'if-nez')
            if jump:
                pc = labels[label]
        elif op == 'new-instance':
            dest, cls = args.split(', ')
            registers[dest] = [] if cls == 'Ljava/util/ArrayList;' else {}
        elif op.startswith('invoke'):
            names = re.search(r'\{(.*?)\}', args).group(1).split(', ')
            values = [registers[name] for name in names]
            target = args.split('}, ', 1)[1]
            if target.endswith('data/a/l;->i(Lcom/smartisanos/launcher/data/ItemInfo;)V'):
                rows.pop(values[0]['id'])
            elif target == 'Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z':
                values[0].append(values[1])
                result = True
            elif 'data/z;-><init>' in target:
                values[0].update(package=values[1], action=values[2], items=list(values[3]))
            elif 'data/q;-><init>' in target:
                values[0].update(event=values[1], task=values[2], package=values[3], item=values[4])
            elif 'smengine/n;->q(F)V' in target:
                queued.append(values[0])
            elif target != 'Ljava/util/ArrayList;-><init>()V':
                raise AssertionError('Unexpected side effect: '+target)
        elif op == 'return-void':
            return 'exact', queued
        else:
            raise AssertionError(line)
    raise AssertionError('Production removal did not terminate')


def check():
    template = [
        dict(id=101, packageName='test.app', itemType=0, userId=0, componentName='A'),
        dict(id=102, packageName='test.app', itemType=0, userId=0, componentName='B'),
        dict(id=103, packageName='test.app', itemType=0, userId=10, componentName='A'),
        dict(id=104, packageName='test.app', itemType=2, userId=0, componentName='A'),
        dict(id=105, packageName='test.app', itemType=8, userId=0, componentName='mini'),
    ]
    for selected in template[:3]:
        rows = {row['id']: row for row in template}
        route, events = execute_removal(selected, rows)
        assert route == 'exact' and set(rows) == {row['id'] for row in template} - {selected['id']}
        assert len(events) == 1 and events[0]['event'] == 0x65
        assert events[0]['task']['items'] == [selected] and events[0]['task']['action'] == 2
    for selected in template[3:]:
        rows = {row['id']: row for row in template}
        route, events = execute_removal(selected, rows)
        assert route == 'legacy' and not events and len(rows) == len(template)

    queue = body('data/z.smali', 'public static Ge()V')
    # The guard must precede dequeue and the legacy force-finish, including the
    # second timeline. Test its actual status-bit operand against both phases.
    gate = queue.split(':cond_e', 1)[1].split('->Wh()V', 1)[0]
    bit = int(re.search(r'const/high16 v11, (0x[0-9a-f]+)', gate).group(1), 16)
    assert '->S(I)Z' in gate and 'if-nez v12, :goto_5' in gate
    assert queue.index('if-nez v12, :goto_5') < queue.index('Ljava/util/List;->remove(I)')
    for flags in (0, 0x40, 0x10000, 0x10040, 0x10800):
        assert bool(flags & bit) == bool(flags & 0x10000)
    for file in ('view/Pc.smali', 'view/Qc.smali'):
        callback = body(file, 'public onComplete()V')
        assert callback.index('->Ge()V') > callback.rindex('Lcom/smartisanos/smengine/g;)')
    priority = body('data/w.smali', 'public run()V')
    assert '->id:J' in priority and 'cmp-long' in priority
    assert 'Ljava/lang/String;->equals' not in priority
    print('PASS production Smali: exact rows, clone/component/shortcut isolation, GL task and two-phase queue guard')


if __name__ == '__main__':
    check()
