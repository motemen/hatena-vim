# hatena.vim
## インストール
### NeoBundle (https://github.com/Shougo/neobundle.vim)
```vim
NeoBundle 'motemen/hatena-vim'
```

### Vundle (https://github.com/gmarik/vundle)
```vim
Bundle 'motemen/hatena-vim'
```

## 使用方法
```vim
:HatenaUser [グループ名:]ユーザ名
```
もしくは
```vim
:let g:hatena_user = '[グループ名:]ユーザ名'
```
としてユーザ名を設定し、
```vim
:HatenaEdit [[[YYYY]MM]DD]
```
で編集バッファが開きます。日記を書いたら :w で送信します。

## コマンド
### HatenaEdit 
はてなにログインし、日記を編集する
```vim
:HatenaEdit [[[YYYY]MM]DD]
```
日付の形式は YYYYMMDD, YYYY/MM/DD, YYYY-MM-DD

### HatenaUpdate
:HatenaEdit で開いたバッファの内容をはてなに送信し、日記を更新する
```vim
:HatenaUpdate [title_of_the_day]
```
title_of_the_day を指定しない場合は既に設定されているタイトルが使われる

### HatenaUpdateTrivial
:HatenaUpdate と一緒だけど、`ちょっとした更新' にする

### HatenaUser
はてなのユーザを切り換える
指定しなかった場合は表示する
```vim
:HatenaUser [username]
```

