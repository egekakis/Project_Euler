clear,clc
ref_vec = (1:1:100); %create a reference vector of natural numbers from 1-100
sumsq = sum(ref_vec.^2); %square all elements of the reference vector and sum all columns into one value
sqsum = sum(ref_vec)^2; %sum all elements of the reference vector and square the value
diff = sqsum - sumsq %find the difference of the two operations