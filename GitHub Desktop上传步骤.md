# 🖥️ 使用 GitHub Desktop 上传所有文件（最简单方法）

## 📌 为什么选择 GitHub Desktop？

✅ **无需命令行** - 图形界面操作，简单直观  
✅ **自动处理** - 自动识别所有文件变化  
✅ **可视化** - 清楚看到哪些文件被上传  
✅ **一键推送** - 点击按钮即可完成上传  

---

## 🚀 完整操作步骤

### 第1步：下载并安装 GitHub Desktop

1. **下载软件**
   - 我已经为你打开了下载页面：https://desktop.github.com/
   - 点击 "Download for Windows" 下载

2. **安装软件**
   - 双击下载的安装程序
   - 等待自动安装完成（约1-2分钟）

3. **登录 GitHub 账号**
   - 打开 GitHub Desktop
   - 点击 "Sign in to GitHub.com"
   - 输入用户名：`MrZh2025`
   - 输入密码
   - 完成登录

---

### 第2步：创建本地仓库

1. **添加本地仓库**
   - 在 GitHub Desktop 中，点击左上角 "File" → "Add local repository"
   - 或者点击 "Current Repository" → "Add" → "Add Existing Repository"

2. **选择项目文件夹**
   - 点击 "Choose..." 按钮
   - 导航到：`c:\Users\周先生\Nutstore\1\2025年\核医药赛道\元素周期表系统开发`
   - 点击 "选择文件夹"

3. **初始化仓库**
   - 如果提示 "This directory does not appear to be a Git repository"
   - 点击 "create a repository" 链接
   - 在弹出窗口中：
     - Name: 保持默认（元素周期表系统开发）
     - Description: `核医疗产业综合信息平台`
     - Git Ignore: 选择 `None`
     - License: 选择 `None`
   - 点击 "Create Repository"

---

### 第3步：查看待上传的文件

在 GitHub Desktop 左侧 "Changes" 标签页，你应该看到所有文件：

```
✓ .github/workflows/deploy.yml
✓ index.html
✓ yuansuzhouqibiao.html
✓ dashboard.html
✓ 放射性药物原理.html
✓ README.md
✓ GitHub部署完整指南.md
✓ 快速开始.md
✓ 部署流程说明.md
✓ 部署检查清单.md
✓ 上传文件到GitHub指南.md
✓ 快速部署.bat
✓ 首次部署.bat
✓ pdf转html.py
✓ 打包.py
✓ 生成纯净地图.py
✓ 产业图谱_html/（所有子文件）
✓ 基础知识/（所有图片）
✓ 基础知识_html/（所有子文件）
... 等等
```

**注意**：如果看到 `.gitignore` 中排除的文件（如 .zip、.pdf），请取消勾选它们。

---

### 第4步：提交更改

1. **填写提交信息**
   - 在左下角 "Summary" 框中输入：`初始化项目：上传所有文件`
   - 在 "Description" 框中输入（可选）：
     ```
     - 上传核心HTML文件
     - 上传产业图谱和基础知识资源
     - 上传部署脚本和文档
     - 配置GitHub Actions自动部署
     ```

2. **提交到本地仓库**
   - 点击蓝色按钮 "Commit to main"
   - 等待提交完成（几秒钟）

---

### 第5步：发布到 GitHub

1. **发布仓库**
   - 提交完成后，顶部会显示 "Publish repository" 按钮
   - 点击 "Publish repository"

2. **配置仓库设置**
   - Name: 改为 `HeYiYao_Public`
   - Description: `核医疗产业综合信息平台`
   - **重要**：取消勾选 "Keep this code private"（设为公开仓库）
   - Organization: 选择 `None`（个人仓库）

3. **确认发布**
   - 点击 "Publish Repository" 按钮
   - 等待上传完成（根据文件大小，可能需要1-5分钟）

---

### 第6步：验证上传成功

1. **查看上传进度**
   - 在 GitHub Desktop 顶部会显示上传进度
   - 等待显示 "Last fetched just now"

2. **在浏览器中查看**
   - 在 GitHub Desktop 中，点击 "Repository" → "View on GitHub"
   - 或直接访问：https://github.com/MrZh2025/HeYiYao_Public
   - 确认所有文件都已上传

3. **检查文件列表**
   - 应该看到所有HTML文件
   - 应该看到 `产业图谱_html` 和 `基础知识_html` 文件夹
   - 应该看到 `.github/workflows/deploy.yml`

---

## ⚙️ 启用 GitHub Pages

文件上传成功后，需要启用 GitHub Pages：

1. **访问仓库设置**
   - 在浏览器中打开：https://github.com/MrZh2025/HeYiYao_Public
   - 点击 "Settings"（设置）

2. **配置 Pages**
   - 在左侧菜单找到 "Pages"
   - 在 "Source" 下拉菜单中选择：`GitHub Actions`
   - 设置会自动保存

3. **等待部署**
   - 访问：https://github.com/MrZh2025/HeYiYao_Public/actions
   - 等待第一次部署完成（约2-5分钟）
   - 看到绿色 ✓ 表示部署成功

4. **访问网站**
   - 首页：https://MrZh2025.github.io/HeYiYao_Public/
   - 元素周期表：https://MrZh2025.github.io/HeYiYao_Public/yuansuzhouqibiao.html
   - 放射性药物原理：https://MrZh2025.github.io/HeYiYao_Public/放射性药物原理.html
   - 产业大屏：https://MrZh2025.github.io/HeYiYao_Public/dashboard.html

---

## 🔄 后续更新文件

以后修改文件后，使用 GitHub Desktop 更新非常简单：

1. **修改文件**
   - 在本地编辑任何文件

2. **查看更改**
   - 打开 GitHub Desktop
   - 在 "Changes" 标签页查看修改的文件

3. **提交更改**
   - 填写提交信息（如："更新元素周期表数据"）
   - 点击 "Commit to main"

4. **推送到 GitHub**
   - 点击顶部的 "Push origin" 按钮
   - 等待推送完成

5. **自动部署**
   - GitHub Actions 会自动部署
   - 2-5分钟后网站更新

---

## ❓ 常见问题

### Q1: 上传速度很慢？

**A**: 
- 检查网络连接
- 如果文件很多，首次上传可能需要5-10分钟
- 可以在 GitHub Desktop 中看到上传进度

### Q2: 某些文件没有上传？

**A**: 
- 检查 `.gitignore` 文件
- 确认文件没有被排除
- PDF 和 ZIP 文件默认不上传（已在 .gitignore 中排除）

### Q3: 提示认证失败？

**A**: 
- 重新登录 GitHub Desktop
- 检查 GitHub 账号密码是否正确
- 可能需要使用 Personal Access Token

---

## ✅ 完成检查清单

- [ ] 下载并安装 GitHub Desktop
- [ ] 登录 GitHub 账号
- [ ] 添加本地仓库
- [ ] 查看待上传的文件列表
- [ ] 填写提交信息并提交
- [ ] 发布仓库到 GitHub（名称：HeYiYao_Public，公开）
- [ ] 验证文件已上传到 GitHub
- [ ] 启用 GitHub Pages（Source: GitHub Actions）
- [ ] 等待部署完成
- [ ] 访问网站确认正常显示

---

**创建日期**: 2025-01-15  
**维护者**: MrZh2025  
**推荐指数**: ⭐⭐⭐⭐⭐（最简单的方法）

