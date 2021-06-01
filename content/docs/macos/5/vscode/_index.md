---
weight: 10
title: "VSCode"
bookCollapseSection: true
---

# VSCode

[Microsoft/vscode](https://github.com/Microsoft/vscode) ![Github stars](https://img.shields.io/github/stars/Microsoft/vscode.svg) ![Language](https://img.shields.io/github/languages/top/Microsoft/vscode.svg) ![Last Tag](https://img.shields.io/github/v/tag/Microsoft/vscode.svg?sort=semver) ![Last commit](https://img.shields.io/github/last-commit/Microsoft/vscode.svg)

## 插件
### 插件列表

```shell
code --list-extensions
code --list-extensions --show-versions
```

[ouuan/my-vscode-extensions](https://github.com/ouuan/my-vscode-extensions) ![Github stars](https://img.shields.io/github/stars/ouuan/my-vscode-extensions.svg) ![Language](https://img.shields.io/github/languages/top/ouuan/my-vscode-extensions.svg) ![Last Tag](https://img.shields.io/github/v/tag/ouuan/my-vscode-extensions.svg?sort=semver) ![Last commit](https://img.shields.io/github/last-commit/ouuan/my-vscode-extensions.svg)

List your installed VS Code extensions in a Markdown file

参考：

- [Command line extension management](https://code.visualstudio.com/docs/editor/extension-gallery#_command-line-extension-management)

### VSCode 推荐插件

| 插件    | 类型                | 推荐 | 备注 |
| ------- | ------------------- | ---- | ---- |
| ESLint  | 格式化 - JavaScript | ★★★★ |      |
| TabNine | 代码补全            | ★★★★ |      |

#### ESLint

[Microsoft/vscode-eslint](https://github.com/Microsoft/vscode-eslint) ![Github stars](https://img.shields.io/github/stars/Microsoft/vscode-eslint.svg) ![Language](https://img.shields.io/github/languages/top/Microsoft/vscode-eslint.svg) ![Last Tag](https://img.shields.io/github/v/tag/Microsoft/vscode-eslint.svg?sort=semver) ![Last commit](https://img.shields.io/github/last-commit/Microsoft/vscode-eslint.svg)

#### TabNine

[codota/tabnine-vscode](https://github.com/codota/tabnine-vscode) ![Github stars](https://img.shields.io/github/stars/codota/tabnine-vscode.svg) ![Language](https://img.shields.io/github/languages/top/codota/tabnine-vscode.svg) ![Last Tag](https://img.shields.io/github/v/tag/codota/tabnine-vscode.svg?sort=semver) ![Last commit](https://img.shields.io/github/last-commit/codota/tabnine-vscode.svg)

Tabnine works with all major programming languages including JavaScript, Python, TypeScript, PHP, C/C++, HTML/CSS, Go, Java, Ruby, C#, Rust, SQL, Bash, Kotlin, Julia, Lua, OCaml, Perl, Haskell, and React.​

参考：

- [VSCode 插件列表](https://marketplace.visualstudio.com/search?target=VSCode&category=All%20categories&sortBy=Installs)

## 安装

```
brew cask install visual-studio-code
```

---

## 推荐插件

### PicGo/vs-picgo

https://github.com/PicGo/vs-picgo

### format

#### autopep8

设置每行最大长度

```
"python.formatting.autopep8Args": [
    "--max-line-length=200"
]
```

## 教程

- [帮你高效使用 VS Code 的秘诀](https://juejin.im/post/5cd8fcedf265da03761eaa45)

## Q&A

### Could not create temporary directory: Permission denied

```shell
sudo chown -R $USER ~/Library/Caches/*
```
