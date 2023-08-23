clear,clc
n = 1; %create your initial iterator 
p = []; %create an empty set for primes 
while length(p) < 10001 %break while loop once the length of prime numbers exceeds 10001 (we want to index the 10001st prime)
    p = primes(n*1000); %create a list of primes up to the defined upper bound n * 1000 (this number is arbitrary, only need to generate a list of 10001 primes)
    n = n+1; %iterator 
end
display(p(10001)) %display the prime we are interested in 
