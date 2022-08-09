tic % Timer
fibonacci = [1 2]; % Establishes the first 2 numbers of the Fibonacci sequence
i = 2; % Starting point (first even number)
answer = 2; % The second term that was established, 2, is itself even
while(fibonacci(i)<4e6) % Sets a condition to terminate the while loop at the upper bound of 4mil
    i = i+1; % Counts the sequence  increment 
    fibonacci(i) = fibonacci(i-1) + fibonacci(i-2); % Indexes the n-1 and n-2 terms and adds them (per the Fibonacci sequence)                                                                  
    if mod(fibonacci(i),2)==0 % Determines if the number can be divided by 2 with no remainder (modulo arithmetic to define even numbers)
        answer = answer+fibonacci(i); % Sequentially adding even numbers to the variable "answer"
    end
end
disp(answer) % Displays the answer 
toc % End Timer 

