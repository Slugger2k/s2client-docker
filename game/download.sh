#!/usr/bin/env bash

SCRIPT_PATH=${0%/*}
. ${SCRIPT_PATH}/../config.sh

WGET_CMD="wget --timestamping --continue"

#
# This downloads zip files for current version
#
mkdir -p downloads/

pushd downloads

# Just clone the base repository for the maps
if [ ! -d s2client-api ]; then
    git clone --recursive https://github.com/Blizzard/s2client-api.git
else
    pushd s2client-api
    git pull -r 
    popd
fi 

${WGET_CMD} http://blzdistsc2-a.akamaihd.net/Linux/SC2.${GAME_VERSION}.zip
${WGET_CMD} https://github.com/shostyn/sc2patch/raw/master/Maps/506.zip
${WGET_CMD} https://aiarena.net/wiki/184/plugin/attachments/download/9/ -O Season1_2_2022.zip
${WGET_CMD} https://aiarena.net/wiki/184/plugin/attachments/download/14/ -O Season3_2022.zip
${WGET_CMD} https://aiarena.net/wiki/184/plugin/attachments/download/15/ -O Season4_2022_Season1_2023.zip
${WGET_CMD} https://aiarena.net/wiki/184/plugin/attachments/download/21/ -O Season2_2023.zip
${WGET_CMD} https://aiarena.net/wiki/184/plugin/attachments/download/35/ -O Season3_2023.zip
${WGET_CMD} https://aiarena.net/wiki/184/plugin/attachments/download/38/ -O Season1_2024_v2.zip
${WGET_CMD} https://aiarena.net/wiki/184/plugin/attachments/download/39/ -O Season2_2024_v2.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season1.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season2.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Ladder2017Season3.zip
${WGET_CMD} http://blzdistsc2-a.akamaihd.net/MapPacks/Melee.zip

popd
