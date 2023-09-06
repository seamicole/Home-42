# Home-42
A repository for persistent setup and configuration files in the Linux home directory @ 42SG.

## Installation

There are two options for installation:

1. Initialize your Home directory as a git repo linked directly to this repo
  - Benefits: You can `git pull` directly from your Home directory for any updates to this repo.
	- Drawbacks: If you like to customize any of the files managed in this repo (e.g. .vimrc), then pulling future updates may cause git merge conflicts.
	- Installation:

```bash
git init -b main && git remote add origin https://github.com/seamicole/Home-42.git && git pull origin main --allow-unrelated-histories && ./install.sh
```
2. Clone this repository in a separate directory and run install.sh from there.
	- Benefits: Good for a one-time, non-intrusive install.
	- Drawbacks: You'll need to manage getting latest updates from this repo as you see fit.

```bash
git clone https://github.com/seamicole/Home-42.git && cd Home-42 && ./install.sh
```

## Vim



Questions, comments, concerns, please find Sean (so-leary) @ 42SG.
