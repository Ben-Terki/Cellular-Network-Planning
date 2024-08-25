clear 
close all
clc
syms k;
N = 50;
A = 0.1:0.1:100;
for i = 1:length(N)
 for j = 1:length(A)
 
 B(i,j) = 
double((A(j)^N(i)/factorial(N(i)))/(symsum(A(j)^
k/factorial(k),k,0,N(i))));
 
 end
