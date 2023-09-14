clear,clc
tic
n = 1; % Counter for while loop break (number of divisors)
a = 100; % Arbitrary starting value for triangle number variable
triNum=1; % Pre-allocating a triNum variable
while n < 500 % While loop to break when number of divisors exceeds 500
a = a+1; % Incrementing value to test
%a = fix(a);
triNum = a/2*(a+1); % Calculating triangle number from test value 
n = length(divisors(triNum)); % Testing triNum for amount of divisors - contributing to while loop break 
end
(a/2)*(a+1) % Displaying the triangle number that breaks the while loop 
toc