$Source=$args[0]
$Position = $Source.lastindexofany("\")
$FolderName = $Source.substring($Position + 1)
echo $Source
echo $FolderName
echo $Position


xcopy $Source "..\tweet-classification-experiments\$($FolderName)"  /I /T
xcopy $Source "..\tweet-classification-experiments\$($FolderName)"  /exclude:except.txt /E 

