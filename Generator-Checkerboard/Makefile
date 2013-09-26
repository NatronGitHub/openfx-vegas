PLUGINOBJECTS = checkerboard.o
PLUGINNAME = checkerboard
PATHTOROOT = ../openfx/Support

include $(PATHTOROOT)/Plugins/Makefile.master

checkerboard.cpp: ../SonyOfxPIDK/Plugins/Generator-Checkerboard/checkerboard.cpp ../SonyOfxPIDK/Plugins/Generator-Checkerboard/Info.plist
	cp $? . && chmod 644 $@ Info.plist

../SonyOfxPIDK/Plugins/Generator-Checkerboard/checkerboard.cpp:
	(cd ..; $(MAKE) SonyOfxPIDK)

CXXFLAGS += -DOFX_EXTENSIONS_VEGAS
