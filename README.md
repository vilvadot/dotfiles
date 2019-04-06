# Vilva's dotfiles

Here are my dotfiles, a shameful copy and modification of [Salva's](https://github.com/saruba/dotfiles) 

Heavily based in the ones from: [mathias](https://github.com/mathiasbynens/dotfiles/)'s and [Addy](https://github.com/addyosmani/dotfiles).


## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. (I like to keep it in `~/Projects/dotfiles`, with `~/dotfiles` as a symlink.) The bootstrapper script will pull in the latest version and copy the files to your home folder.

```bash
git clone https://github.com/mathiasbynens/dotfiles.git
cd dotfiles
source bootstrap.sh
```

## Block Malware, Fake News and Porn domains

You can block all this sort of stuff by updating your /etc/hosts file with a blacklist of domains redirected to 0.0.0.0. See https://github.com/StevenBlack/hosts

```bash
./.hosts.sh
```

### Sensible macOS defaults

When setting up a new Mac, you may want to set some sensible macOS defaults:

```bash
./.macos
```

### Install Homebrew formulae

When setting up a new Mac, you may want to install some common [Homebrew](https://brew.sh/) formulae (after installing Homebrew, of course):

```bash
./brew.sh
```

Some of the functionality of these dotfiles depends on formulae installed by `brew.sh`. If you don’t plan to run `brew.sh`, you should look carefully through the script and manually install any particularly important ones. A good example is Bash/Git completion: the dotfiles use a special version from Homebrew.

--------

### To-do

-[ ] Include VSCode config
-[ ] Firefox Extensions?
-[ ] ZSH?