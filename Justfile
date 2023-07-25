set shell := ['nu', '-m', 'light', '-c']

# The export setting causes all just variables
# to be exported as environment variables.

set export := true

JUST_FILE_PATH := justfile()

# 默认显示所有可用命令
default:
  @just --list --list-prefix "··· "

# Sync NuShell grammar from the official repository with curl
sync2:
  @curl -s https://raw.githubusercontent.com/nushell/vscode-nushell-lang/main/syntaxes/nushell.tmLanguage.json -o grammars/tmLanguage.json

# Sync NuShell grammar from the official repository: https://github.com/nushell/vscode-nushell-lang/tree/main/syntaxes
sync:
  @http get -r https://raw.githubusercontent.com/nushell/vscode-nushell-lang/main/syntaxes/nushell.tmLanguage.json | save -rf grammars/tmLanguage.json


