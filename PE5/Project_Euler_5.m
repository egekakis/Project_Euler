clear,clc
x = 2520; %can start at the smallest number mod 0 1:10 given by problem statement
divisor = (1:1:20); %create a vector for the 1-20 divisor criteria
bool = 1; %give the while loop a starting point by defining true BOOL

while bool > 0 
remain_vec = mod(x,divisor); %perform modulo operation between iterated number and divisor vector
bool = any(remain_vec); %assess vector of remainders for any integers greater than zero (a number greater than zero in remain_vec implies a remainder)
x = x+1; %iterate the number being assessed
end
disp(x-1) %displays the number that solves the while loop bool (subtract 1 since while loop will iterate once after finding correct value)