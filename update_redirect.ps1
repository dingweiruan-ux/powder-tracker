param([string]$url)

$html = @'
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="refresh" content="0;url={URL}">
<title>粉末加样追踪</title>
<script>location.replace("{URL}");</script>
</head>
<body>
正在跳转到粉末加样追踪系统...
</body>
</html>
'@

$html = $html -replace '{URL}', $url
Set-Content -Path "$PSScriptRoot\index.html" -Value $html -Encoding UTF8

Write-Host "Redirect updated to: $url"
