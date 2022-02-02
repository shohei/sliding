function S=smclqr(A,B,Q)

[~,Bcol] = size(B);
[~,Acol] = size(A);
A11 = A(1:Acol-Bcol,1:Acol-Bcol);
A12 = A(1:Acol-Bcol,Acol-Bcol+1:Acol);
Q11 = Q(1:Acol-Bcol,1:Acol-Bcol);
Q12 = Q(1:Acol-Bcol,Acol-Bcol+1:Acol);
Q22 = Q(Acol-Bcol+1:Acol, Acol-Bcol+1:Acol);

A11bar= A11-A12*inv(Q22)*Q12';
[~,P]=lqr(A11bar, A12, Q11, Q22);
S = [A12'*P+Q12' Q22];

end