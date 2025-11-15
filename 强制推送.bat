@echo off
chcp 65001 >nul
echo ========================================
echo    强制推送所有文件到 GitHub
echo    仓库: MrZh2025/HeYiYao_Public
echo ========================================
echo.

REM 刷新环境变量
set "PATH=%PATH%;C:\Program Files\Git\cmd"

echo 📌 当前 Git 状态：
git status
echo.

echo ========================================
echo 准备推送
echo ========================================
echo.
echo 如果提示输入用户名和密码：
echo.
echo 用户名: MrZh2025
echo 密码: 使用 Personal Access Token（不是 GitHub 登录密码）
echo.
echo 如何获取 Token：
echo 1. 访问：https://github.com/settings/tokens
echo 2. 点击 "Generate new token (classic)"
echo 3. 勾选 repo 权限
echo 4. 生成并复制 Token
echo.
pause

echo.
echo 正在推送到 GitHub...
echo.

git push -u origin main --verbose

if errorlevel 1 (
    echo.
    echo ========================================
    echo ❌ 推送失败
    echo ========================================
    echo.
    echo 可能的原因：
    echo 1. 网络连接问题
    echo 2. 认证失败（Token 错误或过期）
    echo 3. 仓库权限问题
    echo.
    echo 解决方案：
    echo.
    echo 方案1：使用 GitHub Desktop（推荐）
    echo   下载：https://desktop.github.com/
    echo   图形界面，更简单
    echo.
    echo 方案2：配置 Git 凭据
    echo   运行以下命令：
    echo   git config --global credential.helper wincred
    echo.
    echo 方案3：使用 SSH 密钥
    echo   参考：GitHub部署完整指南.md
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✅ 推送成功！
echo ========================================
echo.
echo 📌 验证推送结果：
echo 访问：https://github.com/MrZh2025/HeYiYao_Public
echo.
echo 应该看到所有文件，包括：
echo - index.html
echo - yuansuzhouqibiao.html
echo - dashboard.html
echo - 放射性药物原理.html
echo - 产业图谱_html/ 文件夹
echo - 基础知识_html/ 文件夹
echo - README.md
echo - 等等...
echo.
echo ========================================
echo 📌 下一步：启用 GitHub Pages
echo ========================================
echo.
echo 1. 访问仓库设置：
echo    https://github.com/MrZh2025/HeYiYao_Public/settings/pages
echo.
echo 2. 在 "Source" 下拉菜单选择：GitHub Actions
echo.
echo 3. 等待部署完成（2-5分钟）
echo    查看部署状态：https://github.com/MrZh2025/HeYiYao_Public/actions
echo.
echo 4. 访问网站：
echo    https://MrZh2025.github.io/HeYiYao_Public/
echo.
echo ========================================
pause

