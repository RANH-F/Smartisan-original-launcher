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

    def test_typed_terms_preserve_identity_and_component_search(self):
        p=self.root/'icons/catalog.json';cat=library.read(p);app=cat['apps']['com.example.app']
        app.update(name='微信',nameEn='WeChat',aliases=['微信手机版'],tags=['聊天'],
                   pinyin={'微信':['weixin','wei xin','wx'],'微信手机版':['weixinshoujiban','wei xin shou ji ban','wxsjb']})
        cat['components']['com.example.app/com.example.Main']='com.example.app'
        library.write(p,cat);self.run_generate()
        index=library.read(self.root/'icons/search-index.json')
        self.assertEqual(index['packages']['com.example.app'],'com.example.app')
        for entry in index['entries']:
            self.assertIn('WeChat',entry['groups']['names'])
            self.assertIn('wei xin',entry['groups']['pinyin'])
            self.assertIn('wx',entry['groups']['initials'])
            self.assertIn('com.example.app/com.example.Main',entry['terms'])

    def test_verified_name_requires_evidence_and_pinyin_before_writing(self):
        self.run_generate();p=self.root/'icons/catalog.json';cat=library.read(p)
        app=cat['apps']['com.example.app'];app.update(name='微信',nameStatus='verified')
        library.write(p,cat);before=(self.root/'icons/search-index.json').read_bytes()
        with self.assertRaises(ValueError),contextlib.redirect_stdout(io.StringIO()):library.run(self.root,True)
        self.assertEqual(before,(self.root/'icons/search-index.json').read_bytes())
        app['evidence']=[{'fields':['name'],'value':'微信','ref':'reviewed-fixture'}]
        library.write(p,cat)
        with self.assertRaises(ValueError),contextlib.redirect_stdout(io.StringIO()):library.run(self.root,True)
        app['pinyin']={'微信':['weixin','wei xin','wx']};library.write(p,cat);self.run_generate()

    def test_unknown_identifier_is_not_a_formal_name(self):
        self.run_generate();entry=library.read(self.root/'icons/search-index.json')['entries'][0]
        self.assertNotIn('names',entry['groups'])
        self.assertIn('com.example.app',entry['groups']['identities'])
        self.assertIn('com.example.app',entry['terms'])

if __name__=='__main__':unittest.main()
