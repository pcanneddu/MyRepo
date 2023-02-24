mkdir c:\wallpaper
Start-Sleep -Seconds 10
$url = "https://rgapppcannedduscrip9c3b.blob.core.windows.net/azure-webjobs-hosts/wallpaperflare.com_wallpaper.jpg?sp=r&st=2023-02-23T10:26:01Z&se=9999-12-31T22:59:59Z&spr=https&sv=2021-06-08&sr=b&sig=tc5J9AnsS7Mto3m55NGe1JuYwdeghUj4MK%2B9D5KUAPw%3D"
Start-Sleep -Seconds 10
$wc=new-object system.net.webclient
$wc.UseDefaultCredentials = $true
$wc.DownloadFile($url, "c:\wallpaper\wallpaper.jpg")
Start-Sleep -Seconds 10
set-itemproperty -path "HKCU:Control Panel\Desktop" -name WallPaper -value c:\wallpaper\wallpaper.jpg
