#! /bin/zsh

# tar -czf //Users/Michael/Coding/shell_backup.tar.gz /Users/Michael/Coding/Shell_Scripting - previous command, since replaced with below

# This bash script is used to backup a user's home directory to /tmp/.

user=$(whoami)
input=/Users/$user/Coding/Shell_Scripting
output=/Users/Michael/Coding/${user}_shell_backup_$(date +%Y-%m-%d_%H%M%S).tar.gz


# The function total_files reports a total number of files
# for a given directory. 
function total_files {
        find $1 -type f | wc -l
}


# The function total_directories reports a total number of directories
# for a given directory. 
function total_directories {
        find $1 -type d | wc -l
}


tar -czf $output $input 2> /dev/null

echo -n "Files to be included:"
total_files $input
echo -n "Directories to be included:"
total_directories $input


echo "Backup of $input completed! Details about the output backup file:"
ls -l $output
