# Lex-analyzer-and-Syntax-Generator

Lexical Analyzer and Syntax Analysis Generator

In this project, we built lexical analyzer and a syntax analysis for high level language called MINI-L. The lexical analyzer takes as input a MINI-L source code, and output the lexical tokens associated with the program.

The MINI-L language description is described as follows:
1.	Integer scalar variables. 
2.	One-dimensional arrays of integers. 
3.	Assignment statements. 
4.	While loops. 
5.	If-then-else statements. 
6.	Read and write statements. 
7.	MINI-L language is case sensitive, all the key words such that if and while, etc are expressed in lower case
8.	A valid identifier must begin with a letter, maybe followed by additional letters, digits, or underscore, and cannot end in an underscore


Example 1 - 
program mytest;

  n : integer;
  i, j, k : integer;
  x, y, z : integer;

  t : array (100) of integer;

beginprogram	

  read n, i,j,x,y;

  if i<j and j<=n and i>=0 then
     t(i) := i;
     t(j) := j;
     k := t(i);
     t(i) := t(j);
     t(j) := t(i);
  else
     while  x > y or false loop
        k := (1+y - x)*n / 3 + x;
        x := x - 10;
        write k;
     endloop;
  endif;

  write i,j,x,y,t(i),t(j);

endprogram

Output :

Reserved Words
Program                  program
If                                   IF
then                         THEN
while                        WHILE
