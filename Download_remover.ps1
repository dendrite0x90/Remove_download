# Script to automate deletion of files within the downloads folder
# Version 1.0
# Written by Dendrite

# Setting task action
New-ScheduledTaskAction -Execute 'Download_remover.ps1'
# Setting task trigger
New-ScheduledTaskTrigger -DaysOfWeek Saturday -At 12pm -weekly

    
# Declaring main
function main
{
    # Variable for path of files within downloads folder
    $DownloadFolder = C:\Users\$env:USERNAME\Downloads\*


    # removes the files from the downloads folder
    remove-item $DownloadFolder
    
    # Clears the recyclebin
    Clear-RecycleBin -Confirm -Force -
}



# Calls main
main