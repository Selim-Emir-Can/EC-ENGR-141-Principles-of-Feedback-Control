syms s K;
t = 0:0.0001:10;
s = tf('s');
sys = ((s^2+4)/(s*(s^2+1)));
sys1 = (s+2)/(s^2*(s+10)*(s^2+6*s+10)); 
figure(1);
bode(sys);
figure(2);
bode(sys1);
figure(3);
margin(1/(10*(s/10+1)*(s+1)^2));
figure(4);
rlocus(1/(10*(s/10+1)*(s+1)^2));
figure(5);
sys33 = (1/(s+2)) * (1/(s^2 + 9));
margin(sys33);
figure(6);
rlocus(sys33);

