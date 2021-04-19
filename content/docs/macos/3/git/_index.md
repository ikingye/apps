---
weight: 10
title: "git"
bookCollapseSection: true
---

# git

## git module

```bash
git submodule foreach git reset --hard HEAD
git submodule update
git submodule foreach "git checkout master; git pull"
git submodule foreach git clean -f

```

### 更新 submodule

```bash
git submodule update --init

git submodule update --remote
```

### 删除 submodule

1.  Delete the relevant section from the `.gitmodules` file.
2.  Stage the `.gitmodules` changes:\
    `git add .gitmodules`
3.  Delete the relevant section from `.git/config`.
4.  Remove the submodule files from the working tree and index:\
    `git rm --cached path_to_submodule` (no trailing slash).
5.  Remove the submodule's `.git` directory:\
    `rm -rf .git/modules/path_to_submodule`
6.  Commit the changes:\
    `git commit -m "Removed submodule <name>"`
7.  Delete the now untracked submodule files:\
    `rm -rf path_to_submodule`

参考：

- [How do I remove a submodule?](https://stackoverflow.com/questions/1260748/how-do-i-remove-a-submodule)

---

## merge vs squash vs rebase

merge 不能保持 master 分支干净，但是保持了所有的 commit history，大多数情况下都是不好的，个别情况挺好
squash 也可以保持 master 分支干净，但是 master 中 author 都是 maintainer，而不是原 owner
rebase 可以尽可能保持 master 分支干净整洁，并且易于识别 author

### squash merge

```shell
# 切换到目标分支
$ git checkout master

# 以 squash 的形式 merge
$ git merge --squash devel

# it does not produce a commit right away: you need an additional commit
$ git commit -m "squash branch"
```

- 你会发现，在 master 分支上居然有未提交的修改，然后你就需要在 master 上主动提交了修改，
- 注意，这里是你 commit 的，也就是改变了 commit 的 author。
- git merge has a --commit option, but it cannot be used with --squash.
- It was never possible to use --commit and --squash together.

参考：

- [In git, what is the difference between merge --squash and rebase?](https://stackoverflow.com/questions/2427238/in-git-what-is-the-difference-between-merge-squash-and-rebase)

### rebase merge

```shell
# 先切换到 devel 分支（不一样咯）
$ git checkout devel

# 变基
$ git rebase -i master

# 切换回目标分支
$ git checkout master

# 合并
$ git merge
```

- 我们在 devel 里面对照 master 进行了变基
  - 所谓的变基其实就是找到两个分支共同的祖先
- 然后在当前分支上合并从共同祖先到现在的所有 commit
  - 会选择怎么处理这些 commit
- 然后我们就得到了一个从公共 commit 到现在的单个 commit
- 这个时候别人将我们这个 commit 合并到 master 也只会在 master 上留下一个 commit 记录

---

## 合并 git commit

参考：

- [Trimming Git Commits/Squashing Git History](https://stackoverflow.com/questions/2302736/trimming-git-commits-squashing-git-history)

---

## git branch 与 git tag 同名

需要使用完整路径

```shell
git checkout refs/heads/v1.5.2

git checkout refs/tags/v1.5.2

git push -u origin refs/heads/v4.8.0
```

参考：

- [In git, is it a bad idea to create a tag with the same name as a deleted branch?](https://softwareengineering.stackexchange.com/questions/230438/in-git-is-it-a-bad-idea-to-create-a-tag-with-the-same-name-as-a-deleted-branch)

---

## git pull force

```shell
git fetch --all

# git reset --hard origin/<branch_name>
git reset --hard origin/master
```

参考：

- [How do I force “git pull” to overwrite local files?](https://stackoverflow.com/questions/1125968/how-do-i-force-git-pull-to-overwrite-local-files)

---

## `hard reset` vs `mixed reset` vs `soft reset`

```shell
# 回到 reset 版本，之后的文件都属于 git add 的状态
git reset --soft

# git reset 默认就是 --mixed
# 回到 reset 版本，之后的文件都属于 git add 前的状态
git reset --mixed

# 回到 reset 版本，之后文件都丢弃（使用 git reflog 可以找回来）
git reset --hard

```

## git reflog

`reflog` 是 Git 操作的一道安全保障，它能够记录几乎所有本地仓库的改变。

包括所有分支 commit 提交，已经删除的 `commit`（其实并未被实际删除）都会被记录。

只要 HEAD 发生变化，就可以通过 `reflog` 查看到。

## git 回退

```shell
# 文件放弃本地修改
git checkout -- <file>

# 回退到某个版本
git checkout commit-id <path>
git reset -- <path>
```

参考：

- [Why git can't do hard/soft resets by path?](https://stackoverflow.com/questions/11200839/why-git-cant-do-hard-soft-resets-by-path)
