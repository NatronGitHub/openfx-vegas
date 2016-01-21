PLUGINOBJECTS = timeslice.o
PLUGINNAME = timeslice
PATHTOROOT = ../openfx/Support

include $(PATHTOROOT)/Plugins/Makefile.master

timeslice.cpp: ../SonyOfxPIDK/Plugins/TimeSlice/timeslice.cpp ../SonyOfxPIDK/Plugins/TimeSlice/Info.plist
	cp $? . && chmod 644 $@ Info.plist && patch < $@.patch

../SonyOfxPIDK/Plugins/TimeSlice/timeslice.cpp:
	(cd ..; $(MAKE) SonyOfxPIDK)

.PHONY: distclean

distclean:
	rm timeslice.cpp Info.plist

CXXFLAGS += -DOFX_EXTENSIONS_VEGAS -DOFXS_MANUAL_REGISTRATION
