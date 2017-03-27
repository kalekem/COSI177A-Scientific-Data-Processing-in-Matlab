function grade = lettergrade(grd)

if grd <0 || grd >10
    grade = 'X';
    disp('Enter a number between 0 and 9');
end
switch(grd)
    case {9, 10}
        grade = 'A';
    case 8
        grade = 'B';
    case 7
        grade = 'C';
    case 6
        grade = 'D';
    otherwise
        grade = 'F';
end
end


        
        
        
        
        
        
        