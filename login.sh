#!/bin/bash
# Bridger Tack 09.07.2021
# This prints and then saves login history to a .txt file in your ~/Documents folder
# Instead of overwritting the file each time the scrpit is ran it creates a new entry in the text file 

variable=Something 
variable=Directory

# The variable $Something is set to the output of the command `last`

print_something () {

Something=$(last) 

}

# If the user does not have a Documents directory in their home directory this will create it 

mkdir -p ~/Documents 

# Creates a file called login_record.txt in the users Documents folder and saves $Something to that file

save_something () {

cd ~/Documents

touch ~/Documents/login_record.txt

echo $Something >> ~/Documents/login_record.txt

# Creates a variable that's used in the ending message that tells the user the file path directory

}

directory () {

cd ~/Documents 

Directory=$(pwd)

}

# Runs all functions that have been created

directory
print_something 
save_something 

# Tells the user that the command completed successfully 

echo "Command completed succsesfully, printed to $Directory"

