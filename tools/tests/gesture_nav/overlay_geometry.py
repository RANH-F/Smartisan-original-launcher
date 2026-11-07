"""Offline diagnostic candidates, never an automatic artwork acceptance decision."""
import argparse,json,re
from pathlib import Path
from PIL import Image,ImageDraw
p=argparse.ArgumentParser(__doc__);p.add_argument('log');p.add_argument('screenshot');p.add_argument('--output',required=True);a=p.parse_args()
lines=Path(a.log).read_text(encoding='utf-8',errors='replace').splitlines()
surface=None;nodes=[]
for line in lines:
 if 'SURFACE width=' in line:
  surface={k:int(v) for k,v in re.findall(r'(width|height|x|y)=(-?\d+)',line)}
 if 'NODE {' in line:
  try:nodes.append(json.loads(line.split('NODE ',1)[1]))
  except json.JSONDecodeError:pass
if not surface:raise SystemExit('No surface evidence')
im=Image.open(a.screenshot).convert('RGB');d=ImageDraw.Draw(im);report=[]
for n in nodes:
 if n.get('index')!=0:continue
 raw=n['raw12'];points=[(raw[i],raw[i+1]) for i in range(0,len(raw),3) if raw[i] is not None and raw[i+1] is not None]
 # Both origins shown until the native output is calibrated; no assumption of four valid corners.
 for flip,color in [(False,'red'),(True,'cyan')]:
  q=[(surface['x']+x,surface['y']+(surface['height']-y if flip else y)) for x,y in points]
  if len(q)>=2:
   box=(min(x for x,y in q),min(y for x,y in q),max(x for x,y in q),max(y for x,y in q))
   d.rectangle(box,outline=color,width=2);d.text((box[0],box[1]),n['owner']+(' Y-flip' if flip else ' raw-Y'),fill=color)
   report.append({'owner':n['owner'],'flipped':flip,'candidate_texture_box':box,'raw_points_written':len(points),'accepted':False})
im.save(a.output);Path(a.output+'.json').write_text(json.dumps({'surface':surface,'candidates':report,'note':'Texture bounds candidates only, no inferred artwork/alpha bounds or measured acceptance'},indent=2))
