clear all
close all
clc
for j=1:3
    N=10^j;
    t=[0:0.01:10];
    signal=zeros(1,size(t,2));
    for i=1:N-1
        harmonics(i,:)=(2*(1-(-1)^i)/(pi*i))*(sin(pi*i*t/1));
        signal=signal+harmonics(i,:);
    end
    subplot(3,1,j),plot(t,real(signal))
%     subplot(3,1,j),plot(t,imag(signal))
end
