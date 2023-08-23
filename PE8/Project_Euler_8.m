clear,clc
load num.mat
skele = ones((length(num)-13),1);
for i = 1:(length(num)-13)
    skele(i,:) = skele(i,:).*str2double(num(i:(i+12)));
end
num2str(skele);