PLUGINOBJECTS = kitchensink.o
PLUGINNAME = kitchensink
PATHTOROOT = ../openfx/Support

include $(PATHTOROOT)/Plugins/Makefile.master

kitchensink.cpp: ../SonyOfxPIDK/Plugins/KitchenSink/kitchensink.cpp ../SonyOfxPIDK/Plugins/KitchenSink/Info.plist
	cp $? . && chmod 644 $@ Info.plist && patch < $@.patch

../SonyOfxPIDK/Plugins/KitchenSink/kitchensink.cpp:
	(cd ..; $(MAKE) SonyOfxPIDK)

.PHONY: distclean

distclean:
	rm kitchensink.cpp Info.plist

CXXFLAGS += -DOFX_EXTENSIONS_VEGAS -DOFXS_MANUAL_REGISTRATION
