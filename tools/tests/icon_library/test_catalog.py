"""Source audit integrity and additive migration; fixtures never touch repository PNGs."""
import contextlib
import io
import json
from pathlib import Path
import struct
import sys
import tempfile
import unittest
import zlib

sys.dont_write_bytecode = True
sys.path.insert(0, str(Path(__file__).resolve().parents[2]))
import icon_library as library

def png():
    def chunk(kind,data):return struct.pack('>I',len(data))+kind+data+struct.pack('>I',zlib.crc32(kind+data))
    return b'\x89PNG\r\n\x1a\n'+chunk(b'IHDR',struct.pack('>IIBBBBB',48,48,8,6,0,0,0))+chunk(b'IDAT',zlib.compress((b'\0'+b'\xff\0\0\xff'*48)*48))+chunk(b'IEND',b'')

class CatalogTests(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory();self.root=Path(self.temp.name)
        (self.root/'icons/drawable').mkdir(parents=True)
        self.file('com.example.app');self.file('com.example.app_2')
        library.write(self.root/'icons/variants.json',{'schema':1,'variants':{'com.example.app':['com.example.app.png','com.example.app_2.png']}})
        library.bootstrap(self.root)
    def tearDown(self):self.temp.cleanup()
    def file(self,name):(self.root/'icons/drawable'/(name+'.png')).write_bytes(png())
    def run_generate(self):
        with contextlib.redirect_stdout(io.StringIO()):library.run(self.root,True)
    def test_idempotent_and_source_immutable(self):
        before={p.name:p.read_bytes() for p in (self.root/'icons/drawable').iterdir()}
        self.run_generate();generated={p.name:p.read_bytes() for p in (self.root/'icons').glob('*.json')}
        self.run_generate();self.assertEqual(generated,{p.name:p.read_bytes() for p in (self.root/'icons').glob('*.json')})
        self.assertEqual(before,{p.name:p.read_bytes() for p in (self.root/'icons/drawable').iterdir()})
    def test_broken_reference_fails_before_mutation(self):
        self.run_generate();p=self.root/'icons/variants.json';v=library.read(p);v['variants']['com.example.app'].append('missing.png');library.write(p,v)
        index=(self.root/'icons/index.json').read_bytes();source=p.read_bytes()
        with self.assertRaises(ValueError),contextlib.redirect_stdout(io.StringIO()):library.run(self.root,True)
        self.assertEqual(source,p.read_bytes());self.assertEqual(index,(self.root/'icons/index.json').read_bytes())
    def test_names_and_aliases_survive_new_png(self):
        p=self.root/'icons/catalog.json';cat=library.read(p);cat['apps']['com.example.app']['name']='人工名称';cat['apps']['com.example.app']['aliases']=['中文别名'];library.write(p,cat)
        self.file('com.example.app_3');self.run_generate();app=library.read(p)['apps']['com.example.app']
        self.assertEqual(app['name'],'人工名称');self.assertEqual(app['aliases'],['中文别名']);self.assertIn('com.example.app_3',app['icons'])
    def test_new_package_keeps_identity(self):
        self.file('org.example.new');self.run_generate();search=library.read(self.root/'icons/search-index.json')
        self.assertIn('org.example.new',search['packages']);self.assertIn('org.example.new.png',library.read(self.root/'icons/variants.json')['variants']['org.example.new'])
    def test_component_alias_is_not_package_alias(self):
        self.file('com.eg.android.AlipayGphone');self.run_generate();cat=library.read(self.root/'icons/catalog.json')
        self.assertIn('com.eg.android.AlipayGphone/com.alipay.mobile.quinox.LauncherApplication',cat['components'])
        self.assertFalse(any('com.alipay.mobile.quinox.LauncherApplication' in x['packages'] for x in cat['apps'].values()))
    def test_removed_png_needs_explicit_reconciliation(self):
        (self.root/'icons/drawable/com.example.app_2.png').unlink()
        with self.assertRaises(ValueError),contextlib.redirect_stdout(io.StringIO()):library.run(self.root,True)

    def test_checked_in_chinese_pinyin_and_original_categories(self):
        project=Path(__file__).resolve().parents[3]
        catalog=library.read(project/'icons/catalog.json')['apps']
        entries=library.read(project/'icons/search-index.json')['entries']
        by_source={entry['sourceId']:entry for entry in entries}
        wechat=by_source[catalog['com.tencent.mm']['primary']]
        self.assertIn('微信',wechat['terms'])
        self.assertIn('weixin',wechat['terms'])
        self.assertIn('wx',wechat['terms'])
        self.assertEqual(wechat['category'],'social')
        categories={entry['category'] for entry in entries}
        self.assertTrue({'news','lifestyle','travel','education','finance','reading'}<=categories)
        self.assertTrue(categories<=set(library.CATEGORIES))

if __name__=='__main__':unittest.main()
