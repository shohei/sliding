AF = [-2 1 0; 0 0 1; 0 0 1];
BF = [0 0 1]';
S = [1 2 1];

h = 0.02;
[A,B] = c2d(AF,BF,h);

X = [0.5 1.0 1.5]';
K = 10;

for i=1:250
    sigma = S*X;
    U = -inv(S*BF)*(S*AF*X)-K*sigma/norm(sigma);
    dX = A*X+B*U;
    Xh1(:,i) = X;
    Uh1(1,i) = U;
    Sh1(1,i) = sigma;
    X = dX;
end

clf;
tt = 0:h:(i-1)*h;
subplot(312)
plot(tt,Uh1);
grid;
xlabel('Time [s]');
ylabel('Control input [N]');
subplot(311);
plot(tt,Xh1(1,:),tt,Xh1(2,:),tt,Xh1(3,:));
grid;
xlabel('Time [s]');
ylabel('Displacement [m]');
subplot(313)
plot(tt,Sh1);
grid;
xlabel('Time [s]');
ylabel('Switching function');
clear tt Uh1 Xh1 Sh1;

big;
