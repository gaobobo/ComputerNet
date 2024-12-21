#!/bin/sh

#     Computer Network Course's Educoder excrises shell script. /计算机网络基础的头歌过关脚本。
#     Copyright (C) 2024  gaobobo

DownloadSite=${1:-Gitee}
readonly DownloadSite

LevelCode='http-2'
readonly LevelCode

mkdir -p /tmp/${LevelCode}
mkdir -p /home/headless/Desktop/workspace/myshixun/

case $DownloadSite in
    Gitee)
        curl -o /tmp/${LevelCode}/message-2.txt https://gitee.com/coconut_floss/EduCoder_ComputerNet/raw/ExWeek/Resource/${LevelCode}/message-2.txt
        ;;
    Github)
        curl -o /tmp/${LevelCode}/message-2.txt https://raw.githubusercontent.com/gaobobo/EduCoder_ComputerNet/ExWeek/Resource/${LevelCode}/message-2.txt
        ;;
    *)
        echo "Unknown download site: $DownloadSite"
        echo "未知的下载站点：$DownloadSite"
        return 1
        ;;
esac

mv -f /tmp/${LevelCode}/message-2.txt /home/headless/Desktop/workspace/myshixun/message-2.txt

return 0