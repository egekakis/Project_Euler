clear,clc
tic
load num.mat %loaded in the 1000 digit # from .mat file 
skele = ones((length(num)-13),1); %creates an array of ones equal to the amount of 13 digit sequences possible in a 1000 digit number
for i = 1:(length(num)-13) %iterating over the length of possible 13 digit sequences 
    skele(i,:) = skele(i,:).*str2double(num(i:(i+12))); %converts the imported number to a double from string, sorts into 13 digit sequences and appends to ones array
end
ID = skele > 1e12; %removes all numbers that start with '0' (needed because of string import)
skele = skele(ID);
skele = num2str(skele); %converts char array back to string 
skin = ones(length(skele),1);
for ii = 1:(length(skele))
    skin(ii,:) = prod(skele(ii,:)-'0'); %uses product function to multiply all digits in the 13 digit sequence
end
disp(max(skin)) %finds largest value in array and displays 
toc