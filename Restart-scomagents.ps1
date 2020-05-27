#####################################################################################
# Title:	Restart all SCOM 2012 agents in the management group
# Purpose:	See Title
# Date:		3-Sept-2012
# Author:	Bob Cornelissen
# Version:	1.0
#####################################################################################

# Uncomment the following if you are not running it from the Operations Manager Shell, but from the normal powershell
#import-module operationsmanager

# Get the SCOM agents and put their name into the get-service command
# And restart the healthservice for those

$scomagents = get-scomagent
Foreach ($scomagent in $scomagents)
{
write-host $scomagent.DisplayName
$service = Get-Service healthservice -ComputerName $scomagent.DisplayName
Restart-Service -InputObject $service -Verbose
}

# Notes:
# - script does not have error handling
# - the write-host is only for your info as to which agent has agent restarted
# - the -Verbose option gives you more info on screen as to what is happening
# End of script