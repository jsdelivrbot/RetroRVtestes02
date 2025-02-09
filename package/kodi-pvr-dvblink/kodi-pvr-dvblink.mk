################################################################################
#
# kodi-pvr-dvblink
#
################################################################################

# This cset is on the branch 'Krypton'
# When Kodi is updated, then this should be updated to the corresponding branch
KODI_PVR_DVBLINK_VERSION = 3.4.0-Krypton
KODI_PVR_DVBLINK_SITE = $(call github,kodi-pvr,pvr.dvblink,$(KODI_PVR_DVBLINK_VERSION))
KODI_PVR_DVBLINK_LICENSE = GPLv2+
KODI_PVR_DVBLINK_LICENSE_FILES = src/client.h
KODI_PVR_DVBLINK_DEPENDENCIES = kodi-platform tinyxml2

$(eval $(cmake-package))
