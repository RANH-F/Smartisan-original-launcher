"""Run the production smali handoff with distinct outgoing/incoming textures."""
from pathlib import Path
from types import SimpleNamespace as Obj
import re

ROOT = Path(__file__).resolve().parents[3]
SRC = ROOT / "launcher/smali/com/smartisanos/launcher/view/a"


def method(file, signature):
    return (SRC / file).read_text(encoding="utf-8").split(signature, 1)[1].split(".end method", 1)[0]


def execute(body, instance):
    code = [s.strip() for s in body.splitlines()
            if s.strip() and not s.strip().startswith((".", "#"))]
    labels = {s: i for i, s in enumerate(code) if s.startswith(":")}
    regs, result, pc = {"p0": instance}, None, 0
    while pc < len(code):
        s = code[pc]
        if s.startswith(":"):
            pass
        elif s.startswith(("iget-object", "iget-boolean")):
            dest, source, field = re.match(r"iget-\w+ (\w+), (\w+), .*->(\w+):", s).groups()
            regs[dest] = getattr(regs[source], field)
        elif s.startswith("aget-object"):
            dest, source, index = re.match(r"aget-object (\w+), (\w+), (\w+)", s).groups()
            regs[dest] = regs[source][regs[index]]
        elif s.startswith("const/4"):
            dest, value = re.match(r"const/4 (\w+), (\S+)", s).groups()
            regs[dest] = int(value, 16)
        elif s.startswith("const-string"):
            dest, value = re.match(r'const-string (\w+), "(.*)"', s).groups()
            regs[dest] = value
        elif s.startswith("if-eqz"):
            reg, label = re.match(r"if-eqz (\w+), (\S+)", s).groups()
            if not regs[reg]:
                pc = labels[label]
                continue
        elif s.startswith("move-result"):
            regs[s.split()[1]] = result
        elif s.startswith("invoke-"):
            args = [regs[r.strip()] for r in re.search(r"\{(.*?)\}", s)[1].split(",")]
            name = re.search(r"->(\w+)\(", s)[1]
            if name == "useStaticApplicationPipeline":
                result = args[0].eligible and not args[1]
            elif name == "getTextureName":
                result = args[0].key
            elif name == "contains":
                result = args[1] in args[0]
            elif name == "getStaticTargetTextureName":
                result = execute(GETTER, args[0])
            elif name == "La":
                args[0].TH = args[1]
            elif name == "setImageName":
                args[0].key = args[1]
            else:
                raise AssertionError(s)
        elif s.startswith("return-object"):
            return regs[s.split()[1]]
        else:
            raise AssertionError(s)
        pc += 1


GETTER = method("pa.smali", ".method public getStaticTargetTextureName()Ljava/lang/String;")
HANDOFF = method("ga.smali", ".method public Li()V").split(
    "    :cond_static_handoff_done", 1)[0] + "\n:cond_static_handoff_done\n"

checks = 0
for name, eligible, black_white, incoming_key, accepted in [
    ("static app", True, False, "new:STATIC_APPLICATION_COMPOSER:shadowSpec=0", True),
    ("settings gear", True, False, "gear:STATIC_APPLICATION_COMPOSER:shadowSpec=2", True),
    ("calendar", False, False, "calendar:ORIGINAL_ACTIVE_ICON:shadowSpec=2", False),
    ("weather", False, False, "weather:ORIGINAL_ACTIVE_ICON:shadowSpec=0", False),
    ("folder", False, False, "folder", False),
    ("special control", False, False, "setting-button", False),
    ("black white", True, True, "new:STATIC_APPLICATION_COMPOSER:shadowSpec=0", False),
    ("legacy fallback", True, False, "legacy-target", False),
]:
    item = Obj(eligible=eligible, mFGTransparentAndBlackWhiteFlag=black_white)
    target = Obj(Rj=item, TH="stale-field", sc=[Obj(key=incoming_key)])
    cube = Obj(lQ=[None, target, None])
    desktop = Obj(TH="old:shadowSpec=2", sc=[Obj(key="old:shadowSpec=2")])
    host = Obj(Zy=cube, Qj=desktop)
    assert execute(GETTER, cube) == (incoming_key if accepted else 0), name
    execute(HANDOFF, host)
    assert desktop.TH == (incoming_key if accepted else "old:shadowSpec=2"), name
    assert desktop.sc[0].key == desktop.TH, name
    assert target.TH == "stale-field", name
    assert target.sc[0].key == incoming_key, name
    checks += 5

for cube in (Obj(lQ=None), Obj(lQ=[None, None, None]),
             Obj(lQ=[None, Obj(Rj=None), None])):
    assert execute(GETTER, cube) == 0
    checks += 1
host = Obj(Zy=None, Qj=Obj(TH="old", sc=[Obj(key="old")]))
execute(HANDOFF, host)
assert host.Qj.TH == host.Qj.sc[0].key == "old"
checks += 1
print(f"PASS {checks} production smali ownership and protected-path checks")
