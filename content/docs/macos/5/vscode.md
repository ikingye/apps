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

## VSCode 配置

`settings.json`

```json
{
  "gitlens.advanced.messages": {
    "suppressShowKeyBindingsNotice": true
  },
  "gitlens.historyExplorer.enabled": true,
  "java.errors.incompleteClasspath.severity": "ignore",
  "materialTheme.autoApplyIcons": true,
  "workbench.colorCustomizations": {},
  "materialTheme.accentPrevious": "Breaking Bad",
  "workbench.colorTheme": "Material Theme",
  "materialTheme.fixIconsRunning": false,
  // Controls the font family.
  "editor.fontFamily": "Consolas",
  "editor.lineHeight": 22,
  "window.zoomLevel": 0,
  "editor.fontSize": 14,
  "workbench.startupEditor": "newUntitledFile",
  "editor.suggestSelection": "first",
  "vsintellicode.modify.editor.suggestSelection": "automaticallyOverrodeDefaultValue",
  "python.jediEnabled": false,
  "leetcode.endpoint": "leetcode-cn",
  "python.linting.pylintEnabled": true,
  "leetcode.defaultLanguage": "golang",
  "leetcode.hint.configWebviewMarkdown": false,
  "leetcode.hint.commentDescription": false,
  "go.useLanguageServer": true,
  "[go]": {
    "editor.formatOnSave": true,
    "editor.codeActionsOnSave": {
      "source.organizeImports": true
    },
    // Optional: Disable snippets, as they conflict with completion ranking.
    "editor.snippetSuggestions": "none"
  },
  "[go.mod]": {
    "editor.formatOnSave": true,
    "editor.codeActionsOnSave": {
      "source.organizeImports": true
    }
  },
  "gopls": {
    // Add parameter placeholders when completing a function.
    "usePlaceholders": true,

    // If true, enable additional analyses with staticcheck.
    // Warning: This will significantly increase memory usage.
    "staticcheck": false
  },
  "leetcode.workspaceFolder": "/Users/yewang/.leetcode",
  "leetcode.hint.commandShortcut": false,
  // Configure glob patterns for excluding files and folders.
  // For example, the files explorer decides which files and folders to show or hide based on this setting.
  // Read more about glob patterns [here](https://code.visualstudio.com/docs/editor/codebasics#_advanced-search-options).
  "files.exclude": {
    "**/.git": true,
    "**/.svn": true,
    "**/.hg": true,
    "**/CVS": true,
    "**/.DS_Store": true,
    "**/.classpath": true,
    "**/.project": true,
    "**/.settings": true,
    "**/.factorypath": true
  },
  "http.proxy": "http://127.0.0.1:8081",
  "terminal.integrated.inheritEnv": true,
  "terminal.integrated.shell.osx": "/bin/zsh",
  // 为了使用 agnoster zsh 主题
  "terminal.integrated.fontFamily": "Meslo LG M DZ for Powerline",
  "terminal.integrated.rendererType": "dom",
  // 选中即复制
  "terminal.integrated.copyOnSelection": true,
  "sourcetrail.startServerAtStartup": true,
  // vim
  "vim.normalModeKeyBindingsNonRecursive": [
    {
      "before": [":"],
      "commands": ["workbench.action.showCommands"]
    },
    {
      "before": ["<leader>", "m"],
      "commands": ["bookmarks.toggle"]
    },
    {
      "before": ["<leader>", "b"],
      "commands": ["bookmarks.list"]
    },
    {
      "before": ["Z", "Z"],
      "commands": [":wq"]
    },
    {
      "before": ["<C-n>"],
      "commands": [":nohl"]
    },
    {
      "before": ["leader", "w"],
      "commands": ["workbench.action.files.save"]
    }
  ],
  // 无法兼容 R 插入模式
  // "vim.insertModeKeyBindings": [
  //     {
  //         "before": ["j", "j"],
  //         "after": ["<Esc>"]
  //     }
  // ],
  "vim.visualModeKeyBindingsNonRecursive": [
    {
      "before": ["p"],
      "after": ["p", "g", "v", "y"]
    },
    {
      "before": [">"],
      "commands": ["editor.action.indentLines"]
    },
    {
      "before": ["<"],
      "commands": ["editor.action.outdentLines"]
    }
  ],
  "explorer.confirmDragAndDrop": false,
  "explorer.confirmDelete": false,
  "markdown-preview-enhanced.automaticallyShowPreviewOfMarkdownBeingEdited": false,
  "markdown.extension.preview.autoShowPreviewToSide": false,
  "[html]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  // Activate Python Environment in Terminal created using the Extension.
  "python.terminal.activateEnvironment": false,
  // Path to folder with a list of Virtual Environments (e.g. ~/.pyenv, ~/Envs, ~/.virtualenvs).
  "python.venvPath": "~/.local/share/virtualenvs",
  "editor.largeFileOptimizations": false,
  "C_Cpp.updateChannel": "Insiders",
  "[markdown]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  // Format a file on save. A formatter must be available, the file must not be saved after delay, and the editor must not be shutting down.
  "editor.formatOnSave": false,
  "[cpp]": {
    "editor.defaultFormatter": "ms-vscode.cpptools"
  },
  "clang-format.executable": "/Users/yewang/.vscode/extensions/ms-vscode.cpptools-0.27.0-insiders3/LLVM/bin/clang-format.darwin",
  "[json]": {
    "editor.defaultFormatter": "HookyQR.beautify"
  },
  // markdownlint config object
  "markdownlint.config": {
    "MD004": false,
    "MD013": false,
    "MD024": false,
    "MD025": false,
    "MD026": false,
    "MD040": false,
    "MD045": false
  },
  "markdownlint.run": "onSave",
  "window.title": "${dirty} ${activeEditorMedium}${separator}${rootName}",
  // 右侧概览 用色块代替缩小的字符; 设置水平最大列数; 始终显示滑块
  "editor.minimap.renderCharacters": false,
  "editor.minimap.maxColumn": 200,
  "editor.minimap.showSlider": "always",
  // 标签
  "editor.smoothScrolling": true,
  "editor.cursorBlinking": "phase",
  // "editor.cursorSmoothCaretAnimation": true,
  // 最后一行
  "files.insertFinalNewline": true,
  // 取消最后空格
  "files.trimTrailingWhitespace": true,
  // 取消发送给 ms
  "telemetry.enableCrashReporter": false,
  "telemetry.enableTelemetry": false,
  "workbench.settings.enableNaturalLanguageSearch": false,
  // "editor.renderWhitespace": "all",

  // Fit code within this line limit
  // "prettier.printWidth": 80,
  // Controls the wrapping column of the editor when `editor.wordWrap` is `wordWrapColumn` or `bounded`.
  // "editor.wordWrapColumn": 80,

  "python.formatting.autopep8Args": ["--max-line-length=100"],
  "javascript.updateImportsOnFileMove.enabled": "always",
  "[javascript]": {
    "editor.defaultFormatter": "HookyQR.beautify"
  },
  "java.requirements.JDK11Warning": false,
  "[java]": {
    "editor.defaultFormatter": "redhat.java"
  },
  "[yaml]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
  },
  "java.semanticHighlighting.enabled": true,
  "extensions.ignoreRecommendations": true,
  "python.languageServer": "Pylance",
  "java.project.importOnFirstTimeStartup": "automatic",
  "picgo.picBed.current": "github",
  "picgo.picBed.github.repo": "ikingye/imagehost",
  "picgo.picBed.github.token": "xxx",
  "picgo.picBed.github.branch": "master",
  "picgo.picBed.github.customUrl": "https://cdn.jsdelivr.net/gh/ikingye/imagehost",
  "picgo.picBed.github.path": "picgo/",
  "picgo.customOutputFormat": "![](${url})",
  "csharp.suppressDotnetInstallWarning": true,
  "csharp.suppressDotnetRestoreNotification": true,
  "go.goroot": "/usr/local/Cellar/go/1.14.6/libexec",
  "sonarlint.rules": {
    "Web:LinkToImageCheck": {
      "level": "off"
    }
  },
  "python.showStartPage": false,
  "hediet.vscode-drawio.local-storage": "xxx",
  "hediet.vscode-drawio.codeLinkActivated": true,
  // Configure which editor to use for specific file types.
  "workbench.editorAssociations": [
    {
      "viewType": "hediet.vscode-drawio-text",
      "filenamePattern": "*.svg"
    },
    {
      "viewType": "hediet.vscode-drawio-text",
      "filenamePattern": "*.drawio"
    }
  ],
  "todo-tree.tree.showScanModeButton": false,
  "[dockerfile]": {
    "editor.defaultFormatter": "ms-azuretools.vscode-docker"
  },
  "jupyter.sendSelectionToInteractiveWindow": true,
  "pasteImage.defaultName": "YMMDDHHmmss",
  "pasteImage.path": "${projectRoot}/static/image/2020",
  "jupyter.alwaysTrustNotebooks": true
}
```

