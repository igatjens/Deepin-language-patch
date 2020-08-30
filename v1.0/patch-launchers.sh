#!/bin/bash

sed -i "s/Name\[es\]=.*/Name\[es\]=Captura de pantalla/" /usr/share/applications/deepin-screen-recorder.desktop
sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Captura de pantalla/" /usr/share/applications/deepin-screen-recorder.desktop

sed -i "s/Name\[es\]=.*/Name\[es\]=Selector de color/" /usr/share/applications/deepin-picker.desktop
sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Selector de color/" /usr/share/applications/deepin-picker.desktop

echo "GenericName[es]=Álbum" | tee -a /usr/share/applications/deepin-album.desktop
echo "Name[es]=Álbum" | tee -a /usr/share/applications/deepin-album.desktop
#sed -i "s/Name\[es\]=.*/Name\[es\]=Álbum/" /usr/share/applications/deepin-album.desktop
#sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Álbum/" /usr/share/applications/deepin-album.desktop

sed -i "s/Name\[es\]=.*/Name\[es\]=Dibujo/" /usr/share/applications/deepin-draw.desktop
sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Dibujo/" /usr/share/applications/deepin-draw.desktop

echo "GenericName[es]=Visor de documentos" | tee -a /usr/share/applications/deepin-reader.desktop
echo "Name[es]=Visor de documentos" | tee -a /usr/share/applications/deepin-reader.desktop
#sed -i "s/Name\[es\]=.*/Name\[es\]=Visor de documentos/" /usr/share/applications/deepin-reader.desktop
#sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Visor de documentos/" /usr/share/deepin-reader.desktop

echo "GenericName[es]=Tienda de aplicaciones" | tee -a /usr/share/applications/deepin-app-store.desktop
echo "Name[es]=Tienda de aplicaciones" | tee -a /usr/share/applications/deepin-app-store.desktop
#sed -i "s/Name\[es\]=.*/Name\[es\]=Tienda de aplicaciones/" /usr/share/applications/deepin-app-store.desktop
#sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Tienda de aplicaciones/" /usr/share/deepin-app-store.desktop

echo "GenericName[es]=Centro de control" | tee -a /usr/share/applications/dde-control-center.desktop
#echo "Name[es]=Centro de control" | tee -a /usr/share/applications/dde-control-center.desktop
#sed -i "s/Name\[es\]=.*/Name\[es\]=Centro de control/" /usr/share/applications/dde-control-center.desktop
#sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Centro de control/" /usr/share/dde-control-center.desktop

echo "GenericName[es]=Administrador de dispositivos" | tee -a /usr/share/applications/deepin-devicemanager.desktop
echo "Name[es]=Administrador de dispositivos" | tee -a /usr/share/applications/deepin-devicemanager.desktop
#sed -i "s/Name\[es\]=.*/Name\[es\]=Administrador de dispositivos/" /usr/share/applications/deepin-devicemanager.desktop
#sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Administrador de dispositivos/" /usr/share/deepin-devicemanager.desktop

echo "GenericName[es]=Visor de registro" | tee -a /usr/share/applications/deepin-log-viewer.desktop
echo "Name[es]=Visor de registro" | tee -a /usr/share/applications/deepin-log-viewer.desktop
#sed -i "s/Name\[es\]=.*/Name\[es\]=Visor de registro/" /usr/share/applications/deepin-log-viewer.desktop
#sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Visor de registro/" /usr/share/deepin-log-viewer.desktop

echo "GenericName[es]=Impresoras" | tee -a /usr/share/applications/dde-printer.desktop
echo "Name[es]=Impresoras" | tee -a /usr/share/applications/dde-printer.desktop
#sed -i "s/Name\[es\]=.*/Name\[es\]=Impresoras/" /usr/share/applications/dde-printer.desktop
#sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Impresoras/" /usr/share/dde-printer.desktop

sed -i "s/Name\[es\]=.*/Name\[es\]=Administrador de fuentes/" /usr/share/applications/deepin-font-manager.desktop
sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Administrador de fuentes/" /usr/share/applications/deepin-font-manager.desktop

echo "GenericName[es]=Compresor de archivos" | tee -a /usr/share/applications/deepin-compressor.desktop
echo "Name[es]=Compresor de archivos" | tee -a /usr/share/applications/deepin-compressor.desktop
#sed -i "s/Name\[es\]=.*/Name\[es\]=Compresor de archivos/" /usr/share/applications/deepin-compressor.desktop
#sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Compresor de archivos/" /usr/share/deepin-compressor.desktop

sed -i "s/Name\[es\]=.*/Name\[es\]=Instalador de paquetes/" /usr/share/applications/deepin-deb-installer.desktop
sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Instalador de paquetes/" /usr/share/applications/deepin-deb-installer.desktop

#sed -i "s/Name\[es\]=.*/Name\[es\]=Administrador de archivos/" /usr/share/applications/dde-file-manager.desktop
#sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=Administrador de archivos/" /usr/share/applications/dde-file-manager.desktop