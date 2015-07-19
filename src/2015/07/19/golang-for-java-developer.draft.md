# Golang for Java developer
## Learn Go lang based on Java concepts
Go, Java, language, learnings

### Intro
[Golang](https://golang.org/) is a relatively new language, which is 6 years old and developed at Google. This posts aims at introducing Golang for Java developers.

### Golang and Java
* `Garbage collectors` are used to free unused memory in both languages.
* Both are `statically typed` languages.
* Java as well as Golang supports wide range of Operating systems and processors.
* Golang compiles to `binary` for the host machine unlike Java which produces `byte codes` for JVM.
* Golang compiler is extremely pedantic, complains about unused imports, variable declaration, etc., and fails compilation process, where as javac issues warnings for these and compiles successfully.
* Performance wise both Java and Go are comparable. Memory wise, Go is very efficient.
* In case, of Java, we have depend on lot of library jars, whereas Golang's library is huge and it covers most of the things required for the developer.

### Set up
    # Set up for Ubuntu
    sudo apt-get install golang
    sudo apt-get install golang-go.tools

### Comments
**Java** or **Go**

    // Single line commment
    /*
      Multiple
      line
      comment
    */

### Hello World

**Java**

    package main

    public static void main(String[] args){
        System.out.println("Hello World!");
    }

**Go**

    package main

    import "fmt"

    func main() {
      fmt.Println("Hello World!")
    }
