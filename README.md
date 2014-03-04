# hatena.vim
## インストール
- hatena/plugin/hatena.vim
- hatena/autoload/hatena.vim
- hatena/syntax/hatena.vim

以上のファイル/ディレクトリを適当な場所に置いて、パスを通して下さい。

例 (.vimrc):
```vim
set runtimepath+=$VIM/hatena
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

