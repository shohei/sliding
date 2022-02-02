A = [0 0 1 0
    0 0 0 1
    0 -0.338 -16.261 0.002
    0 30.040 71.852 -0.192];

B = [0 0 28.727 -129.937]';

B1 = B(1:3,1);
B2 = B(4,1);
w = [1 0 0 0.01]';
W = diag(w);

bb = -B1*inv(B2);
T = [eye(3) bb
    zeros(1,3) 1];

As = T*A*inv(T);
Bs = T*B;
A11 = As(1:3, 1:3);
A12 = As(1:3, 4);
A21 = As(4, 1:3);
A22 = As(4, 4);
B1 = Bs(1;3, 1);
B2 = Bs(4, 1);
Q = T'*W*T;
Q11 = Q(1:3, 1:3);
Q12 = Q(1:3, 4);
Q21 = Q(4, 1:3);
Q22 = Q(4, 4);

Q1 = Q11-Q12*inv(Q22)*Q12';
R = inv(Q22);
AA = A11-A12*inv(Q22)*Q12';
BB = A12;
[K, P] = lqr(AA, BB, Q1, R);
S1 = A12'*P+Q12';
S2 = Q22;
disp('Hyperplane vector');
S = [S1 S2]
clear;


