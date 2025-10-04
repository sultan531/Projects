% Name : Sultan ibrahim 
% Id : 442016618
clear, clc 
%Q1
x = -6 : 0.01:6;
y = 0.1*x.^5 - 0.2*x.^4 - x.^3 + 5*x.^2 - 41.5*x + 235;
plot(x,y);

%Q2
p1 = [-1 0 5 -1];
p2 = [1 2 -16 5];
result = conv(p1,p2);

%Q3
numerator = [-10 20 -5 9 7 10 -3 8 11 -3];
denominator = [2 4 -1];
[quotient, remainder] = deconv(numerator, denominator);
disp('Quotient:');
disp(quotient);
disp('Remainder:');
disp(remainder);