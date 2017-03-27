%{
    Name: Cleophas Kalekem
    Date: 3/9/2017
    Instructor: Praveen Chaturvedi
%}

%{
Q1: A program that determines whether the conditions for a blizzard
snowstorm were met
 
The program generates the data randomly. So if you run it again, you'll get
different results both for day 1 and day 2
%}

%Create the sample storm data for day 1 - generated randomly
time = (1:24)'; %creates the 24 lines, one for each hour of the day
windSpeed = randi([-20 60], 24, 1); %randomly generates wind speed data
visibility = randi([5 400], 24, 1)/100; %random visibility data
day1data = [time windSpeed visibility];

save stromtract.dat day1data -ascii %writes the data to a file
clear %clear the workspace

load stromtract.dat; %load/read the data to the workspace

%check the storm data to see the conditions for blizzard were met
day1= 'Day 1'; %data for day 1
fprintf('%s\n', day1);
[hr,row, col] = size(stromtract);
bliz= 0;
for b = 1:hr
    if stromtract(b,2)>=30 && stromtract(b,3) <= 0.5
        bliz = 1; 
        fprintf('Blizzard conditions met! Hour: %d, Wind: %.2f mph, Visibility: %.2f miles\n', b, stromtract(b,2), stromtract(b,3));
    end
    %if the wind speed or visibility is less than 0, then the data is
    %illegal
     if stromtract(b,2)<0 || stromtract(b,3) <0
        fprintf('Illegal data on line %d \n',b);
     end
 end
 
 if bliz == 0
     disp('Blizzard conditions not met');
 end
 
 fprintf('\n');
 
%Create the sample storm data for day 2 - generated randomly
timeDay= (1:24)'; %creates the 24 lines, one for each hour of the day
windSpeed = randi([-5 50], 24, 1); %randomly generates wind speed data
visi= randi([10 300], 24, 1)/100; %random visibility data
day2data = [timeDay windSpeed visi];

save stromtract2.dat day2data -ascii %writes the data to a file
clear %clear the workspace

load stromtract2.dat; %load/read the data to the workspace

%check the storm data to see the conditions for blizzard were met
day2 = 'Day 2'; %data for day 2
fprintf('%s\n', day2);
[time, r, c] = size(stromtract2);
bliza = 0;
for i = 1:time
    if stromtract2(i,2)>=30 && stromtract2(i,3) <= 0.5
        bliza = 1; 
        fprintf('Blizzard conditions met! Hour: %d, Wind: %.2f mph, Visibility: %.2f miles\n',i, stromtract2(i,2), stromtract2(i,3));
    end
    %if the wind speed or visibility is less than 0, then the data is
    %illegal
     if stromtract2(i,2)<0 || stromtract2(i,3) <0
        fprintf('Illegal data on line %d \n', i);
     end
end
 
 if bliza == 0
     disp('Blizzard conditions not met');
 end
 

        
            
        
 




    
    

