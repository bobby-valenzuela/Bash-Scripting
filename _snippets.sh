

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