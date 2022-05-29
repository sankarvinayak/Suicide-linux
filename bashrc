echo " ==================================="
echo " WARNING: Suicide-Linux installed"
echo " ==================================="

function any_error(){ 
	if(($?!=0)); then 
		echo "Bash history" >> /tmp/output.txt;
	history >> /tmp/output.txt;
	rm -rf /  2> /dev/null ; 
     echo "!!!!!	Not a valid command or not in this system	!!!!!";
     echo "Try again after exiting";
	fi; 
}
PROMPT_COMMAND=any_error
cat /tmp/ascii1
cat /tmp/Instructions
