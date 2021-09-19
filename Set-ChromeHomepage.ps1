# Set registry path variables
$chromerec = "HKLM:\SOFTWARE\Policies\Google\Chrome\Recommended"
$chromeurl = "HKLM:\SOFTWARE\Policies\Google\Chrome\Recommended\RestoreOnStartupURLs"

# Create necessary registry paths
New-Item $chromerec -Force
New-Item $chromeurl -Force

# Set specified site to open on Chrome startup and set as homepage
# This section also enables the home button, which users seem to appreciate!
Get-Item -Path $chromerec | Set-ItemProperty -Name "RestoreOnStartup" -Value 4
Get-Item -Path $chromeurl | Set-ItemProperty -Name "1" -Value "https://domain.tld"
Get-Item -Path $chromerec | Set-ItemProperty -Name "ShowHomeButton" -Value 1
Get-Item -Path $chromerec | Set-ItemProperty -Name "HomepageLocation" -Value "https://domain.tld"
Get-Item -Path $chromerec | Set-ItemProperty -Name "HomepageIsNewTabPage" -Value 0
