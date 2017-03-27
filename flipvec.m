function flip = flipvec(vec)

[r c] = size(vec);
if (r ==1 && c > 1)
    flip = fliplr(vec);
elseif (r > 1 && c ==1 )
    flip = flipud(vec);
else
    flip = vec;
end
end


        
    
    
    
    