function fib = fibo(n)

if n ==1 || n==2
    fib = 1;
    %fprintf('%d ', fib);
else
    fib = fibo(n-1) + fibo(n-2);
    fprintf('%d ', fib);
end
end
