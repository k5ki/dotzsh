# dotzsh

zsh config sharing for macOS users.

## Prerequisites

- zsh
  - macOS default is OK
- homebrew
  - see [https://brew.sh](https://brew.sh)
- fzf
  - `brew install fzf`
- starship
  - `brew install starship`
- sheldon
  - `brew install sheldon`

## Appendix

### Cheatsheet

#### Shell

| Keybind | Action                           |
| ------- | -------------------------------- |
| Ctrl+A  | 行頭に移動                       |
| Ctrl+E  | 行末に移動                       |
| Ctrl+F  | →                                |
| Ctrl+B  | ←                                |
| Ctrl+P  | ↑                                |
| Ctrl+N  | ↓                                |
| Ctrl+K  | カーソル位置から行末までを削除   |
| Ctrl+W  | カーソル位置後ろの単語を一つ削除 |
| Ctrl+R  | 履歴検索                         |
| Meta+F  | 一単語分 →                       |
| Meta+B  | 一単語分 ←                       |

#### Ghostty

| Keybind     | Action         |
| ----------- | -------------- |
| Cmd+Shift+, | 設定の反映     |
| Cmd+T       | タブを開く     |
| Cmd+W       | タブを閉じる   |
| Cmd+Shift+] | 右のタブに移動 |
| Cmd+Shift+[ | 左のタブに移動 |

| Command              | Action                             |
| -------------------- | ---------------------------------- |
| ghostty +list-fonts  | 利用可能なフォント一覧の表示       |
| ghostty +list-themes | 利用可能なカラーテーマのプレビュー |
| ghostty --help       | その他コマンドは --help で確認可   |

## Thanks

- Mecha mecha based on this article
  - [楽しく開発するための私のターミナル設定 - Zenn](https://zenn.dev/chot/articles/1d10f3a40332ab#zsh%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3)
