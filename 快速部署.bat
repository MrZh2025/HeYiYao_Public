@echo off
chcp 65001 >nul
echo ========================================
echo    GitHub 自动部署脚本
echo    仓库: MrZh2025/HeYiYao_Public
echo ========================================
echo.

REM 刷新环境变量，确保 Git 可用
set "PATH=%PATH%;C:\Program Files\Git\cmd"

REM 配置 Git 缓冲区（解决大文件传输问题）
git config --global http.postBuffer 524288000
git config --global http.lowSpeedLimit 0
git config --global http.lowSpeedTime 999999

REM 检查是否有修改
echo 📌 当前状态：
git status

echo.
echo ========================================
set /p commit_msg="请输入提交信息 (直接回车使用默认信息): "

if "%commit_msg%"=="" (
    set commit_msg=更新内容
)

echo.
echo 正在提交更改...
git add .
git commit -m "%commit_msg%"

if errorlevel 1 (
    echo.
    echo ⚠️  没有需要提交的更改
    echo.
    pause
    exit /b 0
)

echo.
echo 正在推送到GitHub...
git push origin main

if errorlevel 1 (
    echo.
    echo ❌ 推送失败！请检查网络连接后重试
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✅ 推送完成！
echo.
echo 📌 查看部署状态: https://github.com/MrZh2025/HeYiYao_Public/actions
echo 📌 访问网站: https://MrZh2025.github.io/HeYiYao_Public/
echo.
echo 💡 提示：等待 2-5 分钟后刷新网站查看更新
echo ========================================
echo.
pause

