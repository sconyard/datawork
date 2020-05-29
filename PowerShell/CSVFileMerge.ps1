#Script to merge csv files 
#useful to create one import set to a DB, PowerBi or similar

$getFirstLine = $true
$timestamp = Get-Date -Format yy-MM-dd-hh-mm

get-childItem "path to source" | ForEach-Object {
    $filePath = $_

    $lines = Get-Content $filePath  
    $linesToWrite = switch($getFirstLine) {
           $true  {$lines}
           $false {$lines | Select-Object -Skip 1}

    }

    $getFirstLine = $false
    Add-Content "path to output/-merge-$timestamp.csv" $linesToWrite
    }
