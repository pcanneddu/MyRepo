$path = 'C:\Users\Public\Pictures\wallpaper'
mkdir $path
$fullpath = $path + '\wallpaper.jpg'
$wallpaperurl = 'https://github.com/pcanneddu/MyRepo/blob/main/pexels-arshad-sutar-1749303.jpg'
$wc=new-object system.net.webclient
$wc.UseDefaultCredentials = $true
$wc.DownloadFile($wallpaperurl, $fullpath)
set-itemproperty -path 'HKCU:Control Panel\Desktop' -name WallPaper -value $fullpath
