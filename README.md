# Home-42
A repository for persistent setup and configuration files in the Linux home directory @ 42SG.

## Installation

There are two options for installation:

1. Initialize your Home directory as a git repo linked directly to this repo.
  - Benefits: You can `git pull` directly from your Home directory for any updates to this repo.
  - Drawbacks: If you like to customize any of the files managed in this repo (e.g. .vimrc), then pulling future updates may cause git merge conflicts.
  - Installation:

```bash
git init -b main && git remote add origin https://github.com/seamicole/Home-42.git && git pull origin main --allow-unrelated-histories && ./install.sh
```
2. Clone this repository in a separate directory and run install.sh from there.
  - Benefits: Good for a one-time, non-intrusive install.
  - Drawbacks: You'll need to manage getting latest updates from this repo as you see fit.
  - Installation:

```bash
git clone https://github.com/seamicole/Home-42.git && cd Home-42 && ./install.sh
```

## Vim

### NERDTree

Although NERDTree provides you with a handy file tree explorer, there is no point-and-click interface. You can navigate the files in a similar way you would code in Vim. To toggle between the NERDTree file explorer and the file you're editing, use `ctrl + w + w`.

If you wish to collapse the NERDTree sidebar, you can use `ctrl + t`. If you wish to collapse NERDTree as well as the line numbers and Git Gutter, use `F5`. This is especially useful for highlighting and copying file content to your clipboard. If you try to do this with your sidebars open, you'll get a lot of extra junk in your clipboard!

To create, copy, move files, etc., hit `m` while in the NERDTree panel to access the options menu. For instance, to create a new file, you would find that you would need to type `ma` according to the options menu.

See https://github.com/preservim/nerdtree for more info on how to use NERDTree.

### Vim Fugitive (Git integration)

Vim Fugitive allows for managing your git commands directly through Vim.

Use `:G` to get an overview on your current repo's git status. Here, you can view all your tracked and untracked files for staging. You can navigate to a file and hit `=` to see all the new changes made to that file.

You can use `s` to stage one or multiple files depending on where the line cursor is focused. Once staged, you can use `:G commit -m "A helpful commit message"` to commit that file, and then `:G push` to push the file.

See https://github.com/tpope/vim-fugitive for more info on how to use Fugitive.




Questions, comments, concerns, please find Sean (so-leary) @ 42SG.
