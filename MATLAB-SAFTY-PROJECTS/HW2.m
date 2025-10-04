i% Name : Sultan ibrahim 
% Id : 442016618
clear, clc 
%Q1
C = [1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5, 9.6, 9.1, 8.6, 8.1, 7.6, 7.1, 6.6, 6.1];
D = reshape(C, 4, 4)';

Da = [D(1, :), D(3, :)];

Db = [D(:, 2); D(:, 4)];

De = [D(1, 1:2), D(3:5, 2)', D(4, 1:3)];
%Q2
A = [1,-3,5;2,2,4;-2,0,6];
B = [0,-2,1;5,1,-6;2,7,-1];
C = [-3,4,-1;0,8,2;-3,5,3];
A_plus_B = A + B;
B_plus_A = B + A;
disp('A + B:');
disp(A_plus_B);
disp('B + A:');
disp(B_plus_A); 

A_plus_B_plus_C = A + (B + C);
A_plus_B_plus_C2 = (A + B) + C;
disp('A + (B + C):');
disp(A_plus_B_plus_C);
disp('(A + B) + C:');
disp(A_plus_B_plus_C2);

three_A_plus_C = 3 * (A + C);
three_A_plus_three_C = 3 * A + 3 * C;
disp('3(A + C):');
disp(three_A_plus_C);
disp('3A + 3C:');
disp(three_A_plus_three_C);

A_times_B_plus_C = A * (B + C);
A_times_B_plus_A_times_C = A * B + A * C;
disp('A * (B + C):');
disp(A_times_B_plus_C);
disp('A * B + A * C:');
disp(A_times_B_plus_A_times_C);

%Q3
A = [4,3,1;5,6,-2;2,-5,4.5];
B = [-18.2;-48.8;92.5];
X = A\B;
disp(X);
%10.6515 
%-18.6392
%-4.887