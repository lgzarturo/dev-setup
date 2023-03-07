# Dev Setup

1. Install Homebrew, please run script `setup.sh`
2. Install terminal `iterm2`
3. Customize `bash` terminal and install `zsh`
4. Install recommended applications with brew, see: `brew-casks.txt`
5. Configure OSX Settings for better accessibility (Dock/Finder)
6. Install tools for productivity in OSX like Window Management, Quick Launcher or Hyperswitch
7. Use web browser extensions like AdBlock, Privacy Bagder, OneTab, JSONViewer, Stylus, Vue Devtools, React Devtools.
8. Install the following SDK for development:
    - Nodejs npm with `nvm`, stable version
    - Java SDK with `sdkman` (17, 19)
9. Install and customize Visual Studio Code, choose the follow editor extensions, see: `vscode-extensions.txt`
    - Current theme: Andromeda
    - You can install all extension with this command: `xargs -L code --install-extension < vscode-extensions.txt`
10. Install and customize IntelliJ IDEA, PyCharm and DataGrip
11. For eye care install Flux
12. Set configurations with dotfiles, only rename each file with prefix dot and put the file in user `~/`.
13. Configure the `~/.zshrc` following the file `zshrc_sample.txt`.
14. Copy `scripts` folder with the needs of environment, and configure `~/.zshrc`:

```bash
# Load scripts in the session terminal.
for file in ~/.scripts/*; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
```

## Additional

- Review the file `setup_brew_installer.sh` and install application needs.
- Ubuntu Linux environment see the file `setup_linux.sh`.

## Apps

Here got a quick list of some applications, might find useful as well:

- [Insomnia](https://insomnia.rest): Useful to test your REST APIs.
- [GitHub Desktop](https://desktop.github.com/): Tool to review the diff and stash changes.
- [Spectacle](https://www.spectacleapp.com/): Keyboard shortcuts to move and resize windows.
