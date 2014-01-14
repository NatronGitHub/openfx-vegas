SUBDIRS = Generator-Checkerboard KitchenSink TimeSlice

default : 
	@ echo making sub projects... $(SUBDIRS)
	for i in $(SUBDIRS) ; do cd $$i; make ; cd ..; done

.PHONY: clean distclean

clean :
	for i in $(SUBDIRS) ; do cd $$i; make clean; cd ..; done

SonyOfxPIDK: video_plugin_kit_OFX.zip
	unzip -a $<

distclean: clean
	rm -rf SonyOfxPIDK

video_plugin_kit_OFX.zip:
	@echo "Downloading the 'Video Plug-In Development Kit (OFX)' from Sony Development Kits Download Page <http://www.sonycreativesoftware.com/download/devkits>"
	curl -O http://dspcdn.sonycreativesoftware.com/dev/video_plugin_kit_OFX.zip
