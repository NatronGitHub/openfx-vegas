PLUGINOBJECTS = timeslice.o
PLUGINNAME = timeslice
PATHTOROOT = ../openfx/Support

include $(PATHTOROOT)/Plugins/Makefile.master

timeslice.cpp: ../SonyOfxPIDK/Plugins/TimeSlice/timeslice.cpp ../SonyOfxPIDK/Plugins/Timeslice/Info.plist
	cp $? . && chmod 644 $@ Info.plist && patch < $@.patch

../SonyOfxPIDK/Plugins/TimeSlice/timeslice.cpp:
	(cd ..; $(MAKE) SonyOfxPIDK)

CXXFLAGS += -DOFX_EXTENSIONS_VEGAS
