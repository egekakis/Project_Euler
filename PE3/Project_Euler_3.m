tic % Start Timer 
root = 600851475143; % Root number we are testing 
ii = 2; % First prime number to test 
prime = 2; % Preallocate prime variable
while root ~= 1 % Once root is divided down to 1 (ending the prime factor tree), stop and display the prime
    while mod(root,ii) ~=0 % Once the first prime factor of root is found, end
        ii = ii+1; % Number of iterations will equal the first prime factor 
    end
    prime = ii; % Set first prime found 
    root = root/prime; % Divide by the found prime, set the new root number to prime factor
    ii = ii+1; % Increment ii to find the next prime factor of the new root
end
toc % End Timer
disp(prime) % Display your root 