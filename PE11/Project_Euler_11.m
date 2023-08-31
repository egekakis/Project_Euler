clear, clc
tic
load grid %Stored the grid as a variable, loaded here 
grid = padarray(grid,[3 3],0,'both'); %Padding the array with zeros to avoid incorrect indexing 
sz = size(grid); %Storing size of the 20x20 as a var 
digiArray = []; %Preallocating the array of sequential digits
counter = 1; %Counter for indexing digiArray
for i = 99:-1:90 %Arbitrary For loop cutoff at 90
idx = find(grid==i); %Find the index of number i in the grid
[row,col] = ind2sub(sz,idx); %Convert the index into row col coordinates 
    for ii = 1:length(col) %Indexing and storing all digit combinations in digiArray
    digiArray(counter,:) = [grid(row(ii),col(ii)-3),grid(row(ii),col(ii)-2),grid(row(ii),col(ii)-1),grid(row(ii),col(ii))]; %Left to Right 
    digiArray(counter+1,:) = [grid(row(ii),col(ii)-2),grid(row(ii),col(ii)-1),grid(row(ii),col(ii)),grid(row(ii),col(ii)+1)];
    digiArray(counter+2,:) = [grid(row(ii),col(ii)-1),grid(row(ii),col(ii)),grid(row(ii),col(ii)+1),grid(row(ii),col(ii)+2)];
    digiArray(counter+3,:) = [grid(row(ii),col(ii)),grid(row(ii),col(ii)+1),grid(row(ii),col(ii)+2),grid(row(ii),col(ii)+3)];
    digiArray(counter+4,:) = [grid(row(ii)-3,col(ii)),grid(row(ii)-2,col(ii)),grid(row(ii)-1,col(ii)),grid(row(ii),col(ii))]; %Up to Down 
    digiArray(counter+5,:) = [grid(row(ii)-2,col(ii)),grid(row(ii)-1,col(ii)),grid(row(ii),col(ii)),grid(row(ii)+1,col(ii))];
    digiArray(counter+6,:) = [grid(row(ii)-1,col(ii)),grid(row(ii),col(ii)),grid(row(ii)+1,col(ii)),grid(row(ii)+2,col(ii))];
    digiArray(counter+7,:) = [grid(row(ii),col(ii)),grid(row(ii)+1,col(ii)),grid(row(ii)+2,col(ii)),grid(row(ii)+3,col(ii))];
    digiArray(counter+8,:) = [grid(row(ii)-3,col(ii)-3),grid(row(ii)-2,col(ii)-2),grid(row(ii)-1,col(ii)-1),grid(row(ii),col(ii))]; %Main Diagonal 
    digiArray(counter+9,:) = [grid(row(ii)-2,col(ii)-2),grid(row(ii)-1,col(ii)-1),grid(row(ii),col(ii)),grid(row(ii)+1,col(ii)+1)];
    digiArray(counter+10,:) = [grid(row(ii)-1,col(ii)-1),grid(row(ii),col(ii)),grid(row(ii)+1,col(ii)+1),grid(row(ii)+2,col(ii)+2)];
    digiArray(counter+11,:) = [grid(row(ii),col(ii)),grid(row(ii)+1,col(ii)+1),grid(row(ii)+2,col(ii)+2),grid(row(ii)+3,col(ii)+3)];
    digiArray(counter+12,:) = [grid(row(ii)+3,col(ii)-3),grid(row(ii)+2,col(ii)-2),grid(row(ii)+1,col(ii)-1),grid(row(ii),col(ii))]; %Opposite Diagonal
    digiArray(counter+13,:) = [grid(row(ii)+2,col(ii)-2),grid(row(ii)+1,col(ii)-1),grid(row(ii),col(ii)),grid(row(ii)-1,col(ii)+1)];
    digiArray(counter+14,:) = [grid(row(ii)+1,col(ii)-1),grid(row(ii),col(ii)),grid(row(ii)-1,col(ii)+1),grid(row(ii)-2,col(ii)+2)];
    digiArray(counter+15,:) = [grid(row(ii),col(ii)),grid(row(ii)-1,col(ii)+1),grid(row(ii)-2,col(ii)+2),grid(row(ii)-3,col(ii)+3)];
    counter = counter+16;
    end
end
max(prod(digiArray,2)) %computes the product of all columns in the array, then finds the max value 
toc