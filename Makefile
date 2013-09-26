SUBDIRS = Generator-Checkerboard KitchenSink TimeSlice

default : 
	@ echo making sub projects... $(SUBDIRS)
	for i in $(SUBDIRS) ; do cd $$i; make ; cd ..; done

clean :
	for i in $(SUBDIRS) ; do cd $$i; make clean; cd ..; done

SonyOfxPIDK: video_plugin_kit_OFX.zip
	unzip -a $<


video_plugin_kit_OFX.zip:
	@echo "Please download the 'Video Plug-In Development Kit (OFX)' from Sony Development Kits Download Page <http://www.sonycreativesoftware.com/download/devkits>"
