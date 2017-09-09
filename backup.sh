#!/bin/bash

SCREEN_NAME=minecraft-server

backup_filename=`date '+%m-%d-%Y-%H%M%S'`
cd /usr/minecraft

screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040==================================\015"
screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040バックアップ処理を開始します\015"
screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040==================================\015"


screen -S ${SCREEN_NAME} -p 0 -X eval "stuff save-all\015"
screen -S ${SCREEN_NAME} -p 0 -X eval "stuff save-off\015"

tar -cvzf backup/$backup_filename.tar.gz world

screen -S ${SCREEN_NAME} -p 0 -X eval "stuff save-on\015"
screen -S ${SCREEN_NAME} -p 0 -X eval "stuff save-all\015"


screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040==================================\015"
screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040バックアップ処理を終了します\015"
screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040==================================\015"

