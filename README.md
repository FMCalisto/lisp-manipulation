# Lisp Manipulation

### Introduction to Common Lisp Manipulation

This is a short introduction to Common Lisp Manipulation.


## Preface

#### Practical classes 1 and 2 of Artificial Intelligence @ IST 

##### Bibliographical references: 
* Paul Graham, ANSI Common Lisp, Prentice Hall, 1996 Book with 
description of the Common-Lisp language. 

* António Leitão, Introduction to Lisp language. Available on the page 
chair. Leaves with partial description of the Common-Lisp language. 

* HyperSpec. Available in chair page. Detailed Common-Lisp language. 


Common-Lisp functions in a read-eval-print loop: reading 
expressions, evaluation of expressions, writing results. 

While reading an expression, the interpreter find a point 
semicolon (;), ignores the text to the end of the line. Meet # | ignores 
the text to | #.


## How to Load and Compile

```(load (compile-file “[file].lisp”))```


## Exercises

Expression evaluation is performed according to a set of rules, 
which are presented below in simplified form:

1. A list is represented as a sequence of pairs. Define a function 
which returns the last couple of sequence pairs that constitute a list (with cond).

2. Function that reverses a list using recursive process.

3. Returns the list of sublists of the list received as argument.


## Details about Lisp Enviroment

For changing line:

```
> (format t "~%")

NIL
```

> See description of the [Format](http://www.lispworks.com/documentation/lw50/CLHS/Body/f_format.htm) in [HyperSpec](http://www.lispworks.com/documentation/HyperSpec/Front/).

To load a source file for the Lisp environment:

```
(load <nome-ficheiro>)
```

For example:

```
> (load "projecto.lisp")

T
```

To compile a file:

```
> (compile-file "projecto")

#P"/Users/pedromatos/Desktop/projecto/projecto.fasl"

NIL

NIL
```

> Compilation should not identify warnings!

To load the last well compiled file:
```
> (load "projecto")

T
```


# Acknowledgements:

Ana Beatriz Alves ([@AnyaAlves](https://github.com/AnyaAlves))

Francisco Gonçalves

Bruno Oliveira ([@bruno-oliveira](https://github.com/bruno-oliveira))

