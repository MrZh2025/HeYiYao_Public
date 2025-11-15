@echo off
chcp 65001 >nul
echo ========================================
echo    GitHub Pages 首次部署脚本
echo    仓库: MrZh2025/HeYiYao_Public
echo ========================================
echo.

REM 检查 Git 是否安装
git --version >nul 2>&1
if errorlevel 1 (
    echo ❌ 错误：未检测到 Git
    echo.
    echo 请先安装 Git：
    echo 1. 访问 https://git-scm.com/download/win
    echo 2. 下载并安装 Git for Windows
    echo 3. 安装完成后重新运行此脚本
    echo.
    pause
    exit /b 1
)

echo ✓ Git 已安装
echo.

REM 检查是否已经初始化
if not exist ".git" (
    echo 正在初始化 Git 仓库...
    git init
    echo ✓ Git 仓库初始化完成
    echo.
    
    echo 正在配置 Git 用户信息...
    set /p git_name="请输入您的 GitHub 用户名 (默认: MrZh2025): "
    if "%git_name%"=="" set git_name=MrZh2025
    
    set /p git_email="请输入您的邮箱: "
    
    git config --global user.name "%git_name%"
    git config --global user.email "%git_email%"
    echo ✓ Git 用户信息配置完成
    echo.
) else (
    echo ✓ Git 仓库已存在
    echo.
)

REM 检查远程仓库
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo 正在添加远程仓库...
    git remote add origin https://github.com/MrZh2025/HeYiYao_Public.git
    echo ✓ 远程仓库添加完成
    echo.
) else (
    echo ✓ 远程仓库已配置
    echo.
)

REM 设置主分支
git branch -M main

echo ========================================
echo 准备推送到 GitHub
echo ========================================
echo.
echo 📌 重要提示：
echo 1. 推送时需要输入 GitHub 用户名和密码
echo 2. 密码请使用 Personal Access Token（不是 GitHub 登录密码）
echo.
echo 如何获取 Token：
echo 1. 访问 https://github.com/settings/tokens
echo 2. 点击 "Generate new token (classic)"
echo 3. 勾选 "repo" 权限
echo 4. 生成后复制 Token（只显示一次）
echo.
pause

echo.
echo 正在添加文件...
git add .

echo 正在提交更改...
git commit -m "首次部署：初始化核医疗产业综合信息平台"

echo.
echo 正在推送到 GitHub...
echo （请输入用户名和 Token）
git push -u origin main

if errorlevel 1 (
    echo.
    echo ❌ 推送失败
    echo.
    echo 可能的原因：
    echo 1. Token 权限不足或已过期
    echo 2. 仓库不存在或无访问权限
    echo 3. 网络连接问题
    echo.
    echo 解决方案：
    echo 1. 确认已在 GitHub 创建仓库 HeYiYao_Public
    echo 2. 重新生成 Personal Access Token
    echo 3. 检查网络连接
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✓ 推送成功！
echo ========================================
echo.
echo 📌 下一步操作：
echo.
echo 1. 启用 GitHub Pages
echo    - 访问：https://github.com/MrZh2025/HeYiYao_Public/settings/pages
echo    - Source 选择：GitHub Actions
echo    - 保存设置
echo.
echo 2. 查看部署状态
echo    - 访问：https://github.com/MrZh2025/HeYiYao_Public/actions
echo    - 等待部署完成（约 2-5 分钟）
echo.
echo 3. 访问网站
echo    - 网站地址：https://MrZh2025.github.io/HeYiYao_Public/
echo.
echo 4. 后续更新
echo    - 使用 "快速部署.bat" 脚本即可
echo.
echo ========================================
pause

