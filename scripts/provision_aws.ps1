
$env:FACTER_fqdn = (New-Object System.Net.WebClient).DownloadString("http://169.254.169.254/latest/meta-data/local-hostname")
[Environment]::SetEnvironmentVariable("FACTER_fqdn", $env:FACTER_fqdn, "Machine")