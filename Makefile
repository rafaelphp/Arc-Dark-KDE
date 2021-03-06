AURORAE_DIR = $(DESTDIR)/usr/share/aurorae/themes
CS_DIR = $(DESTDIR)/usr/share/color-schemes
KONSOLE_DIR = $(DESTDIR)/usr/share/konsole
KVANTUM_DIR = $(DESTDIR)/usr/share/Kvantum
PLASMA_DT_DIR = $(DESTDIR)/usr/share/plasma/desktoptheme
LOOKANDFEEL_DIR = $(DESTDIR)/usr/share/plasma/look-and-feel
YAKUAKE_DIR = $(DESTDIR)/usr/share/yakuake/skins
WALLPAPERS_DIR = $(DESTDIR)/usr/share/wallpapers
INSTALL = install -d
CP = cp -rf
RM = rm -rf

all:

install: local

clear:
	$(RM) $(AURORAE_DIR)/Arc-Dark{,-Transparent}
	$(RM) $(CS_DIR)/ArcDark.colors
	$(RM) $(KONSOLE_DIR)/ArcDark.colorscheme
	$(RM) $(KVANTUM_DIR)/ArcDark{,Transparent}
	$(RM) $(PLASMA_DT_DIR)/Arc-Dark
	$(RM) $(LOOKANDFEEL_DIR)/com.github.varlesh.arc-dark
	$(RM) $(YAKUAKE_DIR)/arc-dark
	$(RM) $(WALLPAPERS_DIR)/Arc-Dark
	
local:
	$(INSTALL) $(AURORAE_DIR)
	$(INSTALL) $(CS_DIR)
	$(INSTALL) $(KONSOLE_DIR)
	$(INSTALL) $(KVANTUM_DIR)
	$(INSTALL) $(PLASMA_DT_DIR)
	$(INSTALL) $(LOOKANDFEEL_DIR)
	$(INSTALL) $(YAKUAKE_DIR)
	$(INSTALL) $(WALLPAPERS_DIR)
	
	$(CP) aurorae/themes/Arc-Dark{,-Transparent} $(AURORAE_DIR)
	$(CP) color-schemes/ArcDark.colors $(CS_DIR)
	$(CP) konsole/ArcDark.colorscheme $(KONSOLE_DIR)
	$(CP) Kvantum/ArcDark{,Transparent} $(KVANTUM_DIR)
	$(CP) plasma/desktoptheme/Arc-Dark $(PLASMA_DT_DIR)
	$(CP) plasma/look-and-feel/com.github.varlesh.arc-dark $(LOOKANDFEEL_DIR)
	$(CP) yakuake/kns_skins/arc-dark $(YAKUAKE_DIR)
	$(CP) wallpapers/Arc-Dark $(WALLPAPERS_DIR)

uninstall: clear
