#!/usr/bin/env python3

import glob

import lupa
import os
import shutil
import zipfile
import subprocess

from os.path import isfile, join, dirname

def mkIcon(src, dest):
  subprocess.run(["convert", "-size", "32x32", "canvas:transparent", "-background", "transparent",
       "-alpha", "on",
       "(",
       src, "-resize", "26x26", "-repage", "+3+6",
       "(", "+clone", "-repage", "+3+3", ")",
       "(", "+clone", "-repage", "+3+0", ")",
       ")",
       "-flatten", "-unsharp", "0x6+0.1+0", "png32:{}".format(dest)])

def remove_prefix(text, prefix):
    if text.startswith(prefix):
        return text[len(prefix):]
    return text
modPrefix = "__deadlocks-stacking-for-pyanadon__"

os.chdir("src/migrations")
lua = lupa.LuaRuntime()
modItems = lua.eval('require("shared")["STACKABLES"]')
os.chdir("../..")

#

for mod in list(modItems):
  zips = sorted(glob.glob("{}graphics_*.zip".format(mod)))
  if len(zips) == 0:
    zips = sorted(glob.glob("{}_*.zip".format(mod)))
    if len(zips) == 0:
      print("missing zip file for", mod)
      exit(1)

  zipName = zips[len(zips)-1][0:-4]
  withoutVersion = zipName[0:zipName.rfind('_')]
  with zipfile.ZipFile("{}.zip".format(zipName), "r") as zf:
    for e in modItems[mod].values():
      icon = e.icon
      if icon is None:
        icon = "graphics/icons/stacked-{}.png".format(e.item)
      else:
        icon = remove_prefix(e.icon, modPrefix)

      pyIcon = e.iconName
      if pyIcon is None:
        pyIcon = e.item

      if not isfile(join("src", icon)):
        pyPath = "{}/graphics/icons/{}.png".format(withoutVersion, pyIcon)
        path = join("src", icon)
        try:
          zf.extract(pyPath, "tmp")
        except KeyError:
          pyPath = "{}/graphics/icons/{}.png".format(zipName, pyIcon)
          zf.extract(pyPath, "tmp")
        mkIcon(join("tmp", pyPath), path)
        shutil.rmtree("tmp")
  #      print("generate image for", e.item, "( stage:", e.stage, ")")
  #    else:
  #      print("WARNING: {} ({}) - icon property not set, no image will be generated".format(e.item, mod))
