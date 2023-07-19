#!/bin/bash

chmod 755 ./call_other_script.sh ./echo.sh

# echo.shを呼び出す
# sourceと.は同じプロセスで実行される
source ./echo.sh
. ./echo.sh
# そのまま呼び出す場合、別プロセスで実行される
./echo.sh
