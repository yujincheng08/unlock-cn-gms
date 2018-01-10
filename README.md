# Unlock CN GMS

部分国行手机，或者本地化后的 ROM 中有内置 GMS ，但是某些功能无法使用，比如无法开启 `Google Location History` 服务，无法使用 `Google Map Timeline`，设备无法在 Web 版 Google play 中显示等等。

该模块通过替换 `/system/etc/permissions/services.cn.google.xml` 文件, 具体为删除如下配置行：

 ```xml
 <feature name="cn.google.services" />
 ``` 
 以此来实现去除国行 GMS 的限制。

 **注意**：为了开启 `Google Location History` 服务，你可能还需要配合其他模块   
 例如
 Magisk 模块: [Riru - Location Report Enabler](https://github.com/RikkaApps/Riru-LocationReportEnabler)     
 或者 Xposed 模块 [LocationReportEnabler](https://github.com/GhostFlying/LocationReportEnabler)
