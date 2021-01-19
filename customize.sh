if [[ ${API} -ge 29 ]]; then
    PERMISSION_PATH="${MODPATH}/system/product/etc/permissions"
else
    PERMISSION_PATH="${MODPATH}/system/etc/permissions"
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