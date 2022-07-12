
runSwitch(){
  mtSwitchProject
  compileSwitch
  if [ $? -eq 0 ]; then
    echo "No compile error :)"
    echo "running now..."
    java SwitchJava
  else
    echo "Fix compile error :("
  fi
}


compileSwitch(){
  javac SwitchJava.java
}
