@echo off
chcp 65001 >nul
echo ========================================
echo    推送代码到 GitHub
echo    仓库: MrZh2025/HeYiYao_Public
echo ========================================
echo.

REM 刷新环境变量
set "PATH=%PATH%;C:\Program Files\Git\cmd"

echo 正在检查 Git 状态...
git status
echo.

echo ========================================
echo 准备推送到 GitHub
echo ========================================
echo.
echo 📌 如果推送失败，可能的原因：
echo 1. 仓库不存在 - 需要先在 GitHub 创建仓库
echo 2. 网络问题 - 检查网络连接
echo 3. 需要认证 - 输入用户名和 Personal Access Token
echo.
pause

echo.
echo 正在推送到 GitHub...
git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ 推送失败
    echo.
    echo 🔧 解决方案：
    echo.
    echo 1. 确认仓库已创建
    echo    访问：https://github.com/new
    echo    仓库名：HeYiYao_Public
    echo    设为 Public（公开）
    echo.
    echo 2. 检查网络连接
    echo    确保可以访问 github.com
    echo.
    echo 3. 如果需要代理，运行以下命令：
    echo    git config --global http.proxy http://127.0.0.1:7890
    echo    git config --global https.proxy http://127.0.0.1:7890
    echo.
    echo 4. 重新运行此脚本
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✓ 推送成功！
echo ========================================
echo.
echo 📌 下一步：
echo.
echo 1. 查看仓库
echo    https://github.com/MrZh2025/HeYiYao_Public
echo.
echo 2. 启用 GitHub Pages
echo    https://github.com/MrZh2025/HeYiYao_Public/settings/pages
echo    Source 选择：GitHub Actions
echo.
echo 3. 查看部署状态
echo    https://github.com/MrZh2025/HeYiYao_Public/actions
echo.
echo 4. 访问网站（部署完成后）
echo    https://MrZh2025.github.io/HeYiYao_Public/
echo.
echo ========================================
pause

