$currentdirectory = split-path -parent $MyInvocation.MyCommand.Definition
cd $currentdirectory
#(pwd).Path
#######################################################################################################################

#echo "_________________________________________________________________________________________________________________________"

#Add-MpPreference -ExclusionPath "$currentdirectory"
echo "Deshabilito"
Start-Process -Wait -FilePath "Disable-WinDefend.bat"

Pause

echo "Habilito"
Start-Process -FilePath "Enable-WinDefend.bat"


Pause