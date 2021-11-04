clear

L1=RevoluteMDH('d',0,'a',0,'alpha',0);
L2=RevoluteMDH('d',0,'a',0,'alpha',-1.5708);
L3=RevoluteMDH('d',150,'a',650,'alpha',0);
L4=RevoluteMDH('d',600,'a',200,'alpha',-1.5708);
L5=RevoluteMDH('d',0,'a',0,'alpha',1.5708);
L6=RevoluteMDH('d',0,'a',0,'alpha',-1.5708);
bot=SerialLink([L1 L2 L3 L4 L5 L6],'name','Example_IK');
T1=[0 1 0 600;0 0 -1 150;-1 0 0 800;0 0 0 1];
T3=[0 0.5 (2^0.5)/2 4;0 (3^0.5)/2 (2^0.5)/2 3;1 0 0 1;0 0 0 1];
%报错，因为T3是随意取的，不满足条件
q=bot.ikine(T3)