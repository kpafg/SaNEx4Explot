if [ $# -eq 0 ]; then
    echo "Error: no command provided."
    echo "Usage is: adb \"<MySQL command1; MySQL command2;... >\""
    exit 1
fi

bash ./run.sh "mysql -u csecvm -pQL3vakPhXI -e""$1"
