function [a, s] = myRand (low, high)
a = low + rand(3, 4)*(high-low);
s = sumAllElements(a);

end
    function summa = sumAllElements(M)
    global v; %Don't use them
    v = M(:);
    summa = sum(v);
end
