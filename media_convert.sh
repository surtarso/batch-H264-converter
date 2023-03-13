#!/bin/bash

#locations:
SCRIPT='/home/dietpi/batch-H264-converter/batch-h264-converter'
MOVIES='/mnt/vault/videos/movies'
SERIES='/mnt/vault/videos/series'
#conversion folders (if changed, also need to be changed on config.php) //willfixlater
TMP_FOLDER='/mnt/vault/videos/tmp'
#disabled in config.php
#JUNK_FOLDER='/mnt/vault/videos/junk'

#create conversion folders set on config.pgp
mkdir ${TMP_FOLDER}
#mkdir ${JUNK_FOLDER}

#movies
find ${MOVIES}/* -type d | while read line ; do ${SCRIPT} "$line"/ ; done

#series
find ${SERIES}/* -type d | while read line ; do ${SCRIPT} "$line"/ ; done

#remove conversion folders (if empty) set on config.php
rmdir ${TMP_FOLDER}
#rmdir ${JUNK_FOLDER}

#check if folders persisted (had files)
ls -l ${TMP_FOLDER}/
#ls -l ${JUNK_FOLDER}/
