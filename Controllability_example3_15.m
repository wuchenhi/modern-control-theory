%例题3-15
b=[1;1;0];
A=[0 0 -1;1 0 -3;0 1 -3];
M=[b,A*b,A*A*b]
rank(M)%能控性判断，不能控
R1=b;
R2=A*b;
R3=[0;0;1];%不唯一，只要非奇异即可
Rc=[R1 R2 R3]%非奇异变换阵
%另一种取法
% R3=[1;0;1];
% Rc=[R1 R2 R31];
AA=inv(Rc)*A*Rc;
BB=inv(Rc)*b；
%二维能控2型系数
AA(1:2,1:2)
BB(1:2)
