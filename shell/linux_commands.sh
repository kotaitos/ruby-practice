#!/bin/bash

# psコマンド：システム上で動作しているすべてのプロセスを表示する
ps aux

# curlcurlコマンド：URLを指定してHTTPリクエストを送信する
curl https://www.google.com

# topコマンド：システムのリソース使用状況を表示する
timeout 3 top

# grepコマンド：ファイル内の文字列を検索する
grep "Hello" echo.sh

# tailコマンド：ファイルの末尾を表示する
tail -n 5 echo.sh

# findコマンド：ファイルを検索する
find . -name "*.sh"

# chmodコマンド：ファイルのアクセス権を変更する
chmod 777 echo.sh

# chownコマンド：ファイルの所有者を変更する
sudo chown root echo.sh

# &: バックグラウンドで実行する
sleep 3 &

# &&：前のコマンドが成功した場合にのみ、次のコマンドを実行する
echo 'Hello World.' && bash echo.sh
