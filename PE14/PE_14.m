clear, clc;
tic
collatz_length = []; %preallocating collatz matrix
i = 1; %set for counter
for n = 1000000:-1:700000 %iterate from max, subtracting 1, to arbitrary min 
    f(1) = n; %start at first iteration 
    ii = 1; %set while counter 
    while f(ii) > 1 %collatz sequence ends at 1, so iterate until within f until 1 is reached
        if rem(f(ii),2) == 0 %determining if number is even
            f(ii+1) = f(ii)*.5; %even piecewise for collatz
        else
            f(ii+1) = 3*f(ii)+1; %odd piecewise for collatz
        end
        ii = ii + 1; %iterate while counter
    end
    i = i + 1; %iterate for counter
    collatz_length(i,:) = [n,ii]; %matrix to store number tested, and length of collatz sequence 
end
[M,I] = max(collatz_length(:,2)); %index largest sequence 
collatz_length(I,:) %index number with largest sequence 
toc