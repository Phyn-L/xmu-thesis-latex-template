# 厦门大学本科毕业论文 LaTeX 模板

这是一个经过脱敏整理的厦门大学本科毕业论文 LaTeX 模板，包含封面、诚信承诺书、中英文摘要、双语目录、章节、图表、公式、算法和参考文献示例。

## 文件结构

```text
.
├── main.tex              # 论文入口
├── setup.tex             # 封面与论文信息
├── Reference.bib         # 参考文献数据库
├── body/                 # 正文章节
├── tabs/                 # 表格文件
├── figs/                 # 图片文件
├── xmuthesis.cls         # 模板类文件
├── xmuthesis.dtx         # 模板源码文档
└── xmulogo.sty           # 厦门大学校名图形支持
```

## 快速开始

1. 修改 `setup.tex` 中的姓名、学号、题目、学院、专业、导师等信息。
2. 在 `body/` 目录中撰写各章节内容。
3. 将图片放入 `figs/`，将大表格放入 `tabs/`。
4. 在 `Reference.bib` 中维护参考文献。
5. 使用 XeLaTeX 编译：

```bash
make
```

如果没有 `make`，可以直接执行：

```bash
latexmk -xelatex -interaction=nonstopmode -file-line-error main.tex
```

## 字体说明

默认入口文件使用 `font=fandol`，便于在 TeX Live 环境中直接编译。工作区可以保留本地字体目录用于个人编译，但公开发布前应确认字体文件的授权允许再提交。若需要使用 `font/` 目录中的字体，可将 `main.tex` 中的文档类选项改为 `font=overleaf`；若使用系统字体，可根据系统改为 `font=mac` 或 `font=windows`。

## 个人签名

模板不会提交个人手写签名。若需要在本地生成最终版，可将签名图片命名为 `figs/sign.png`；该文件已被 `.gitignore` 忽略，不应上传到公开仓库。

## 发布到 GitHub 前的检查

当前仓库如果保留了旧 Git 历史，历史提交中可能仍包含真实论文内容或个人文件。公开发布时建议新建一个干净仓库，只提交当前脱敏后的文件：

```bash
git init
git add .
git commit -m "Initial public thesis template"
git branch -M main
git remote add origin <your-github-repo-url>
git push -u origin main
```

在执行 `git add .` 前，建议先运行：

```bash
git status --short
```

确认没有签名图片、编译产物、真实论文图片、真实论文 PDF 或个人字体文件被加入提交。
