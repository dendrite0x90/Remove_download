# Script to automate deletion of files within the downloads folder
# Version 1.0
# Written by Dendrite

# Setting task action
New-SceduledTaskAction -Execute 'Download_remover.ps1'
# Setting task trigger
New-ScheduledTaskTrigger -DaysOfWeek Saturday -At 12pm

    
# Declaring main
function main
{
    # Variable for path of files within downloads folder
    $DownloadFolder = C:\Users\$env:USERNAME\Downloads\*


    # removes the files from the downloads folder
    remove-item $DownloadFolder
    
    # Clears the recyclebin
    Clear-RecycleBin
}



# Calls main
main