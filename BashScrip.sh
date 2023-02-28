#!/bin/bash
##############################################################################
# Main Commands
##############################################################################

Install Go form https://go.dev/doc/install

go env  #To see configuration like operating system and processor architecture and etc.
go mod init [PACKAGE_NAME]  #Creates a go.mod file to track your code's dependencies
go build filename #Define target by the main file
go build . #Define target by the source folder
go run filename #Run the code by the main file
go run .       #Run the code by the source folder


##############################################################################
# Modules
##############################################################################
Find packages from this link https://pkg.go.dev/
For making our module available to another users we need to put it on Github

```
git init
git add .
git commit -m &quot:tada: First commit&quot
git push -u origin main
```

Publish First Version

```
git tag v1.0.0
git push --tags
```

Using Self Created Module

```
import (
	"github.com/hakimemordadi/first"
)
```

Getting & Installing a Module by Path

```
go get path/to/module  
```

Getting the modules really "used" by the application are listed by
 
```
go list -m all
```

Tidy makes sure go. mod matches the source code in the module. It adds any missing modules necessary to build the current module's packages and dependencies, and it removes unused modules that don't provide any relevant packages. It also adds any missing entries to go.

```
go mod tidy
```

Using for purposes of Unit Testing and Microbenchmark.

```
go test
```

A static analyzer looks for possible errors in the code
```
go vet
```

Using for code formatting
```
go fmt
```
To display documents or serve them over HTTP
```
godoc
```

To rename variables, functions, etc
```
gorename
```
It provides the possibility of calling C language codes within Go codes
```
cgo
```
It is used to convert Go codes to assembly.
```
asm
```
Helps build, test, deploy and distribute code.
```
dist
```
It detects the use of old APIs in the application and replaces them with new APIs.
```
fix
```
Converts the output of Go tests to Jason format.
```
test2json
```
A simplified version of the ar utility on Unix.
```
pack
```
It separates executable files.
```
objdump
```
Tracks trace files.
```
trace
```



