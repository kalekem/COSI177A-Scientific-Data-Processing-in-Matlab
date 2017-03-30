%{
Three operations on a file:
    - Read from
    - Write to - Writing to a file from the beginning
    - Append to - writing to a file by adding to 
     what's already there
%}

%{
    => Methods for reading from a file
        -load
        -save

=>The 'save' function is used to write 
data to a data file 
-if the file already exists the save function
 will overwrite the file
-save always begins writing from the beginning of a file


**save filename matrixvariablename  -ascii

%}

%{
A file can also be read into a matrix variable
    - The 'load' function will read from the file
      and create a matrix with the same name as the file
    
    - The load command works only if there are the same
       amount numbers in each line
%}











   
    