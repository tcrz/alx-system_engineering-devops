# WHAT EACH SCRIPT DOES #

* 0-current_working_directory - prints the absolute path name
 of the current working directory.
* 1-listit - displays the contents list of your current directory.
* 2-bring_me_home - changes the working directory to the
 user’s home directory.
* 3-listfiles - display  current directory contents in a long format
* 4-listmnorefiles - display current directory contents,
 including hidden files (starting with ```.```).
* 5-listfilesdigitonly - display current directory contents,
 with user and group IDs displayed numerically. Including hidden files
 (starting with ```.```).
* 6-firstdirectory - creates a directory named ```my_first_directory```
 in the ```tmp``` directory
* 7-movethatfile - Move the file ```betty``` from ```/tmp/```
 to ```/tmp/my_first_directory```
* 8-firstdelete - delete the file ```betty``` from specified directory.
* 9-Delete the directory ```my_first_directory``` that is in the ```/tmp``` directory.
* 10-back - changes the working directory to the previous one.
* 11-lists -  lists all files (even ones with names beginning
 with a period character, which are normally hidden) in the current directory
 and the parent of the working directory and the ```/boot```  directory
 (in this order), in long format.
* 12-file_type -  prints the type of the file named ```iamafile```
* 13-symbolic_link - creates a symbolic link to ```/bin/ls``` named ```__ls__``` 
* 14-copy_html - copies all the HTML files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory
 or were newer than the versions in the parent of the working directory.
* 100-lets_move - moves all files beginning with an uppercase
 letter to the directory ```/tmp/u```
* 101-clean_emacs -  deletes all files in the current
 working directory that end with the character ```~```
* 102-tree -  creates the directories ```welcome/```, ```welcome/to/```
 and ```welcome/to/school``` in the current directory.
* 103-commas - lists all the files and directories of the 
current directory, separated by commas (```,```).
* school.mgc - Create a magic file ```school.mgc```
 that can be used with the command ```file```
 to detect ```School``` data files.
 ```School``` data files always contain the string ```SCHOOL``` at offset 0.


