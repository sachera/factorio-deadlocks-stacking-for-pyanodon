#!/usr/bin/env python

import os
import zipfile
import json

def zip(src, dst, version):
    zf = zipfile.ZipFile("{}.zip".format(dst), "w", zipfile.ZIP_DEFLATED)
    abs_src = os.path.abspath(src)
    for dirname, subdirs, files in os.walk(src):
        for filename in files:
            absname = os.path.abspath(os.path.join(dirname, filename))
            arcname = os.path.join(dst, absname[len(abs_src) + 1:].replace("x.y.z", version))
            print('zipping {} as {}'.format(os.path.join(dirname, filename), arcname))
            zf.write(absname, arcname)
    zf.close()

with open('src/info.json') as json_data:
    modInfo = json.load(json_data)
    zip("src", "{}_{}".format(modInfo['name'], modInfo['version']), modInfo['version'])
    json_data.close()
