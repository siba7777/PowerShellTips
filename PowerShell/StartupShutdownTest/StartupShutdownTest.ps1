#イベントログよりPC起動、シャットダウン関連のイベントを取得してコンソール出力する
GET-WinEvent System | Where-Object{$_.Id -eq 6005 -or $_.Id -eq 6006 -or $_.Id -eq 6008 -or $_.Id -eq 7002 -or $_.Id -eq 7001} | select-Object TimeCreated,Id,Message | Format-Table *
