cls

$output_file = $args[0]
$regex = ‘<package (.*) t’

Get-ChildItem -Path $args[1] -Filter packages.config -Recurse | select-string -Path {$_} -Pattern $regex -AllMatches | % { $_.Matches } | % { $_.Groups[1] } | % { $_.Value } | select -uniq > $output_file