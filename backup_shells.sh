#! /bin/zsh

# tar -czf //Users/Michael/Coding/shell_backup.tar.gz /Users/Michael/Coding/Shell_Scripting - previous command, since replaced with below

# This bash script is used to backup a user's home directory to /tmp/.

user=$(whoami)
input=/Users/$user/Coding/Shell_Scripting
output=/Users/Michael/Coding/${user}_shell_backup_$(date +%Y-%m-%d_%H%M%S).tar.gz

tar -czf $output $input 2> /dev/null
echo "Backup of $input completed! Details about the output backup file:"
ls -l $output
