# This is customize the module installation process if you need

# This will be the folder name under /magisk
# This should also be the same as the id in your module.prop to prevent confusion
MODID=nezokubootanim

# Set to true if you need to enable Magic Mount
# Most mods would like it to be enabled
AUTOMOUNT=true

# Set to true if you need to load system.prop
PROPFILE=false

# Set to true if you need post-fs-data script
POSTFSDATA=false

# Set to true if you need late_start service script
LATESTARTSERVICE=false

#installation message
ui_print "************************************"
ui_print "Minimal Boot Animation for Nezoku OS"
ui_print "****** Animated by @mrStark18 ******"
ui_print "************************************"


REPLACE="
/system/product/media/bootanimation.zip
/system/product/media/bootanimation-dark.zip
"

# permissions
set_perm_recursive  $MODPATH  0  0  0755  0644
set_perm  $MODPATH/system/product/media/bootanimation.zip        0        0        0644
set_perm  $MODPATH/system/product/media/bootanimation-dark.zip        0        0        0644
