# SCOM2012-Agent-handling-scripts
These are some scripts designed for handling scom agent changes like adding or removing mgmt groups

A few scripts in here, see below for descriptions.
1) SCOM 2012 - Restart all SCOM agents in the management group
2) Add a Management group to a SCOM 2012 agent with script
3) Remove a Management group from a SCOM 2012 agent with script


extended versions:

1) SCOM 2012 - Restart all SCOM agents in the management group
This script can be used to restart the System Center Management service (SCOM agent) on all your SCOM 2012 agents in the management group. This first version does not have error handling and displays which agent it is restarting on your screen with some verbose output. Assumes you run this from the Operations Manager Shell, but if you uncomment one line you can run it from normal PowerShell as well, assuming that machine has the module. If you run it on your management server both methods should work.
 
More information over here: https://blog.topqore.com/scom-2012-restart-all-scom/

2) Add a Management group to a SCOM 2012 agent with script
This is a VBScript to add a management group entry to a SCOM 2012 agent. This will add a management group entry to an existing Operations Manager 2012 agent.
In order to use it just downlaod the file.
Make sure you edit this part of the script:

"ManagementGroupNameToAdd", "server.domain.com",5723

This should of course reflect the management group name you want to add and the management server and the Operations Manager port you are using.
After that just invoke the script:
cscript.exe AddSCOM2012Mgmntgrp.vbs
It will add the management group entry in a second.

You can find about the story in this blog post: https://blog.topqore.com/manipulating-scom-2012-agent-multihoming/



3) Remove a Management group from a SCOM 2012 agent with script
This is a VBScript to remove a management group entry from a SCOM 2012 agent. This will remove a management group entry from an existing Operations Manager 2012 agent.
In order to use it just download the file.
Make sure you edit this part of the script:

"ManagementGroupNameToRemove"

This should of course reflect the management group name you want to remove.
After that just invoke the script:


cscript.exe RemoveSCOM2012Mgmntgrp.vbs
It will add the management group entry in a second.

You can find about the story in this blog post: https://blog.topqore.com/manipulating-scom-2012-agent-multihoming/



