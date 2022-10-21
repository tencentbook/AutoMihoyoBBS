#!/bin/bash

# 输出日志路径
stdout_path=$(cd `dirname $0`;pwd)/stdout.log
# 1-1200秒随机延时
# 随机值$RANDOM值为1~32767
delay=$[$RANDOM%1200];

# 进入脚本所在目录
cd $(cd `dirname $0`;pwd)

echo "$(date) $[$delay/60]分钟后开始执行" > $stdout_path;
sleep $delay;
python3 main.py >> $stdout_path;
