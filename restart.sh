#!/bin/bash
backup_filename=`date '+%m-%d-%Y-%H%M%S'restart`
SCREEN_NAME=minecraft-server

cd /usr/minecraft

# 告知
screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040諸々の事情により5分後に再起動を行います\015"

sleep 2m

screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040再起動3分前\015"

sleep 2m

screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040再起動1分前\015"

sleep 1m

screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040サーバー停止処理に入ります。諦めてください。\015"

sleep 5s

# 安全に止めるために一旦全部書き込んでから、書き込みを禁止して停止
screen -S ${SCREEN_NAME} -p 0 -X eval 'stuff save-all\015'
screen -S ${SCREEN_NAME} -p 0 -X eval 'stuff save-off\015'
screen -S ${SCREEN_NAME} -p 0 -X eval "stuff stop\015"

# 起動に失敗した時も想定してコールドバックアップ
tar -cvzf backup/$backup_filename.tar.gz world

# 起動処理を行う
bash screen.sh

