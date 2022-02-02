A = [1 1 0;0 2 1;0 0 2];
B = [0 0 1]';

Q = [1 0 0; 0 1 0; 0 0 1];
R = 1;
disp('desired stability range (recommended value is 1)');
epsilon = input('epsilon=');
Ae = A+epsilon*eye(3);
disp('Hyperplane vector');
S = lqr(ae, B, Q, R)
clear S;

