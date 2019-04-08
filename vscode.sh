#!/usr/bin/env bash

IFS=$'\n'
for line in $(cat "vscode/extensions"); do
let line_counter=$(($line_counter+1))
code --install-extension $line
done

cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
