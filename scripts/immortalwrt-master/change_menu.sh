#!/bin/bash

# samba4
sed -i 's/nas/services/g' package/feeds/luci/luci-app-samba4/root/usr/share/luci/menu.d/luci-app-samba4.json
# cpufreq
sed -i 's/system/services/g' package/feeds/luci/luci-app-cpufreq/root/usr/share/luci/menu.d/luci-app-cpufreq.json
# hd-idle
sed -i 's/nas/services/g' package/feeds/luci/luci-app-hd-idle/root/usr/share/luci/menu.d/luci-app-hd-idle.json
# vsftpd
sed -i -e 's/\"nas\"/\"services\"/g' -e 's/NAS/Services/g' package/feeds/luci/luci-app-vsftpd/luasrc/controller/vsftpd.lua
sed -i 's/nas/services/g' package/feeds/luci/luci-app-vsftpd/luasrc/model/cbi/vsftpd/item.lua
sed -i 's/nas/services/g' package/feeds/luci/luci-app-vsftpd/luasrc/model/cbi/vsftpd/users.lua
# filebrowser
# sed -i -e 's/\"nas\"/\"services\"/g' -e 's/NAS/Services/g' package/feeds/luci/luci-app-filebrowser/luasrc/controller/filebrowser.lua
# sed -i 's/nas/services/g' package/feeds/luci/luci-app-filebrowser/luasrc/view/filebrowser/filebrowser_status.htm
# rclone
sed -i -e 's/\"nas\"/\"services\"/g' -e 's/NAS/Services/g' package/feeds/luci/luci-app-rclone/luasrc/controller/rclone.lua
# dockerman
sed -i -e 's/admin\",/& \"services\",/g' -e 's/Docker/&Man/' -e 's/config\")/overview\")/' package/feeds/luci/luci-app-dockerman/luasrc/controller/dockerman.lua
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/model/cbi/dockerman/container.lua
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/model/cbi/dockerman/containers.lua
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/model/cbi/dockerman/images.lua
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/model/cbi/dockerman/networks.lua
sed -i -e 's,admin/,&services/,g' -e 's/admin\",/& \"services\",/g' package/feeds/luci/luci-app-dockerman/luasrc/model/cbi/dockerman/newcontainer.lua
sed -i -e 's,admin/,&services/,g' -e 's/admin\",/& \"services\",/g' package/feeds/luci/luci-app-dockerman/luasrc/model/cbi/dockerman/newnetwork.lua
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/model/cbi/dockerman/overview.lua
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/model/cbi/dockerman/volumes.lua
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/view/dockerman/apply_widget.htm
sed -i -e 's,admin/,&services/,g' -e 's,admin\\/,&services\\/,g' package/feeds/luci/luci-app-dockerman/luasrc/view/dockerman/container.htm
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/view/dockerman/container_file_manager.htm
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/view/dockerman/container_stats.htm
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/view/dockerman/containers_running_stats.htm
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/view/dockerman/images_import.htm
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/view/dockerman/images_load.htm
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/view/dockerman/newcontainer_resolve.htm
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/view/dockerman/overview.htm
sed -i 's,admin/,&services/,g' package/feeds/luci/luci-app-dockerman/luasrc/view/dockerman/volume_size.htm
# nlbw
sed -i 's/services/network/g' package/feeds/luci/luci-app-nlbwmon/root/usr/share/luci/menu.d/luci-app-nlbwmon.json