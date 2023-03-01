#!/bin/bash
##############################################################################
# Main Commands
##############################################################################

``` Installation 
https://go.dev/doc/install
go version  #To see version of current installation
```

``` Useful Links
https://go.dev/play/        #Go Playground 
https://pkg.go.dev/         #Search for existing Gp packages  
```
go env                      #To see configuration like operating system and processor architecture and etc
go mod init [PACKAGE_NAME]  #Creates a go.mod file to track your code's dependencies

```Build
go build [FILE_NAME]        #Define target by the main file
go build .                  #Define target by the source folder. Compiles the packages named by the import paths, along with their dependencies, but it does not install the results.
```

```Run
go run [FILE_NAME]          #Run the code by the main file
./hello.go
go run .                    #Run the code by the source folder + Performs project's building under the hood, it builds project as well
go run --work .             #Show up the location of temporary build files
```

```Running multiple Go files at once
go run dir/*.go 
go run dir/**/*.go
go run file-a.go file-b.go file-c.go
```

```Install
go install [filename.go]   #Compiles and installs the packages named by the import paths. To deploy the binary files to bin directory. Since, bin directory is in the PATH of your system, we can execute it from anywhere.
$GOBIN/hello
```

```If you are working with multiple files, command will create a binary file in GOBIN directory with a non-specific filename.
go install *.go
go install file-1.go file-2.go ...
```

##############################################################################
# Modules
##############################################################################
https://pkg.go.dev/         #Find packages from this link 

```For making our module available to another users we need to put it on Github
git init
git add .
git commit -m "First commit"
git push -u origin main
```

```Publish First Version
git tag v1.0.0
git push --tags
```

```Using Self Created Module into the code
import (
	"github.com/hakimemordadi/first"
)
```

```Getting & Installing a Module by Path
go get path/to/module  
```

```Getting the modules really "used" by the application are listed by
go list -m all
```

```Tidy makes sure go. mod matches the source code in the module. It adds any missing modules necessary to build the current module's packages and dependencies, and it removes unused modules that don't provide any relevant packages. It also adds any missing entries to go.
go mod tidy
```

```Using for purposes of Unit Testing and Microbenchmark.
go test
```

```A static analyzer looks for possible errors in the code
go vet
```

```Using for code formatting
go fmt
```

```To display documents or serve them over HTTP
godoc
```

```To rename variables, functions, etc
gorename
```

```It provides the possibility of calling C language codes within Go codes
cgo
```

```It is used to convert Go codes to assembly
asm
```

```Helps build, test, deploy and distribute code
dist
```

```It detects the use of old APIs in the application and replaces them with new APIs
fix
```

```Converts the output of Go tests to Jason format
test2json
```

```A simplified version of the ar utility on Unix
pack
```

```It separates executable files
objdump
```

```Tracks trace files
trace
```

```Formats your code as per the Go recommendations
gofmt
```

##############################################################################
# Programming
##############################################################################
1- Create a file, name (hello.go)
2- Update it with below code
3- go run hello.go
4- The rsult would print "Hello"

```
package main
import "fmt"
import r "math/rand"
func main() {
	fmt.Println("Hello",r.Int())
}
```

##############################################################################
# Variable & Constants
##############################################################################

```
var msg string                     #Decleration
msg = "Hello"
msg := "Hello"                     #Short with type inference
const Pi = 3.14159                 #Constants
ip, port := "127.0.0.1", "8080"
fmt.Println(ip + ":" + port)
```

##############################################################################
# Types
##############################################################################

```
str := "String"
str := `Multiline String`
num := 3 
num := 3.                          #Float64
num := 3 + 4i                      #Complex128
var c rune = '♬'                  #UTF-8
num := byte('A')                   #byte/uint8
fmt.Printf("%T\n", i)              #Byte/uint8
s := reflect.TypeOf(i).String()
type Weight float64                #Custom
w := Weight(70)                    #Conversation
```
##############################################################################
# Pointers
##############################################################################

```
var pi *int = &i                   #Point to i
p := &i                            #Point to i
*p = *p * 2                        #Dereferencing
ps.x == (*ps).x                    #Equivalent 
```

##############################################################################
# Arrays
##############################################################################

var a [5]int                      #Fixed Size
a[0] = 3                          #Assignment
a := [...]int{1,3:2,3,6:-1}
var a [2][3]int
pa := *[32]byte{}


##############################################################################
# Slices
##############################################################################

var s []int                      #Dynamic Size
s := []int {1,2,3}
s := []byte("Hello")
s := make([]string, 3)
s = append(s, "d", "e")
c := make([]string, len(s))
copy(dst, src)
x := s[2:5]                     #Elem. 2,3,4
y := s[:5]                      #Elem. < 5

##############################################################################
# Maps
##############################################################################

m := make(map[string]int)
m["key1"] = 42
fmt.Println("map: ", m)
m := map[string]int{"foo": 1,
"bar": 2}                       #Initialize
v := m["key1"]
_, contains := m["key2"]
length := len(m)
delete(m, "key1")


##############################################################################
# Loops
##############################################################################

for i := 0; i < 10; i++ {/**/}
for i <= 3 { i = i + 1 }
for {/**/ continue /**/ break}

##############################################################################
# Ranges
##############################################################################

s := []string{"a", "b", "c"}
for idx, val := range s {/**/}
m := map[string]int{"a": 1}
for k, v := range m {/**/}

##############################################################################
# Conditionals
##############################################################################

if d == "Sun" || d == "Sat" {
} else if d == "Mon" && foo() {
} else if _, err := f();
err != nil {
} else {/**/}

##############################################################################
# Switches
##############################################################################

switch time.Now().Weekday() {
	case 0:
	fallthrough
	case 1: fmt.Println("Weekend")
	default: fmt.Println("Workday")
}

##############################################################################
# Functions
##############################################################################

func add(a int, b int) float64 {
	return float64(a + b) 
}
func tuple() (int, int) {
	return 4, 2 
}
x, y := tuple()
func fvar(nums ...int) {/**/}

##############################################################################
# Closures & Lambdas
##############################################################################

func adder() func(int) int {
sum := 0
	return func(x int) int {
		sum += x
		return sum 
	}
}
myLambda := func() bool {/**/}

##############################################################################
# Defer
##############################################################################

file, err := os.Create("foo")
if err != nil {
	return err
}
defer func() { file.Close() }()

##############################################################################
# Structs & Methods
##############################################################################

type Person struct {
	name string
	age int
}
func (p *Person) Aging(y int) {
	p.age = p.age + y
}
p := Person{name: "Bob", age: 4}
p.age = 30
p.Aging(1)

##############################################################################
# Interfaces
##############################################################################

type geometry interface {
	area() float64
	perim() float64
}
func (r rect) area() float64 {}
func (r rect) perim() float64 {}
func measure(g geometry) {}
r := rect{width: 2, height: 4}
measure(r)

##############################################################################
# Concurrency
##############################################################################

func f(c chan int) {}
c := make(chan int)
cb := make(chan int, bufferLen)
go func() {
fmt.Println(<-c)
}()
c <- 2                                         #Send 2 to c
x, y := <-c, <-c                               #Recv from c
close(c)                                       #Close Chan
select { case c <- x: /**/
case <-quit: return }

##############################################################################
# Sync
##############################################################################

var mu sync.Mutex.Lock();.Unlock();once.Do(f)   #Sync.Once
var wg sync.WaitGroup.Add(int);.Done();.Wait()










