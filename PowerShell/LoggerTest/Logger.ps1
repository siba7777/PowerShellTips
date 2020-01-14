#log4netのDLL読み込み
Add-Type -Path $DLL_PATH;

#log4net設定ファイル読み込み
$configFile = Get-Item $CONF_PATH;
[log4net.Config.XmlConfigurator]::Configure($configFile);

#log4netでログ設定
$logger = [log4net.LogManager]::GetLogger($script:myInvocation.MyCommand.Name);
