m = 1;
k= 1;
c=0.1;
A = [0 1; -k/m -c/m];
B = [0; 1/m];
C=[1 0];
D=0;

P = [-2];
S = smcplace(A,B,P);

K1 = 5;
