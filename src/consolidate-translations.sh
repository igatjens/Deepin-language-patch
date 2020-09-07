#!/bin/bash

# Actualiza la carpeta translations con el contenido de translations_full.
# Elimina los archivos .ts, .po y las traducciones .qm en inglés, 
# dejando solo las traducciones .qm y .mo del idima del parche.

# Update the translations folder with the content of translations_full.
# Removes the .ts, .po, and .qm English translations, leaving 
# only the .qm and .mo translations from the patch language.

TRANSLATIONS_SOURCE=translations_full
TRANSLATIONS_TARGET=translations

echo Actualizando $TRANSLATIONS_SOURCE → $TRANSLATIONS_TARGET

rsync -ruvh $TRANSLATIONS_SOURCE"/" $TRANSLATIONS_TARGET"/" > /dev/null

echo Limpiando $TRANSLATIONS_TARGET

find $TRANSLATIONS_TARGET"/" -type f -iname  "*.ts" -exec rm {} \;
find $TRANSLATIONS_TARGET"/" -type f -iname  "*.po" -exec rm {} \;
find $TRANSLATIONS_TARGET"/" -type f -iname  "*_en.qm" -exec rm {} \;