#!/bin/bash
SCREEN_NAME="minecraft-server"

DATE_H=`date +'%H'`

case ${DATE_H} in 
  "01" ) screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040${DATE_H}時です、集中力が落ちやすいです。航空機の操縦には気をつけてください\015"  ;;
  "02" ) screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040${DATE_H}時です、直下堀はほどほどにしましょう\015"  ;;
  "03" ) screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040${DATE_H}時です、もうすぐ夜が明けますよ\015" ;;
  "04" ) screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040${DATE_H}時です、大西さん寝ましたか？そろそろ本当に寝た方がいいですよ\015" ;;
  * ) screen -S ${SCREEN_NAME} -p 0 -X eval "stuff say\040${DATE_H}時をお伝えします\015"  ;;
esac
