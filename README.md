# Webプログラミング勉強用のリポジトリ

勉強用のリポジトリです。

---

## JavaScript / Node.js ライブラリ
- [JavaScript標準ビルトインオブジェクト](https://developer.mozilla.org/ja/docs/Web/JavaScript/Reference/Global_Objects)
- [Node.js v8.11.3 Documentation](https://nodejs.org/en/blog/release/v8.11.3/)

## npm
Node.jsのためのパッケージマネージャ
```bash
$ npm

Usage: npm <command>

where <command> is one of:
    access, adduser, bin, bugs, c, cache, completion, config,
    ddp, dedupe, deprecate, dist-tag, docs, doctor, edit,
    explore, get, help, help-search, i, init, install,
    install-test, it, link, list, ln, login, logout, ls,
    outdated, owner, pack, ping, prefix, profile, prune,
    publish, rb, rebuild, repo, restart, root, run, run-script,
    s, se, search, set, shrinkwrap, star, stars, start, stop, t,
    team, test, token, tst, un, uninstall, unpublish, unstar,
    up, update, v, version, view, whoami

npm <command> -h     quick help on <command>
npm -l           display full usage info
npm help <term>  search for help on <term>
npm help npm     involved overview

Specify configs in the ini-formatted file:
    /home/nonko8/.npmrc
or on the command line via: npm <command> --key value
Config info can be viewed via: npm help config

npm@5.6.0 /home/nonko8/.nodebrew/node/v8.9.4/lib/node_modules/npm
```

npmでインストールされたものの一覧を確認
```bash
$ npm -g ls
```

---

## Slackのボット
「Hubot」を使ってSlackのボットを作成
- [Hubot README](slack-bot/README.md)

### モジュールのインストール
```bash
npm install -g npm
```
```bash
npm install -g yo
npm install -g generator-hubot
npm install -g coffee-script
```

```bash
$ yo hubot
# Bot adapter を「slack」にする。そのほかはデフォルトのまま。
? ==========================================================================
We're constantly looking for ways to make yo better!
May we anonymously report usage statistics to improve the tool over time?
More info: https://github.com/yeoman/insight & http://yeoman.io
========================================================================== Yes
                     _____________________________
                    /                             \
   //\              |      Extracting input for    |
  ////\    _____    |   self-replication process   |
 //////\  /_____\   \                             /
 ======= |[^_/\_]|   /----------------------------
  |   | _|___@@__|__
  +===+/  ///     \_\
   | |_\ /// HUBOT/\\
   |___/\//      /  \\
         \      /   +---+
          \____/    |   |
           | //|    +===+
            \//      |xx|

? Owner nonko8 <git@nonko8.com>
? Bot name slack-bot
? Description A simple helpful robot for your Company
? Bot adapter slack
   create bin\hubot
   create bin\hubot.cmd
   create Procfile
   create README.md
   create external-scripts.json
   create hubot-scripts.json
   create .gitignore
   create package.json
   create scripts\example.coffee
   create .editorconfig
                     _____________________________
 _____              /                             \
 \    \             |   Self-replication process   |
 |    |    _____    |          complete...         |
 |__\\|   /_____\   \     Good luck with that.    /
   |//+  |[^_/\_]|   /----------------------------
  |   | _|___@@__|__
  +===+/  ///     \_\
   | |_\ /// HUBOT/\\
   |___/\//      /  \\
         \      /   +---+
          \____/    |   |
           | //|    +===+
            \//      |xx|

npm WARN deprecated coffee-script@1.6.3: CoffeeScript on NPM has moved to "coffeescript" (no hyphen)
npm notice created a lockfile as package-lock.json. You should commit this file.
+ hubot@3.1.1
+ hubot-redis-brain@1.0.0
+ hubot-scripts@2.17.2
+ hubot-diagnostics@1.0.0
+ hubot-help@1.0.1
+ hubot-google-translate@0.2.1
+ hubot-pugme@0.1.1
+ hubot-maps@0.0.3
+ hubot-rules@1.0.0
+ hubot-shipit@0.2.1
+ hubot-heroku-keepalive@1.0.3
+ hubot-google-images@0.2.7
added 87 packages from 63 contributors and audited 162 packages in 13.823s
found 0 vulnerabilities
```

### スクリプトサンプル

機能
1. 「Hello>」と入力すると、「Hello, ${username}」と返す
2. 「lot>」と入力すると、「<おみくじの結果>, ${username}」と返す

スクリプト  
- [hello.js](slack-bot/scripts/hello.js)

### Hubot の実行
```bash
chmod a+x bin/hubot
bin/hubot
```

```bash
# 「hello>」と入力
slack-bot> hello>
# 実行結果：ボットから「Hello, Shell」と返ってくればOK！
slack-bot> Hello, Shell
```

### Slack App で Hubot の設定
（Slackの登録方法は割愛）

Slackのアプリ一覧画面を開き、検索欄に「hubot」と入力し、検索結果に表示される「Hubot」の「インストール」ボタンをクリック。

![2018-08-17_232620.png](images/2018-08-17_232620.png)

Hubotの画面が表示されたら「サインインしてインストール」をクリック。

![2018-08-17_232947.png](images/2018-08-17_232947.png)

ボットを追加するワークスペース名を入力し、「続行する　→」をクリック。

![2018-08-17_233018.png](images/2018-08-17_233018.png)

ワークスペースへサインインするために、メールアドレスとパスワードを聞かれるので、入力して「サインイン」をクリック。

![2018-08-17_233046.png](images/2018-08-17_233046.png)

再びHubotの画面が表示されるので、「インストール」をクリック。

![2018-08-17_233118.png](images/2018-08-17_233118.png)

Hubotにつける名前を聞かれるので、「ユーザー名」の欄に適当に入力して「Hubot インテグレーションの追加」をクリック。

![2018-08-17_233206.png](images/2018-08-17_233206.png)

すると、次のような文字列が表示されるので、どこかにコピペしておく。  

![2018-08-17_233553.png](images/2018-08-17_233553.png)

> これは、HubotとSlackにアクセスするために必要なもので、パスワードと同等なもの。これがないとSlack側では不正なアクセスとみなされる。(実際は調査していないので正確なことは不明、、、)  
> 漏れてしまうと、知らない人が勝手にワークスペースにボットを潜り込ませることができてしまうため、管理は厳重にしよう。  
> 漏れた場合は「APIトークン」の「「再作成する」で以前のキーを無効にして新しいキーを再作成することができる。

コピー出来たら画面の下にある「インテグレーションの保存」をクリック。

![2018-08-17_233620.png](images/2018-08-17_233620.png)

保存んをすると、ワークスペースにHubotが追加される。

![2018-08-17_233703.png](images/2018-08-17_233703.png)

Slack での Hubot の設定は以上。

### hubot を起動
コンソールに次の通りに入力。
```bash
env HUBOT_SLACK_TOKEN=xoxb-315XXXXXXXXX-XXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXXXXXzA bin/hubot --adapter slack
```

`HUBOT_SLACK_TOKEN=・・・` は、先ほどコピーしておいたAPIキー。

Slackのチャンネルで「hello>」と投稿して「Hello, <Slackでの名前>」と返信されれば成功。

---

## 

```bash
$ mkdir todo
$ cd todo
$ npm init

This utility will walk you through creating a package.json file.
It only covers the most common items, and tries to guess sensible defaults.

See `npm help json` for definitive documentation on these fields
and exactly what they do.

Use `npm install <pkg>` afterwards to install a package and
save it as a dependency in the package.json file.

Press ^C at any time to quit.
package name: (todo)
version: (1.0.0)
description:
entry point: (index.js)
test command: node test.js
git repository:
keywords:
author:
license: (ISC)
About to write to /home/nonko8/workspaces/webedu/todo/package.json:

{
  "name": "todo",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "node test.js"
  },
  "author": "",
  "license": "ISC"
}


Is this OK? (yes) yes
```

### スクリプトサンプル

スクリプト  
- [index.js](todo/index.js)
- [test.js](todo/test.js)

### スクリプトの実行

```bash
# テストスクリプトの実行
$ npm test

> todo@1.0.0 test /home/username/workspaces/webedu/todo
> node test.js

テストが正常に完了しました
```

### Slack との連携

準備
```bash
$ mkdir hubot-todo
$ cd hubot-todo/
$ npm init

This utility will walk you through creating a package.json file.
It only covers the most common items, and tries to guess sensible defaults.

See `npm help json` for definitive documentation on these fields
and exactly what they do.

Use `npm install <pkg>` afterwards to install a package and
save it as a dependency in the package.json file.

Press ^C at any time to quit.
package name: (hubot-todo)
version: (1.0.0)
description:
entry point: (index.js)
test command:
git repository:
keywords:
author:
license: (ISC)
About to write to /home/nonko8/workspaces/webedu/hubot-todo/package.json:

{
  "name": "hubot-todo",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "",
  "license": "ISC"
}


Is this OK? (yes) yes
```
```bash
# Bot adapter を「slack」にする。そのほかはデフォルトのまま。
$ yo hubot
                     _____________________________
                    /                             \
   //\              |      Extracting input for    |
  ////\    _____    |   self-replication process   |
 //////\  /_____\   \                             /
 ======= |[^_/\_]|   /----------------------------
  |   | _|___@@__|__
  +===+/  ///     \_\
   | |_\ /// HUBOT/\\
   |___/\//      /  \\
         \      /   +---+
          \____/    |   |
           | //|    +===+
            \//      |xx|

? Owner nonko8 <git@nonko8.com>
? Bot name hubot-todo
? Description A simple helpful robot for your Company
? Bot adapter slack
   create bin/hubot
   create bin/hubot.cmd
   create Procfile
   create README.md
   create external-scripts.json
   create hubot-scripts.json
   create .gitignore
 conflict package.json
? Overwrite package.json? overwrite this and all others
    force package.json
   create scripts/example.coffee
   create .editorconfig
                     _____________________________
 _____              /                             \
 \    \             |   Self-replication process   |
 |    |    _____    |          complete...         |
 |__\\|   /_____\   \     Good luck with that.    /
   |//+  |[^_/\_]|   /----------------------------
  |   | _|___@@__|__
  +===+/  ///     \_\
   | |_\ /// HUBOT/\\
   |___/\//      /  \\
         \      /   +---+
          \____/    |   |
           | //|    +===+
            \//      |xx|

npm WARN deprecated coffee-script@1.6.3: CoffeeScript on NPM has moved to "coffeescript" (no hyphen)
npm notice created a lockfile as package-lock.json. You should commit this file.
npm WARN hubot-slack@4.5.4 requires a peer of hubot@^2.0.0 but none is installed. You must install peer dependencies yourself.

+ hubot-redis-brain@1.0.0
+ hubot-scripts@2.17.2
+ hubot-heroku-keepalive@1.0.3
+ hubot@3.1.1
+ hubot-pugme@0.1.1
+ hubot-google-translate@0.2.1
+ hubot-diagnostics@1.0.0
+ hubot-rules@1.0.0
+ hubot-shipit@0.2.1
+ hubot-google-images@0.2.7
+ hubot-help@1.0.1
+ hubot-maps@0.0.3
+ hubot-slack@4.5.4
added 151 packages from 135 contributors and audited 253 packages in 4.929s
found 0 vulnerabilities
```
```bash
$ touch scripts/todo.js
```
```bash
$ npm install ../todo
npm WARN hubot-slack@4.5.4 requires a peer of hubot@^2.0.0 but none is installed. You must install peer dependencies yourself.

+ todo@1.0.0
added 1 package and audited 254 packages in 1.729s
found 0 vulnerabilities
```

### ボットの動作作成

todo.jsの編集
- [todo.js](hubot-todo/scripts/todo.js)

### hubot を起動
コンソールに次の通りに入力。
```bash
env HUBOT_SLACK_TOKEN=xoxb-315XXXXXXXXX-XXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXXXXXzA bin/hubot --adapter slack
```

### Slack から実行してみる

```
todo 鉛筆を買う
todo ノートを買う
list
done ノートを買う
donelist
del ノートを買う
donelist
list
```

---
