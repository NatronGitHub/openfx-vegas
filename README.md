OpenFX-Vegas [![Build Status](https://api.travis-ci.org/devernay/openfx-vegas.png?branch=master)](https://travis-ci.org/devernay/openfx) [![Coverage Status](https://coveralls.io/repos/devernay/openfx-vegas/badge.png?branch=master)](https://coveralls.io/r/devernay/openfx?branch=master) [![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/devernay/openfx-vegas/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
============

Sample OFX plugins from the Sony Vegas SDK, ported to OSX and Linux
-------------------------------------------------------------------

These plugins were adapted to compile and work on Linux and OSX.

The Sony Vegas SDK has to be downloaded separately, due to its license:
From the [Sony Development Kits Download Page](http://www.sonycreativesoftware.com/download/devkits) 
download "Video Plug-In Development Kit (OFX)".
The file, named `video_plugin_kit_OFX.zip`, should be put in this directory.

To compile the debug version of these plugins, type "make BITS=32" for the 32-bits version,
or "make BITS=64" for the 64-bits version.

To compile the release version, type "make BITS=32 DEBUGFLAG=-O3" for the 32-bits version,
or "make BITS=64 DEBUGFLAG=-O3" for the 64-bits version .
