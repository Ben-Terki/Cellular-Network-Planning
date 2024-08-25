clear
close
clc

N = 1:10;
alpha = 4.3;
R=1.5;
B_Sys=69.8*10^6;
B=200*10^3;
A_Sys = 2550;
A_Cell=(3*sqrt(3)*R^2)/2;
C_Clu=B_Sys/B;
C = (A_Sys*C_Clu)./(N.*A_Cell);
SIR = 10*log10(((sqrt(3*N)).^alpha)/6);

a=semilogy(N,C);
hold on
yyaxis left
ylabel('Capacity')
xlabel('Frequency Reuse Factor N')

grid on

yyaxis right
ylabel('SIR (dB)')
b=plot(N,SIR);
c=yline(18)
legend([a;b;c],'Capacity', 'SIR','QoS Threshold')
