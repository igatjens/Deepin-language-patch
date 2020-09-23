#!/bin/bash

SOURCE_FOLDER=../../transifex-tools/backup/
TARGET_FOLDER=backup/

rsync -ruvha $SOURCE_FOLDER $TARGET_FOLDER