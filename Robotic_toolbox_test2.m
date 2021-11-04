clear

L1=RevoluteMDH('d',0,'a',0,'alpha',0);
L2=RevoluteMDH('d',0,'a',0,'alpha',-1.5708);
L3=RevoluteMDH('d',150,'a',650,'alpha',0);
L4=RevoluteMDH('d',600,'a',200,'alpha',-1.5708);
L5=RevoluteMDH('d',0,'a',0,'alpha',1.5708);
L6=RevoluteMDH('d',0,'a',0,'alpha',-1.5708);
bot=SerialLink([L1 L2 L3 L4 L5 L6],'name','Example_IK');
q1=[0 -pi/2 0 -pi/2 pi/2 -pi/2];
q2=[0 pi/4 0 pi/8 -pi/4 0];
T1=bot.fkine(q1)
T2=bot.fkine(q2)