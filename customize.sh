if [ -f "/system/product/etc/permissions/services.cn.google.xml" ]; then
    PERMISSION_PATH="${MODPATH}/system/product/etc/permissions"
elif [ -f "/system/etc/permissions/services.cn.google.xml" ]; then
    PERMISSION_PATH="${MODPATH}/system/etc/permissions"
else
    abort "services.cn.google.xml Not found!"
fi

ui_print "--API ${API}"
ui_print "--PATH ${PERMISSION_PATH}"
mkdir -p "${PERMISSION_PATH}"

cat > "${PERMISSION_PATH}/services.cn.google.xml" <<EOF
<?xml version="1.0" encoding="utf-8"?>
<!-- This is the standard set of features for devices that support the CN GMSCore. -->
<permissions>
    <feature name="com.google.android.feature.services_updater" />
</permissions>
EOF
