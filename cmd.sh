#!/usr/bin/env bash

exec sudo -E bash -c 'supervisord -c /etc/supervisord.conf -l /var/log/supervisord.log' &
sleep 10

wine 'C:\Program Files (x86)\Tencent\WeChat\WeChat.exe' &

sleep 10

wine 'C:\Injector.exe' --process-name WeChat.exe --inject 'C:\wxhelper.dll' 2>&1

wait