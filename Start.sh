#!/bin/bash

#minecraft-server-forgeのスタート用のスクリプト作ってみるよー(´･ω･)っ
#2017.6.1 起動可能であることを確認　(眞子)

java -Xms4G -Xmx4G  -XX:+UseConcMarkSweepGC -XX:+CMSIncrementalMode -XX:-UseAdaptiveSizePolicy -Xmn512M -XX:PermSize=512M -jar minecraft-server-forge.jar

