# Set registry path as a variable
$firefoxhome = "HKLM:\SOFTWARE\Policies\Mozilla\Firefox\Homepage"

# Create the registry path
New-Item $firefoxhome -Force

# Set specified site to open on Firefox startup and set as homepage
Get-Item -Path $firefoxhome | Set-ItemProperty -Name "Locked" -Value 1
Get-Item -Path $firefoxhome | Set-ItemProperty -Name "StartPage" -Value "homepage"
Get-Item -Path $firefoxhome | Set-ItemProperty -Name "URL" -Value "https://domain.tld"
