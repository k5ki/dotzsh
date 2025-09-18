#
# Plugins
#

# sheldon
if ! eval "$(sheldon source)" > /dev/null; then
  echo "sheldon is not installed"
fi

# starship
if ! eval "$(starship init zsh)" > /dev/null; then
  echo "starship is not installed"
fi

#
# Keybind
#

# emacs mode
bindkey -e

# bash-style Ctrl+U
bindkey "^U" backward-kill-line

#
# Alias
#

# ls
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

#
# Functions
#

# search history (Ctrl+R)
function select-history() {
  BUFFER=$(history -n -r 1 | fzf --no-sort +m)
  zle clear-screen
}
zle -N select-history
bindkey "^r" select-history


#
# Import local config
#

[ -f $ZCONFDIR/env.zsh ] && . $ZCONFDIR/env.zsh

#
# Options
#

# ベル無効
setopt no_beep

# 補完候補を方向キーで選択可能にする
zstyle ':completion:*:default' menu select=2

# '/' を区切り文字として扱う
typeset -g WORDCHARS=${WORDCHARS:s@/@@}

# 入力ミスを訂正
setopt correct

# 日本語ファイル名に対応
setopt print_eight_bit

# ディレクトリ末尾に/を自動付与
setopt auto_param_slash

# ファイル名の展開でディレクトリにマッチした場合 末尾に / を付加
setopt mark_dirs

# ファイルの種類を示すマークを表示
setopt list_types

# Tab連打で候補を切り替え
setopt auto_menu

# =以降も補完
setopt magic_equal_subst

# 入力途中でも補完
setopt complete_in_word

# ドット無しで隠しファイルをマッチ
setopt globdots

# 大文字・小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Ctrl+Dでログアウトしない
setopt IGNORE_EOF

# スペースで始まるコマンドを除外
setopt hist_ignore_space

# 重複するコマンドを除外
setopt hist_ignore_dups

# ヒストリに同じコマンドがあるなら古い方を削除
setopt hist_ignore_all_dups

#
# History
#

export HISTFILE=${HOME}/.zhistory
export HISTSIZE=10000
export SAVEHIST=20000
