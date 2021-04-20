---
weight: 10
title: "submodule"
bookCollapseSection: true
---

# git submodule

## 拉取 submodule

```shell
git submodule init
git submodule update --remote
```

## `git submodule add -b`

参考：

- [How can I specify a branch/tag when adding a Git submodule?](https://stackoverflow.com/questions/1777854/how-can-i-specify-a-branch-tag-when-adding-a-git-submodule)

## submodule 修改 url

- edit the `.gitmodules` file to update the URL
- `git submodule sync`

参考：
[How to change the remote repository for a git submodule?](https://stackoverflow.com/questions/913701/how-to-change-the-remote-repository-for-a-git-submodule)

## delete submodule

- Delete the relevant section from the .gitmodules file.
- Stage the .gitmodules changes `git add .gitmodules`
- Delete the relevant section from `.git/config`.
- Run `git rm --cached path_to_submodule` (no trailing slash).
- Run `rm -rf .git/modules/path_to_submodule` (no trailing slash).
- Commit `git commit -m "Removed submodule "`
- Delete the now untracked submodule files `rm -rf path_to_submodule`

参考：

- [How do I remove a submodule?](https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule)

---

### untracked status

```shell
[submodule "example"]
    path = example
    url = git://github.com/ikingye/example.git
    ignore = dirty
```

- [How to get rid of Git submodules untracked status?](https://stackoverflow.com/questions/5126765/how-to-get-rid-of-git-submodules-untracked-status)
