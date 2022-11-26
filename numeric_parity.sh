
# Determine numeric parity (even/odd)
num=$1

[[ $(( $num % 2 )) == 0 ]] && echo "Even" && exit
echo "Odd"
  
