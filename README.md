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
5. 可参考 `Xiamen University Thesis Guidelines.md` 对照学校论文规范检查格式。
6. 使用 XeLaTeX 编译：

```bash
make
```

如果没有 `make`，可以直接执行：

```bash
latexmk -xelatex -interaction=nonstopmode -file-line-error main.tex
```

## 字体说明

默认入口文件使用 `font=fandol`，便于在 TeX Live 环境中直接编译。工作区可以保留本地字体目录用于个人编译，但公开发布前应确认字体文件的授权允许再提交。若需要使用 `font/` 目录中的字体，可将 `main.tex` 中的文档类选项改为 `font=local`；若使用系统字体，可根据系统改为 `font=mac` 或 `font=windows`。

## 学校规范自查

仓库中的 `Xiamen University Thesis Guidelines.md` 整理了学校论文格式要求，适合在定稿前对封面信息、摘要、目录、正文层级、图表、参考文献等部分进行自查。使用 Agent 辅助检查时，可以让 Agent 同时读取该文件和当前论文源码，逐项核对格式风险。

## 个人签名

仓库提供的 `figs/sign.png` 是示意签名图，用于展示签名图片的排版位置。正式使用时，可替换为自己的签名图片；若不提供该文件，模板会自动显示空白签名线。

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

确认没有真实签名图片、真实论文图片、真实论文 PDF 或未确认授权的字体文件被加入提交。
