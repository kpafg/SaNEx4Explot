# SaNEx4Exploit
## By Joe for my uni assignment ctf
enjoy :}

## How to use:
Run `bash exploit.sh`.
This will:
- Add /admin/shellex.php to the website using the /admin/list.php?path=;cmdToInject vulnerability.
- Alias the run bash file as "rn" so commands can also be ran without using the shellex page simply with the terminal.

### How to use shellex.php (modified version of /admin/list.php)
- navigate to http://192.168.103.3/admin/shellex.php/ or http://sensiblefurniture.com/admin/shellex.php/ if you are running from the same machine as the website
- you can put your commands in the input box and press run to run them.

### How to use run.sh
Run `rn <command>`
- This should run a command as the web server and show you it's outputs just like shellex but instead just in the terminal.

### How to use accessDB.sh
Run `adb "<MySQL command1; MySQL command2;... >"`
- this executes the list of MySql commands on the sites DB.
