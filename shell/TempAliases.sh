#Path
hllPath="~/Documents/Root/GIT_REPO/LALAMOVE/LLMGlobalDriver/dapp-android-component"
notesPath="~/Documents/Root/GIT_REPO/MyNotes"
notesLearningPath="$notesPath/Learning"
notesOfficePath="$notesPath/Office"
notesOtherPath="$notesPath/Other"
notesPersonalPath="$notesPath/Personal"
notesToolsPath="$notespath/Tools"
dotfilesPath="~/dotfiles"
dotfilesShellPath="$dotfilesPath/shell"
dotfilesShellScriptPath="$dotfilesPath/shell/script"
productivityScriptPath="~/Documents/Root/GIT_REPO/ProductivityScripts"
productivityScriptShellPath="$productivityScriptPath/Shell"
baseUrlHllJira="https://lalamove.atlassian.net/browse/"
baseUrlHllGitlabDappCommit="https://gitlab.huolala.cn/group-driver/driver/dapp-android-component/commit/"

#Move to Directory
alias mthll="cd $hllPath"
alias mtMyNotes="cd $notesPath" 
alias mtOffice="cd $notesOfficePath"
alias mtDotfilesShell="cd $dotfilesShellPath"	
alias mtDotfilesShellScript="cd $dotfilesShellScriptPath"
alias mtProductivityScript="cd $productivityScriptPath"
alias mtProductivityScriptShell="cd $productivityScriptShellPath"

#Edit files
alias editStandup="vim $notesOfficePath/StandUp"
alias editTestingllm="vim $notesOfficePath/TestingLalamove"
alias editTodo="vim $notesPath/ToDo" 
alias editTempAliases="vim $dotfilesShellPath/TempAliases.sh"
alias editImportantCommands="vim $notesLearningPath/ImportantCommands"
alias editSprintTask="vim $notesOfficePath/SprintTask"
alias editSprintTaskNotes="vim $notesOfficePath/SprintTaskNotes"
alias editRoughNotes="vim $notesPath/RoughNotes"

#Show files
alias showTodo="cat $notesPath/ToDo"
alias showSprintTaskNotes="cat $notesOfficePath/SprintTaskNotes"
alias showImportantCommands="cat $notesLearningPath/ImportantCommands"

#functions
openJira(){
     if [[ "${1}" == "" ]]; then
	echo "Error: parameter cannot be empty"
     else
	open "${baseUrlHllJira}${1}"
	echo "OPening -> ${baseUrlHllGitlabDappCommit}${1}"
     fi
}

openGitCommit(){
     if [[ "${1}" == "" ]]; then
	echo "Error: parameter cannot be empty"
     else
	open "${baseUrlHllGitlabDappCommit}${1}"
	echo "Opening -> ${baseUrlHllGitlabDappCommit}${1}"
     fi
}







