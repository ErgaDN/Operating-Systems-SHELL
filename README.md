## Part A: File operations

In this part, there are two programs - copy, and cmp.
The names of the files indicate their purpose.

### Usage
1. Compile the programs using the following command:
```
gcc -Wall -g -o copy copy.c 

gcc -Wall -g -o cmp cmp.c
```

2. Run the programs (separately):

NOTE - there are flags can be used when running the program:

cmp:
	-v : print “equal” or “distinct”
	-i :  case insensitive
copy:
	-v : print “success” if the file is copied, or “target file exist” if this is the case, or “general failure” on some other problem
	-f : allows to overwrite the target file

examples for usage:
```
cmp <file1> <file2> -v -i

copy <file1> <file2> -v

```

## Part B:

In this part, there are shared libraries.
In order to utilize the libraries, there are two tools, named encode and decode. The tools get some text and convert it according to selected library

#### Usage

1.  Compile the libraries, using the following command:
```
gcc -shared -fPIC codecA.c -o codecA

gcc -shared -fPIC codecB.c -o codecB
```
2. Compile the tools:
```
gcc -Wall -g encode.c -o encode

gcc -Wall -g decode.c -o decode
```
3. Run the programs:

examples:
```
./encode codecA aaaBBB

./decode codecB asaWKW
```
## Part C - Basic Shell (stshell)
This is a simple shell script written in C language. It reads user input and executes commands entered by the user.  
The program has the following features:

* Execute simple commands
* Handle redirection of output to a file using '>' and '>>' symbols
* Handle piped commands using '|' symbol

#### Usage
1. Compile the program using the following command:
```
gcc -o stshell stshell.c && ./stshell
```
2. The program will start running and will display a prompt:
```
stshell$

```
3. Enter a command and press enter to execute it. The program will execute the command and display the output.
![image](https://user-images.githubusercontent.com/118682449/235350716-38770d7f-8ce8-46b8-941b-c3f6942cd626.png)
4. To exit the program press:
```
exit
```
![image](https://user-images.githubusercontent.com/118682449/235351119-16934f80-2459-4a43-8f37-6035ec7d3f5d.png)
