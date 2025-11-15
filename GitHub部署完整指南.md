# GitHub Pages 部署完整指南

## 📋 项目信息

- **GitHub用户名**: MrZh2025
- **仓库名称**: HeYiYao_Public
- **仓库地址**: https://github.com/MrZh2025/HeYiYao_Public
- **网站地址**: https://MrZh2025.github.io/HeYiYao_Public/

---

## 🔧 第一步：安装 Git

### Windows 系统安装 Git

1. **下载 Git**
   - 访问官网：https://git-scm.com/download/win
   - 下载最新版本的 Git for Windows

2. **安装 Git**
   - 双击下载的安装程序
   - 一路点击 "Next"，使用默认设置即可
   - 安装完成后，重启 PowerShell 或命令提示符

3. **验证安装**
   ```powershell
   git --version
   ```
   如果显示版本号，说明安装成功

---

## 🚀 第二步：初始化 Git 仓库

在项目根目录打开 PowerShell，执行以下命令：

### 1. 配置 Git 用户信息（首次使用）

```powershell
git config --global user.name "MrZh2025"
git config --global user.email "your-email@example.com"
```

### 2. 初始化仓库（如果还未初始化）

```powershell
# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 首次提交
git commit -m "初始化项目"
```

### 3. 连接到 GitHub 远程仓库

```powershell
# 添加远程仓库
git remote add origin https://github.com/MrZh2025/HeYiYao_Public.git

# 设置主分支名称为 main
git branch -M main

# 首次推送（需要输入 GitHub 用户名和密码/Token）
git push -u origin main
```

---

## 🔐 第三步：GitHub 身份验证

### 方法一：使用 Personal Access Token（推荐）

1. **创建 Token**
   - 访问：https://github.com/settings/tokens
   - 点击 "Generate new token" → "Generate new token (classic)"
   - 设置名称：`HeYiYao_Public_Deploy`
   - 勾选权限：`repo`（完整仓库访问权限）
   - 点击 "Generate token"
   - **重要**：复制生成的 Token（只显示一次）

2. **使用 Token 推送**
   ```powershell
   # 推送时，用户名输入：MrZh2025
   # 密码输入：刚才复制的 Token
   git push -u origin main
   ```

### 方法二：使用 GitHub Desktop（更简单）

1. 下载安装：https://desktop.github.com/
2. 登录 GitHub 账号
3. 添加本地仓库
4. 点击 "Publish repository" 发布到 GitHub

---

## 📦 第四步：配置 GitHub Pages

1. **访问仓库设置**
   - 打开：https://github.com/MrZh2025/HeYiYao_Public
   - 点击 "Settings"（设置）

2. **启用 GitHub Pages**
   - 在左侧菜单找到 "Pages"
   - Source（源）选择：`GitHub Actions`
   - 保存设置

3. **等待部署**
   - 访问：https://github.com/MrZh2025/HeYiYao_Public/actions
   - 查看部署进度
   - 通常需要 2-5 分钟

4. **访问网站**
   - 部署成功后访问：https://MrZh2025.github.io/HeYiYao_Public/

---

## 🔄 日常更新流程

### 方法一：使用快速部署脚本

双击运行 `快速部署.bat`，按提示操作即可。

### 方法二：手动命令

```powershell
# 1. 查看修改状态
git status

# 2. 添加所有修改
git add .

# 3. 提交更改
git commit -m "更新内容描述"

# 4. 推送到 GitHub
git push
```

### 方法三：一行命令

```powershell
git add . && git commit -m "更新内容" && git push
```

---

## ✅ 验证部署成功

1. **检查 Actions 状态**
   - 访问：https://github.com/MrZh2025/HeYiYao_Public/actions
   - 确认最新的 workflow 显示绿色 ✓

2. **访问网站**
   - 首页：https://MrZh2025.github.io/HeYiYao_Public/
   - 元素周期表：https://MrZh2025.github.io/HeYiYao_Public/yuansuzhouqibiao.html
   - 放射性药物原理：https://MrZh2025.github.io/HeYiYao_Public/放射性药物原理.html
   - 产业大屏：https://MrZh2025.github.io/HeYiYao_Public/dashboard.html

3. **清除缓存**
   - 如果看不到更新，按 `Ctrl + F5` 强制刷新

---

## 🛠️ 常见问题解决

### 问题1：git 命令不存在

**解决方案**：安装 Git（参考第一步）

### 问题2：推送时要求输入密码

**解决方案**：使用 Personal Access Token 代替密码（参考第三步）

### 问题3：推送被拒绝（rejected）

```powershell
# 先拉取远程更新
git pull origin main --rebase

# 再推送
git push
```

### 问题4：部署失败

1. 检查 `.github/workflows/deploy.yml` 文件是否存在
2. 确认 GitHub Pages 设置为 "GitHub Actions"
3. 查看 Actions 页面的错误日志

### 问题5：网站显示 404

1. 确认 GitHub Pages 已启用
2. 等待 5-10 分钟让部署完成
3. 检查仓库是否为 Public（公开）

---

## 📝 提交信息规范

建议使用清晰的中文描述：

```powershell
# 功能更新
git commit -m "添加元素周期表交互功能"

# 样式调整
git commit -m "优化页面布局和配色"

# 内容更新
git commit -m "更新产业数据和图表"

# 问题修复
git commit -m "修复移动端显示问题"

# 文档更新
git commit -m "更新部署文档"
```

---

## 🔒 安全提示

1. **不要提交敏感信息**
   - 密码、Token、API密钥等
   - 已在 `.gitignore` 中排除 `.github-config.txt`

2. **定期更新 Token**
   - Personal Access Token 建议设置过期时间
   - 过期后重新生成并更新

3. **仓库权限**
   - 公开仓库：任何人都可以查看代码
   - 私有仓库：需要 GitHub Pro 或付费计划

---

## 📞 技术支持

### 查看部署状态
- Actions 页面：https://github.com/MrZh2025/HeYiYao_Public/actions

### 查看网站
- 网站首页：https://MrZh2025.github.io/HeYiYao_Public/

### Git 学习资源
- Git 官方文档：https://git-scm.com/doc
- GitHub 官方指南：https://docs.github.com/cn

---

## 📅 部署检查清单

- [ ] 安装 Git
- [ ] 配置 Git 用户信息
- [ ] 初始化本地仓库
- [ ] 创建 GitHub 仓库（HeYiYao_Public）
- [ ] 连接远程仓库
- [ ] 推送代码到 GitHub
- [ ] 启用 GitHub Pages（设置为 GitHub Actions）
- [ ] 验证 Actions 部署成功
- [ ] 访问网站确认正常显示
- [ ] 测试快速部署脚本

---

**创建日期**: 2025-01-15
**维护者**: MrZh2025
**最后更新**: 2025-01-15


