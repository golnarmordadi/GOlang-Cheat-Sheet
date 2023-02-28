#!/bin/bash
##############################################################################
# Main Commands
##############################################################################

go env  #To see configuration like operating system and processor architecture and etc.
go mod init hello  #Create a module which is named hello
go build filename #Define target by the main file
go build . #Define target by the source folder
go run filename #Run the code by the main file
go run .       #Run the code by the source folder
Ctrl --       #Zoom Out
Ctrl H        #show hidden files on a folder

##############################################################################
# Modules
##############################################################################
For making our module available to another users we need to put it on Github

```
$ git init
$ git add .
$ git commit -m &quot:tada: First commit&quot
$ git push -u origin main
```
go get path/to/module     #Getting a module by module path
fmt       #I/O operation




       



