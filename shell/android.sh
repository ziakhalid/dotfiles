installJpApp(){

# move to jp directory
mtJp

# make sure you are on default branch
echo "Checkout develop branch ... "
git checkout develop 

# if *force pull server copy 
if [[ "${2}" == true ]]; then
   echo "pulling latest copy from the server ... "
   git pull --prune
else
   echo "Note: app will build on local repo copy"
fi

# make sure you are using Java 8
java -version 2>&1 | awk -F '"' '/version/ {print $2}' | grep "1.8"
if [ $? -eq 0 ]; then
  echo "Java 1.8 is already set"
else
  j8
fi

# Make sure you have a connected device
ADB_OUT=`adb devices | awk 'NR>1 {print $1}'`
if test -n "$ADB_OUT" 
then
   executeGradleTask ${1}
else
   echo "No device is connected"
fi 

}

uninstallJpApp(){

# move to jp directory
mtJp

# Make sure you have a connected device
ADB_OUT=`adb devices | awk 'NR>1 {print $1}'`
if test -n "$ADB_OUT" 
then
   executeGradleTask ${1}
else
   echo "No device is connected"
fi 
}

executeGradleTask(){
if [[ "${1}" == "" ]]; then
  echo "Parameter expected"
else
  ./gradlew ${1}
fi
}

iDemo(){
echo "Installing Demo ..."
if [[ "${1}" == "" ]]; then
  echo "Use true as parameter for building server copy ... "
  installJpApp installDemo false
elif [[ "${1}" == true ]]; then
  installJpApp installDemo true
fi
}

uDemo(){
uninstallJpApp uninstallDemo
}




