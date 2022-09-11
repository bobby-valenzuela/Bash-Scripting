# Bash Scripts

A collection of some bash scripts I've created, tweaked, or compiled from various sources.

Note: A good source for these was the book "Wicked cool shell scripts [2nd edition] - no startch press 2017

Best to edit your $PATH variable in your home login script(.bashrc, .login, or .profile) to add the dir in which these scripts will be saved.

For example: `export PATH="$PATH:<PATH>"`

Where <PATH> is the location of dir in which your scripts are saved.

Preferred places to save said scripts:

- All Users: /usr/local/bin
    - `export PATH="$PATH:/usr/local/bin"`
- SysAdmin: /usr/local/sbin
    - `export PATH="$PATH:/usr/local/sbin"`
- Personal use: ~/bin
  - `export PATH="$PATH:$HOME/bin"`    
  - Note: On Ubuntu, there’s already a bit in the .profile file checks for such a dir and auto-adds it to the PATH var. All that is needed is to source the .profile file (source ~/.profile)
  
Then just source your login script
Example: `. ~/.bashrc`

Then you can just call your script with `bash -e myscript.sh` or sh `myscript.sh`
