function vec = vecNum(v, n)

vec = v >n;
v(vec);
disp(v(vec));
%{
for i = 1: length(v)
    if v(i)>n
        fprintf('%d is greater than %d\n', v(i), n);
    else
        fprintf('%d is less than %d\n', v(i), n);
    end
end
%}
end
