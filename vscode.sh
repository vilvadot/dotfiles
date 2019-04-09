#!/usr/bin/env bash

IFS=$'\n'
for line in $(cat "vscode/extensions"); do
code --install-extension $line
done

cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/keybindings.json
