@echo off
chcp 65001 >nul
title 乙女游戏本地服务器
color F0
cls

echo ════════════════════════════════════
echo      正在启动本地服务器...
echo ════════════════════════════════════
echo.
echo 📁 当前目录: %CD%
echo 🌐 本机访问: http://localhost:8080
echo 📱 手机访问: 先用 ipconfig 查 IP，再用 http://你的ip地址:8080
echo.
echo ⚠️  保持本窗口开启，关闭即停止服务
echo ⚠️  按 Ctrl+C 可以停止服务器
echo ════════════════════════════════════
echo.

python -m http.server 8080

if %errorlevel% neq 0 (
    echo.
    echo ❌ 启动失败！尝试用 py 命令...
    py -m http.server 8080
)

if %errorlevel% neq 0 (
    echo.
    echo ❌ 启动失败！请检查 Python 安装
    pause
    exit
)

pause