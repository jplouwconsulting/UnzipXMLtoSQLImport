Param(
[String]$File
)
Write-Host $File

$url = "ftp://public.nlm.nih.gov/nlmdata/.dailymed/dm_spl_monthly_update_jul2018.zip"
$output = "C:\FMBPublic\Downloads\dm_spl_monthly_update_jul2018.zip"
$start_time = Get-Date
If (Test-Path $output) {
        Write-Output "File already exist"
        }
Else {
    #Download File
    (New-Object System.Net.WebClient).DownloadFile($url, $output)
    #Test-Path 
    Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
    $targetFolder = "C:\FMBPublic\Downloads\Upload\dm_spl_monthly_update_jul2018"
    [System.Reflection.Assembly]::LoadWithPartialName('System.IO.Compression.FileSystem')
    [System.IO.Compression.ZipFile]::ExtractToDirectory($output, $targetFolder)

    #Extract sub folders
    $ZipFilesPath = "C:\FMBPublic\Downloads\Upload\dm_spl_monthly_update_jul2018\animal"
    $UnzipPath = "C:\FMBPublic\Downloads\Upload\dm_spl_monthly_update_jul2018\animal\"
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

    $ZipFilesPath = "C:\FMBPublic\Downloads\Upload\dm_spl_monthly_update_jul2018\homeopathic"
    $UnzipPath = "C:\FMBPublic\Downloads\Upload\dm_spl_monthly_update_jul2018\homeopathic\"
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

    $ZipFilesPath = "C:\FMBPublic\Downloads\Upload\dm_spl_monthly_update_jul2018\otc"
    $UnzipPath = "C:\FMBPublic\Downloads\Upload\dm_spl_monthly_update_jul2018\otc\"
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

    $ZipFilesPath = "C:\FMBPublic\Downloads\Upload\dm_spl_monthly_update_jul2018\other"
    $UnzipPath = "C:\FMBPublic\Downloads\Upload\dm_spl_monthly_update_jul2018\other\"
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
 }
