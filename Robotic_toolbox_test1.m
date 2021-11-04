clear

L1=RevoluteMDH('d',0,'a',0,'alpha',0);
L2=RevoluteMDH('d',0,'a',-30,'alpha',-pi/2);
L3=RevoluteMDH('d',0,'a',340,'alpha',0);
L4=RevoluteMDH('d',338,'a',-40,'alpha',-pi/2);
L5=RevoluteMDH('d',0,'a',0,'alpha',pi/2);
L6=RevoluteMDH('d',0,'a',0,'alpha',-pi/2);
bot=SerialLink([L1 L2 L3 L4 L5 L6],'name','Example_IK');
q=[21.8 -52.2 2.5 -130.3 -76.8 90];
qz=q*pi/180;
T=bot.fkine(qz)
qr=bot.ikine(T)