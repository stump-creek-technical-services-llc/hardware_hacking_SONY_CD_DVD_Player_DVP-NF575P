# This file contains information about the device associated with this repo,
# and other
# This file is meant to be used as follows:
#   cat myscript
#   #!/usr/bin/env sh
#   . device.sh
#   echo "Nice ${DEV_NAME} you have there."

export DEV_MFR=SONY
export DEV_NAME=CD_DVD_Player
export DEV_PN=DVP-NF575P
export DEV_VER=

export DEV_TAG=SONY_CD_DVD_Player_DVP-NF575P
export DEV_TAG_SC=sony_cd_dvd_player_dvp-nf575p

export FW_RESET_FILENAME=${DEV_TAG_SC}.reset.bin
export FW_FILENAME=${DEV_TAG_SC}.bin
export FW_UPDATE_FILENAME=${DEV_TAG_SC}.update.bin

export FW_RESET_PATH=firmware-images/${FW_RESET_FILENAME}
export FW_PATH=firmware-images/${FW_FILENAME}
export FW_UPDATE_PATH=firmware-images/${FW_UPDATE_FILENAME}
