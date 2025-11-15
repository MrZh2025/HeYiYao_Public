@echo off
chcp 65001 >nul
echo ========================================
echo    GitHub 自动部署脚本
echo    仓库: MrZh2025/HeYiYao_Public
echo ========================================
echo.

REM 检查是否有修改
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

echo.
echo 正在推送到GitHub...
git push

echo.
echo ========================================
echo 推送完成！
echo.
echo 查看部署状态: https://github.com/MrZh2025/HeYiYao_Public/actions
echo 访问网站: https://MrZh2025.github.io/HeYiYao_Public/
echo ========================================
echo.
pause

