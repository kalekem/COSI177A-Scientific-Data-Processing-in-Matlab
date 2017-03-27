function flip = flipvec(vec)

[r, c] = size(vec);

if r ==1 && c>1
    flip = fliplr(vec);
   % fprintf('%d is a column vector!\n', flip);
elseif r>1 && c==1
    flip = flipud(vec);
   % fprintf('%d is a row vector!\n', flip);
else
    disp('Scalar');
end
end