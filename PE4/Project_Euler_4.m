clear,clc
upperlim = 999; % Highest 3 digit number
ttable = (100:upperlim).*(100:upperlim)'; % Make the max 3 digit times table 
ttable = sort(ttable(:)); % Convert to a column vector and sort in ascending order
ttable = num2str(ttable)-'0'; % Break the number into 6 characters, creating a N x 6 matrix of the list
ttable13 = ttable(:,1:3); % Index the first 3 digits of the 3 dig x 3 dig number 
ttable46 = ttable(:,4:6); % Index the last 3 digits
ii = length(ttable); % Find where to start iterating in descending order 

while ~isequal(ttable13(ii,:),flip(ttable46(ii,:))) % Loop until the first 3 digits match the flip of the last 3 digits (indicating a palindrome)
    ii = ii-1; % Iterate in descending, since we want to find largest number from our existing list 
end
disp(ttable(ii,:)) % Index and display the row where the conditionals are met (display largest palindrome)



    