@echo off
chcp 65001 >nul
title 策划案网站一键同步工具
cls
echo ================================================================
echo           🎬 策划案文库 · GitHub 全自动多端同步工具
echo ================================================================
echo.
echo [1/3] 正在检查文件更新状态...
git status -s
echo.
echo [2/3] 正在添加文件并提交本地更改...
git add .

set "commit_msg=更新策划案: %date% %time%"
set /p user_msg="请输入本次更新说明（直接回车默认更新）: "
if not "%user_msg%"=="" set "commit_msg=%user_msg%"

git commit -m "%commit_msg%"

echo.
echo [3/3] 正在推送到 GitHub 远程仓库...
git push origin main

echo.
echo ================================================================
echo  🎉 恭喜！同步已完成！
echo.
echo  📱 手机 / 平板 / 电脑 访问地址：
echo  🔗 https://marzhou31.github.io/proposals/
echo ================================================================
echo.
pause
