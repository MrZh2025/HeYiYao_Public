# 📤 上传所有文件到 GitHub 仓库

## 🎯 目标

将项目中的所有文件上传到：https://github.com/MrZh2025/HeYiYao_Public

---

## 📋 需要上传的文件清单

### 核心HTML文件
- ✅ index.html（首页）
- ✅ yuansuzhouqibiao.html（元素周期表）
- ✅ dashboard.html（产业大屏）
- ✅ 放射性药物原理.html（药物原理）

### 文档文件
- ✅ README.md
- ✅ GitHub部署完整指南.md
- ✅ 快速开始.md
- ✅ 部署流程说明.md
- ✅ 部署检查清单.md

### 脚本文件
- ✅ 快速部署.bat
- ✅ 首次部署.bat
- ✅ pdf转html.py
- ✅ 打包.py
- ✅ 生成纯净地图.py

### 配置文件
- ✅ .github/workflows/deploy.yml
- ✅ .gitignore

### 资源文件夹
- ✅ 产业图谱_html/（包含所有子文件夹和HTML文件）
- ✅ 基础知识_html/（包含所有子文件夹和HTML文件）
- ✅ 基础知识/（图片文件：人体图.jpg、地图.png、核医药原理图.png等）

### 不上传的文件（已在.gitignore中排除）
- ❌ 产业图谱/*.pdf（PDF源文件）
- ❌ 元素周期表系统开发资料_*.zip
- ❌ .github-config.txt（敏感信息）
- ❌ __pycache__/（Python缓存）

---

## 🚀 方案一：使用 Git 命令行（推荐）

### 第1步：安装 Git

1. 下载 Git：https://git-scm.com/download/win
2. 双击安装，使用默认设置
3. 安装完成后，**重启 PowerShell**

### 第2步：验证 Git 安装

打开 PowerShell，运行：
```powershell
git --version
```
应该显示版本号，如：`git version 2.43.0.windows.1`

### 第3步：运行首次部署脚本

在项目文件夹中，双击运行 **`首次部署.bat`**

脚本会自动：
1. 初始化 Git 仓库
2. 配置用户信息
3. 添加所有文件
4. 连接到 GitHub 远程仓库
5. 推送所有文件

### 第4步：输入认证信息

推送时需要输入：
- **Username**: `MrZh2025`
- **Password**: 你的 Personal Access Token（不是GitHub密码）

如何获取 Token：
1. 访问：https://github.com/settings/tokens
2. 点击 "Generate new token (classic)"
3. 勾选 `repo` 权限
4. 生成并复制 Token

---

## 🌐 方案二：使用 GitHub Desktop（最简单）

### 第1步：安装 GitHub Desktop

1. 下载：https://desktop.github.com/
2. 安装并登录你的 GitHub 账号

### 第2步：添加本地仓库

1. 打开 GitHub Desktop
2. 点击 "File" → "Add local repository"
3. 选择项目文件夹：`c:\Users\周先生\Nutstore\1\2025年\核医药赛道\元素周期表系统开发`
4. 如果提示仓库不存在，点击 "create a repository"

### 第3步：发布到 GitHub

1. 在 GitHub Desktop 中，点击 "Publish repository"
2. 设置：
   - Name: `HeYiYao_Public`
   - Description: 核医疗产业综合信息平台
   - 取消勾选 "Keep this code private"（设为公开）
3. 点击 "Publish repository"

### 第4步：推送所有文件

1. 在左侧查看所有待提交的文件
2. 在底部输入提交信息：`初始化项目：上传所有文件`
3. 点击 "Commit to main"
4. 点击 "Push origin"

---

## 🌐 方案三：使用 GitHub 网页上传（适合小文件）

⚠️ **注意**：此方法不适合大量文件，建议使用方案一或方案二

1. 访问：https://github.com/MrZh2025/HeYiYao_Public
2. 点击 "Add file" → "Upload files"
3. 拖拽文件到页面
4. 填写提交信息
5. 点击 "Commit changes"

---

## ✅ 验证文件上传成功

### 检查仓库文件

访问：https://github.com/MrZh2025/HeYiYao_Public

应该看到以下文件和文件夹：
```
HeYiYao_Public/
├── .github/
│   └── workflows/
│       └── deploy.yml
├── 产业图谱_html/
│   ├── 医用同位素的制备和医学应用领域/
│   ├── 核药新药研发简介/
│   ├── 泸州市核医疗产业生态前景图/
│   └── 重点新型医用同位素研发、生产（泸州）方案/
├── 基础知识/
│   ├── 人体图.jpg
│   ├── 地图.png
│   ├── 核医药原理图.png
│   └── 放射性药物研发流程。 ＩＩＴ 为研究者发起的临床试验.png
├── 基础知识_html/
│   ├── 人体图/
│   ├── 地图/
│   ├── 放射性药物研发流程。 ＩＩＴ 为研究者发起的临床试验/
│   └── 核医药原理图/
├── index.html
├── yuansuzhouqibiao.html
├── dashboard.html
├── 放射性药物原理.html
├── README.md
├── GitHub部署完整指南.md
├── 快速开始.md
├── 部署流程说明.md
├── 部署检查清单.md
├── 快速部署.bat
├── 首次部署.bat
├── pdf转html.py
├── 打包.py
└── 生成纯净地图.py
```

### 检查文件数量

在仓库首页应该显示类似：
- `XX commits`
- `XX branches`
- `XX+ files`

---

## 🎉 完成后的步骤

文件上传成功后：

1. **启用 GitHub Pages**
   - 访问：https://github.com/MrZh2025/HeYiYao_Public/settings/pages
   - Source 选择：`GitHub Actions`

2. **等待部署**
   - 访问：https://github.com/MrZh2025/HeYiYao_Public/actions
   - 等待绿色 ✓

3. **访问网站**
   - https://MrZh2025.github.io/HeYiYao_Public/

---

**创建日期**: 2025-01-15  
**维护者**: MrZh2025

