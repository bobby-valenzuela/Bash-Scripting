

# **********************************************************
#           USER PERMISSIONS
# **********************************************************

# Exit if not root or a sudoer
{ [[ $(id -u) -eq 0 ]] || $(sudo -v &>/dev/null) ; } || { echo -e "Please run with sudo privileges.\nExiting..." ; exit 1 ; } 


# **********************************************************
#           FILE MANIPULATION
# **********************************************************
# Rename files (Add '.sh' extension)
find . -maxdepth 1 -type f -exec mv '{}' '{}.sh' \;




# **********************************************************
#           NUMBERS AND ARITHMETIC
# **********************************************************

# Determine numeric parity (even/odd)
even_or_odd()
{
    integertest='^[0-9]+$'
    [[ ! $1 =~ $integertest ]] && echo "Not an integer!" && return 1
    [[ $(( $1 % 2 )) == 0 ]] && echo "Even" || echo "Odd"
}

# Validate IP
CNC_IP_SAVED=0

while [[ ${CNC_IP_SAVED} -ne 1 ]] 
do

    read -p "Enter CNC server IP: " CNC_IP
    [[ ${CNC_IP} =~ ([0-9]{1,3}\.){3}[0-9]{1,3} ]] && CNC_IP_SAVED=1
    
    # Can also do ip and port 0.0.0.0:8080
    # [[ ${CNC_IP} =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}\:[0-9]{1,4}$ ]] && CNC_IP_SAVED=1

done

echo "Saved: ${CNC_IP}"




# **********************************************************
#           PROGRAMS AND PACKAGES
# **********************************************************

# Determin whether we're using netstat vs ss
using_netstat=$({ netstat --version &> /dev/null && echo 1 ; } || echo 0)


# **********************************************************
#           PRINTING AND FORMATTING
# **********************************************************

# Get count of characters wide the terminal is
COLUMNS=$(tput cols)

prHeader(){

    for each in $(seq 1 $COLUMNS)

    do

    echo -n $1

    done

}
prHeaderLeftHalf(){
    for each in $(seq 1 $(($COLUMNS/2)))

    do

      echo -n $1

    done

    echo

}

prHeaderLeftThird(){
    for each in $(seq 1 $(($COLUMNS/3)))

    do

      echo -n $1

    done

    echo

}

prHeaderLeftQuarter(){
    for each in $(seq 1 $(($COLUMNS/4)))

    do

      echo -n $1

    done

    echo

}

prtxtCentre(){

title=$1

printf "%*s\n" $(((${#title}+$COLUMNS)/2)) "$title"

}



# print colored text
print_colored()
{

    [[ -z "$1" ||  -z "$2" ]] && echo "Usage: print_colored <color> <text>" && exit 1
    
    auto_print_newline=''
    [[ "$3" == 'no' ]] && auto_print_newline='-n' 

    case "$1" in
        "grey" | "GREY")        echo -e ${auto_print_newline} "\033[90m$2 \033[00m" ;;
        "red" | "RED")          echo -e ${auto_print_newline} "\033[91m$2 \033[00m" ;;
        "green" | "GREEN")      echo -e ${auto_print_newline} "\033[92m$2 \033[00m" ;;
        "yellow" | "YELLOW")    echo -e ${auto_print_newline} "\033[93m$2 \033[00m" ;;
        "blue" | "BLUE")        echo -e ${auto_print_newline} "\033[94m$2 \033[00m" ;;
        "purple" | "PURPLE")    echo -e ${auto_print_newline} "\033[95m$2 \033[00m" ;;
        "cyan" | "CYAN")        echo -e ${auto_print_newline} "\033[96m$2 \033[00m" ;;
        "white" | "WHITE")      echo -e ${auto_print_newline} "\033[96m$2 \033[00m" ;;
        *   )               echo -e ${auto_print_newline} "\033[96m$2 \033[00m" ;;
    esac


}

# Examples
# print_colored 'red' 'my message'
# print_colored 'red' 'my message\n\n' 'no'
