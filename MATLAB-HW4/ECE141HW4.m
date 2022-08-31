clear all;
clf;
clc;

syms s;
t = 0:0.001:5;
H = tf([2000],[1 12 2020]);
step_response = step(H, t);

figure(1);
plot(t, step_response);
xlabel('Time (sec)');
ylabel('y(t)');
title('Step Response at K = 10');
grid on;