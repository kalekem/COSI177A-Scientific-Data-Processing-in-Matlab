balance = 1000; 
for year = 1:10 
for month = 1:12 
balance = balance * 1.01; 
end 
fprintf('%.2f \n', (balance)); 
end 