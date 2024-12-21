#!/bin/sh

#     Computer Network Course's Educoder excrises shell script. /计算机网络基础的头歌过关脚本。
#     Copyright (C) 2024  gaobobo

DownloadSite=${1:-Gitee}
readonly DownloadSite

LevelCode='http-5'
readonly LevelCode

mkdir -p /tmp/${LevelCode}
mkdir -p /home/headless/Desktop/workspace/myshixun/

case $DownloadSite in
    Gitee)
        curl -o /tmp/${LevelCode}/message-5.txt https://gitee.com/coconut_floss/EduCoder_ComputerNet/raw/ExWeek/Resource/${LevelCode}/message-5.txt
        ;;
    Github)
        curl -o /tmp/${LevelCode}/message-5.txt https://raw.githubusercontent.com/gaobobo/EduCoder_ComputerNet/ExWeek/Resource/${LevelCode}/message-5.txt
        ;;
    *)
        echo "Unknown download site: $DownloadSite"
        echo "未知的下载站点：$DownloadSite"
        return 1
        ;;
esac

mv -f /tmp/${LevelCode}/message-5.txt /home/headless/Desktop/workspace/myshixun/message-5.txt

return 0