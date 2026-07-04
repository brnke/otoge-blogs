@echo off
chcp 65001 >nul
echo ================================
echo   正在启动本地服务器...
echo ================================
echo.
echo 网站地址: http://localhost:8080
echo 当前目录: %CD%
echo.
echo ================================
echo.

:: 这里改成你的 Python 实际路径
G:\Python34\python.exe -m http.server 8080

if %errorlevel% neq 0 (
    echo.
    echo 启动失败！请检查 Python 路径是否正确
    pause
    exit
)

pause