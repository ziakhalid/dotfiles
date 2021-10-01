

getMeBranchName(){

if [[ "${1}" == "" || "${2}" == "" ]]; then
	echo "Prameter expected exmple: getMeBranchName b 17092"
else
	case "${1}" in
	   b) echo "bugfix/IPBONLINE-${2}"
	      checkoutNewBranch "bugfix/IPBONLINE-${2}" ;;
           f) echo "feature/IPBONLINE-${2}"
	      checkoutNewBranch "feature/IPBONLINE-${2}" ;;
	esac
fi

}

checkoutNewBranch(){

echo "Do you want to checkout the new Branch? (y/n)\n" 
read answer
if [[ "${answer}" == "y" ]]; then
   git checkout -b "${1}"
fi

}
