function jesusSay {
    $versiculos = @(
        "Porque de tal manera amó Dios al mundo... - Juan 3:16",
        "Todo lo puedo en Cristo que me fortalece. - Filipenses 4:13",
        "Jehová es mi pastor; nada me faltará. - Salmo 23:1",
        "Clama a mí, y yo te responderé. - Jeremías 33:3",
        "El Señor es mi luz y mi salvación; ¿a quién temeré? - Salmo 27:1"
    )

    $mensaje = Get-Random $versiculos

    $cruz = @'
     ┌────┐
     │    │
┌────┘    └────┐
│              │
└────┐    ┌────┘
     │    │
     │    │
     │    │
     │    │
     │    │
     │    │
     │    │
     └────┘
'@

    if ($IsWindows) {
        Write-Host "`n$mensaje`n" -ForegroundColor Cyan
        Write-Host "$cruz" -ForegroundColor White
    } else {
        Write-Host "`e[36m`n$mensaje`n`e[0m"
        Write-Host "`e[37m$cruz`e[0m"
    }
}