## VSCode 插件

### `Draw.io`

[hediet/vscode-drawio](https://github.com/hediet/vscode-drawio) ![Github stars](https://img.shields.io/github/stars/hediet/vscode-drawio.svg) ![Language](https://img.shields.io/github/languages/top/hediet/vscode-drawio.svg) ![Last Tag](https://img.shields.io/github/v/tag/hediet/vscode-drawio.svg?sort=semver) ![Last commit](https://img.shields.io/github/last-commit/hediet/vscode-drawio.svg)

This unofficial extension integrates `Draw.io` (also known as `diagrams.net`) into VS Code.

设置背景色

```shell
For set light theme, add in your settings.json next:

    "hediet.vscode-drawio.theme": "atlas"
    // or if you'd like white menu on the top, not blue, use "Kennedy" theme
    "hediet.vscode-drawio.theme": "Kennedy"
    // or if you mostly view, not edit, use "minimal" theme
    "hediet.vscode-drawio.theme": "min"
Dark:

    "hediet.vscode-drawio.theme": "dark"
```

参考：

- [Feature request: match theme colors](https://github.com/hediet/vscode-drawio/issues/4#issuecomment-627398427)

## VScode 快捷键

{{< tabs "vscode shortcut" >}}
{{< tab "MacOS" >}}

### 选择

- 选中所有同一个词 `cmd + shift + L`

### 跳转

- 左右括号跳转 `cmd + shift + \`
- 跳到定义 `cmd + 鼠标左键单击`
- 返回光标上一个位置 `ctrl + -`

### 编辑

- 格式化 `opt + shift + f`

{{< /tab >}}
{{< tab "Windows" >}}

### 选择

- 选中所有同一个词 `ctrl + shift + L`

### 跳转

- 左右括号跳转 `ctrl + shift + \`
- 跳到定义 `ctrl + 鼠标左键单击`
- 返回光标上一个位置 `alt + ←`

{{< /tab >}}
{{< /tabs >}}

---

### Paste Image

[mushanshitiancai/vscode-paste-image](https://github.com/mushanshitiancai/vscode-paste-image) ![Github stars](https://img.shields.io/github/stars/mushanshitiancai/vscode-paste-image.svg) ![Language](https://img.shields.io/github/languages/top/mushanshitiancai/vscode-paste-image.svg) ![Last Tag](https://img.shields.io/github/v/tag/mushanshitiancai/vscode-paste-image.svg?sort=semver) ![Last commit](https://img.shields.io/github/last-commit/mushanshitiancai/vscode-paste-image.svg)

paste image from clipboard to markdown/asciidoc directly!

## VSCode Debug

参考：

- [USER GUIDE - Debugging](https://code.visualstudio.com/docs/editor/debugging)
- [Debug C++ in Visual Studio Code](https://code.visualstudio.com/docs/cpp/cpp-debug)
