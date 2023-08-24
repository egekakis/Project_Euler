clear,clc
tic
sum = 1000; %defining desired sum of sides from problem statement 
for a = 3:(sum-3/3) %smallest triple side length is 3 (starting iteration point), since a<b<c, we know that a ~> sum/3, set this as upper bound
    for b = (a+1):((sum-1-a)/2) %we know b>a, so starting iteration point is a+1, we know that b<c, so ending iteration point is (b+c-1)/2, 
        c = sum - a - b; %we can solve for c given a,b,sum 
        if c == sqrt(a^2 + b^2) %compare the iterated values satisfying a<b<c to the pythagorean triple rules sqrt(a^2 + b^2) = c
            a %print the values that satisfy this if statement 
            b
            c
        end
    end
end
toc
    