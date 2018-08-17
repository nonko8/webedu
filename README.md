# Webプログラミング勉強用のリポジトリ

勉強用のリポジトリです。

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

```
$ yo hubot

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

### hello.js

スクリプトサンプル

[hello.js](slack-bot/scripts/hello.js)

実行
```bash
chmod a+x bin/hubot
bin/hubot
```

```bash
# 「hello>」と入力
slack-bot> hello>
# 実行結果：ボットから「Hello, Shell」と返ってくる
slack-bot> Hello, Shell
```

### Slack App で Hubot の設定
（Slackの登録方法は割愛）

検索欄に「hubot」と入力し、検索結果に表示される「Hubot」の「インストール」ボタンをクリック。

[2018-08-17_232620.png](images/2018-08-17_232620.png)

TODO：Slackでの追加手順を記載


### hubot を起動
コンソールに次の通りに入力。
```bash
env HUBOT_SLACK_TOKEN=xoxb-315XXXXXXXXX-XXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXXXXXzA bin/hubot --adapter slack
```

Slackのチャンネルで「hello>」と投稿して「Hello, <Slackでの名前>」と返信されれば成功。
