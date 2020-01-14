# カレントディレクトリ取得
$APP_DIR =  `
    [System.IO.Path]::GetDirectoryName($myInvocation.MyCommand.Definition)　+ "\";

# 環境変数定義ファイル読込
. ($APP_DIR + "Env.ps1");

<# デバッグ出力 #>
$DebugPreference = "Continue";
Write-Debug $v1;
Write-Debug $v2;