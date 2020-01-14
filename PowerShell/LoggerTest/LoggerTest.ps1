#カレントディレクトリ取得
$APP_DIR =  `
    [System.IO.Path]::GetDirectoryName($myInvocation.MyCommand.Definition)　+ "\";

#log4netのDLLパス設定
$DLL_PATH = Join-Path $APP_DIR "..\lib\log4net.dll";

#log4net設定ファイルパス設定
$CONF_PATH = Join-Path $APP_DIR "..\conf\log4net.xml";

#Logger初期化処理
. (Join-Path $APP_DIR "Logger.ps1");

#log4netでログ出力
$logger.Info("いんふぉ");
$logger.Debug("でばっぐ");
$logger.Warn("わーん");
$logger.Error("えらー");
$logger.Fatal("ふぇいたる");

$logger.Logger.Repository.Shutdown();