> 本人该课程已经结课，故对该存储库归档且不再接受任何Pull Request与Issues。
> 
> Beacuse of the ending of this course in person, so this repo is achieved and not recept any PRs and Issues.
> 

# 头歌计算机网络闯关脚本

只需要运行shell脚本然后点击“评测”即可闯关。仅适用于头歌的“计算机网络”课程。

## 如何使用

打开头歌虚拟桌面中的终端，然后粘贴下列的脚本。之后替换`{LevelCode}`为在`/Scripts/`中的名称。

```shell
ping -c 3 www.baidu.com
if [ $? -ne 0 ]; then
    clear
    echo "网络不通，无法安装。请稍后再试。"
    exit 1
fi
clear

# 使用Gitee镜像（推荐）：
curl -o /tmp/start.sh https://gitee.com/coconut_floss/EduCoder_ComputerNet/raw/ExWeek/Scripts/start.sh
chmod +x /tmp/start.sh
/tmp/start.sh {LevelCode} Gitee

# 或者从Github下载：
curl -o /tmp/start.sh https://raw.githubusercontent.com/gaobobo/EduCoder_ComputerNet/refs/heads/ExWeek/Scripts/start.sh
chmod +x /tmp/start.sh
/tmp/start.sh {LevelCode} Github
```


# EduCoder Computer Network Script

Just run shell script and click "评测"(Test), all done! Only for the "Computer Network" course in EduCoder.

## How to use

To open the terminal in EduCoder's virtual desktop and paste below shell command. Then replace the `{LevelCode}` to the level name in `/Scripts/`.

```shell
ping -c 3 www.baidu.com
if [ $? -ne 0 ]; then
    clear
    echo "Internet not work, please try later."
    exit 1
fi
clear

# to use Gitee mirror(recommand): 
curl -o /tmp/start.sh https://gitee.com/coconut_floss/EduCoder_ComputerNet/raw/ExWeek/Scripts/start.sh
chmod +x /tmp/start.sh
/tmp/start.sh {LevelCode} Gitee

# or github repo:
curl -o /tmp/start.sh https://raw.githubusercontent.com/gaobobo/EduCoder_ComputerNet/refs/heads/ExWeek/Scripts/start.sh
chmod +x /tmp/start.sh
/tmp/start.sh {LevelCode} Github
```