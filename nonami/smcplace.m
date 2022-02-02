A = [1 1 0;0 2 1;0 0 2];
B = [0 0 1]';

A11 = [1 1; 0 2];
A12 = [0 1]';
A21 = [0 0];
A22 = 2;

disp('Input two desired eigenvalues');
disp('Recommended values: lambda1=-3, lambda2=-4');
Rp1 = input('Rp1=');
Ip1 = input('Ip1=');
Rp2 = input('Rp2=');
Ip2 = input('Ip2=');
p = [Rp1+Ip1*sqrt(-1) Rp2+Ip2*sqrt(-1)];
K = place(A11, A12, p);

S2 = eye(1);
disp('Hyperplane vector');
S = S2*[K eye(1)];



