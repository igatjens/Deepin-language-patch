#!/bin/bash

APLICACIONES[0]="/usr/share/applications/deepin-screen-recorder.desktop;Captura de pantalla"
APLICACIONES[1]="/usr/share/applications/deepin-picker.desktop;Selector de color"
APLICACIONES[2]="/usr/share/applications/deepin-album.desktop;Álbum"
APLICACIONES[3]="/usr/share/applications/deepin-draw.desktop;Dibujo"
APLICACIONES[4]="/usr/share/applications/deepin-reader.desktop;Visor de documentos"
APLICACIONES[5]="/usr/share/applications/deepin-app-store.desktop;Tienda de aplicaciones"
APLICACIONES[6]="/usr/share/applications/dde-control-center.desktop;Centro de control"
APLICACIONES[7]="/usr/share/applications/deepin-devicemanager.desktop;Administrador de dispositivos"
APLICACIONES[8]="/usr/share/applications/deepin-log-viewer.desktop;Visor de registro"
APLICACIONES[9]="/usr/share/applications/dde-printer.desktop;Impresoras"
APLICACIONES[10]="/usr/share/applications/deepin-font-manager.desktop;Administrador de fuentes"
APLICACIONES[11]="/usr/share/applications/deepin-compressor.desktop;Compresor de archivos"
APLICACIONES[12]="/usr/share/applications/deepin-deb-installer.desktop;Instalador de paquetes"
APLICACIONES[13]="/usr/share/applications/deepin-defender.desktop;Centro de seguridad"
APLICACIONES[14]="/usr/share/deepin/dde-file-manager/oem-menuextensions/deepin-compress.desktop;Comprimir"
APLICACIONES[15]="/usr/share/deepin/dde-file-manager/oem-menuextensions/deepin-compress-multi.desktop;Comprimir"
APLICACIONES[16]="/usr/share/deepin/dde-file-manager/oem-menuextensions/deepin-decompress.desktop;Extraer"
APLICACIONES[17]="/usr/share/deepin/dde-file-manager/oem-menuextensions/deepin-decompresshere.desktop;Extraer aquí"
APLICACIONES[18]="/usr/share/deepin/dde-file-manager/oem-menuextensions/deepin-decompresshere-multi.desktop;Extraer aquí"
APLICACIONES[19]="/usr/share/deepin/dde-file-manager/oem-menuextensions/deepin-decompresshere-split.desktop;Extraer aquí"
APLICACIONES[20]="/usr/share/deepin/dde-file-manager/oem-menuextensions/deepin-decompresshere-split_multi.desktop;Extraer aquí"
APLICACIONES[21]="/usr/share/deepin/dde-file-manager/oem-menuextensions/deepin-decompress-multi.desktop;Extraer"
APLICACIONES[22]="/usr/share/deepin/dde-file-manager/oem-menuextensions/deepin-decompress-split.desktop;Extraer"
APLICACIONES[23]="/usr/share/deepin/dde-file-manager/oem-menuextensions/deepin-decompress-split_multi.desktop;Extraer"


for (( i = 0; i < ${#APLICACIONES[@]}; i++ )); do
	
	LANZADOR=$(echo ${APLICACIONES[$i]} | cut -d ";" -f1)
	NOMBRE=$(echo ${APLICACIONES[$i]} | cut -d ";" -f2)

	# Si el lanzador existe
	if [[ -f $LANZADOR ]]; then

		echo Parchando lanzador de $NOMBRE
		
		# Si GenericName existe en el lanzador, sino agregarlo
		if [[ $(grep "GenericName\[es\]" $LANZADOR) ]]; then
			sed -i "s/GenericName\[es\]=.*/GenericName\[es\]=$NOMBRE/" $LANZADOR
		else
			echo "GenericName[es]="$NOMBRE | tee -a $LANZADOR
		fi

		# Si Name existe en el lanzador, sino agregarlo
		if [[ $(grep "^Name\[es\]" $LANZADOR) ]]; then
			sed -i "s/Name\[es\]=.*/Name\[es\]=$NOMBRE/" $LANZADOR
		else
			echo "Name[es]="$NOMBRE | tee -a $LANZADOR
		fi
	fi

done

# Arreglo para File Manager
sudo sed -i "s/Gestor de archivos/Administrador de archivos/" /usr/share/applications/dde-file-manager.desktop

