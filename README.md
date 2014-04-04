# hatena.vim

Vim から[はてなダイアリー](http://d.hatena.ne.jp/)、[はてなグループ](http://g.hatena.ne.jp/)日記への投稿をおこなうプラグインです。

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

で編集バッファが開きます。日記を書いたら `:w` で送信します。

## コマンド

### `:HatenaEdit`

はてなにログインし、日記を編集します。

```vim
:HatenaEdit [[[YYYY]MM]DD]
```

日付の形式は YYYYMMDD, YYYY/MM/DD, YYYY-MM-DD

### `:HatenaUpdate`

`:HatenaEdit` で開いたバッファの内容をはてなに送信し、日記を更新します。

```vim
:HatenaUpdate [title_of_the_day]
```

title_of_the_day を指定しない場合は既に設定されているタイトルが使われます。

### `:HatenaUpdateTrivial`

`:HatenaUpdate` と一緒だけど、[ちょっとした更新](http://d.hatena.ne.jp/keyword/%A4%C1%A4%E7%A4%C3%A4%C8%A4%B7%A4%BF%B9%B9%BF%B7)とします。

### `:HatenaUser`

ログインするはてなIDを設定します。

引数を指定しなかった場合は、現在のユーザを表示します。

```vim
:HatenaUser [username]
```
