 $output = "C:\FMBPublic\Downloads\dm_spl_release_human_rx_part1.zip"


$targetFolder = "C:\FMBPublic\Downloads\Upload\dm_spl_release_human_rx_part1"


[System.Reflection.Assembly]::LoadWithPartialName('System.IO.Compression.FileSystem')


[System.IO.Compression.ZipFile]::ExtractToDirectory($output, $targetFolder)



　


$ZipFilesPath = "C:\FMBPublic\Downloads\Upload\dm_spl_monthly_update_jul2018\prescription"


$UnzipPath = "C:\FMBPublic\Downloads\Upload\dm_spl_monthly_update_jul2018\prescription\"


$Shell = New-Object -com Shell.Application


$Location = $Shell.NameSpace($UnzipPath)


$ZipFiles = Get-Childitem $ZipFilesPath -Name -Recurse -Include *.ZIP


$progress = 1


foreach ($ZipFile in $ZipFiles) {


    #Write-Progress -Activity "Unzipping to $($UnzipPath/$ZipFile)" -PercentComplete (($progress / ($ZipFiles.Count + 1)) * 100) -CurrentOperation $ZipFile.FullName -Status "File $($Progress) of $($ZipFiles.Count)"


    $ZipName = $ZipFile -Replace ".zip",""


    $ZipName


    $UnZipFolder = $UnzipPath+$ZipName


    $ZipFolder = $UnzipPath+$ZipFile


    write-output  $ZipFolder 


    write-output  $UnZipFolder 


    [System.IO.Compression.ZipFile]::ExtractToDirectory($ZipFolder,$UnZipFolder)


    $progress++


    Remove-Item -path $ZipFolder


} 
