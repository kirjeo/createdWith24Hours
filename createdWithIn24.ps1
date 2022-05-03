ls C:\ -directory -recurse | Foreach {
format-list
$creation=$_.CreationTime
$todaydate = get-date
if (($todaydate - $creation).totalhours -le 24)
{
Write-Host "File creation within 24 hours "$_.Name
}
}
