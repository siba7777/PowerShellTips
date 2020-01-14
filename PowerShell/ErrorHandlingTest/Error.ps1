<# ============================================================================ 
    エラーハンドリングのサンプル
============================================================================ #>

$DebugPreference = "Continue";

<# ============================================================================ 
    リターンコードからエラー判定してエラー処理へ
============================================================================ #>
try{
    #net use \\hostname\share password /user:user
    Move-Item -Path "SrcPath" -Destination "DstPath"
    if($LASTEXITCODE -ne 0){
        throw
    }
}catch{
    Write-Debug("エラー1"+$_.Exception)
}finally{
    Write-Debug "Finally1";
}

<# ============================================================================ 
    リターンコードからエラー判定してエラー処理へ
============================================================================ #>
$ErrorActionPreference = "Stop"
try{
    Move-Item -Path "SrcPath" -Destination "DstPath"
}catch{
    Write-Debug("エラー2"+$_.Exception)
}finally{
    Write-Debug "Finally2";
}