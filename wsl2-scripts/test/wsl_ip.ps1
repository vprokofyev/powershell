# Make sure you backed up $windir\system32\Drivers\etc\hosts

# Get output from ifconfig. For some unknown reason powershell do nothing when
# you add one more pipe with awk '{print $2}'. Another bug I guess

# Select the ip 
$new_ip = wsl hostname -I
# Prepare object with new string to add in hosts file
$new_entry = $new_ip + "wsl"

Write-Output $new_entry

# Path to hosts file
# $hostsFile  = "$($env:windir)\system32\Drivers\etc\hosts"
# $hostsFile = "$($env:windir)\system32\Drivers\etc\hosts-test"

# # Read file and extract string with wsl ip-address if it is there
# $regex_wsl_ip = '(172).\d{1,3}\.\d{1,3}\.\d{1,3}\b wsl'
# $wsl_string = (Get-Content -path $hostsFile |  Select-String -Pattern "$regex_wsl_ip" -AllMatches).Matches.Value

# # Check if string exists in file and rewrite it
# if ($wsl_string) {
#     # Open file, replace strings, write
#     (Get-Content $hostsFile).Replace($wsl_string, $new_entry) | Set-Content $hostsFile
#     Write-Output "Rewrited $new_entry in $hostsFile"
# }
# else {
#     # Open file, add string, write
#     Add-Content -Path $hostsFile -Value $new_entry | Set-Content $hostsFile
#     Write-Output "Added $new_entry in $hostsFile"
# }

