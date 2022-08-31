close all;
clear all;
clc;

%% Problem 3.32)
% part c)

syms s;
K = 3.02;
t = 0:0.0001:10;
H = tf([K], [1 2 K]);
step_response = step(H, t);

% Finding Mp
step_response_ss = dcgain(H);
Mp = (max(step_response) - step_response_ss)*100;
Overshoot = sprintf('Max Mp = %3.2f%%', Mp);

% Finding tp

max_t = max( find(step_response == max(step_response)) );
t_max_step_response = t(max_t);
Peaktime = sprintf('Peak time = %3.2fsec', t_max_step_response);

figure(1);
plot(t, step_response);
xlabel('Time (sec)');
ylabel('y(t)');
title('Step Response with K = 3.02');
grid on;
% Info
text(2, 0.4, Overshoot);
text(2, 0.3, Peaktime);


%% Problem 3.36)
% part e)

% t = 0:0.0001:10; already defined
J = 600000;
B = 20000;
hold on;

K1 = 200;
t1 = 0:0.1:400;
    H_transfer1 = tf([(K1/J)], [1 (B/J) (K1/J)]);
    step_r1 = step(H_transfer1, t1);
    
    % Finding Mp
    step_r_ss1 = dcgain(H_transfer1);
    Mp1 = (max(step_r1) - step_r_ss1)*100;
    Overshoot1 = sprintf('Max Mp = %3.2f%%', Mp1);
    
    % Finding tr
    
    % min_t1 = max( find(step_r1 == (0.1*step_r_ss1)) ); 
    % max_t1 = max( find(step_r1 == (0.9*step_r_ss1)) );
    % tr1 = max_t1 - min_t1;
    % code didn't work had to do it manually
    tr1 = t1(1899) - t1(288);
    Risetime1 = sprintf('Rise time = %3.2fsec', tr1);
    
    figure(2);
    plot(t1, step_r1);
    xlabel('Time (sec)');
    ylabel('y(t)');
    title(sprintf('Step Response with K = %3.2f', K1));
    grid on;
    % Info
    text(100, 0.4, Overshoot1);
    text(100, 0.3, Risetime1);


K2 = 400;
t2 = 0:0.1:400;
    H_transfer2 = tf([(K2/J)], [1 (B/J) (K2/J)]);
    step_r2 = step(H_transfer2, t2);
    
    % Finding Mp
    step_r_ss2 = dcgain(H_transfer2);
    Mp2 = (max(step_r2) - step_r_ss2)*100;
    Overshoot2 = sprintf('Max Mp = %3.2f%%', Mp2);
    
    % Finding tr
    
    % min_t2 = max( find((step_r2 == (0.1*step_r_ss2))) ); 
    % max_t2 = max( find((step_r2 == (0.9*step_r_ss2))) );
    % tr2 = max_t2 - min_t2;
    % code didn't work had to do it manually
    
    tr2 = t2(958) - t2(195);
    Risetime2 = sprintf('Rise time = %3.2fsec', tr2);
    
    figure(3);
    plot(t2, step_r2);
    xlabel('Time (sec)');
    ylabel('y(t)');
    title(sprintf('Step Response with K = %3.2f', K2));
    grid on;
    % Info
    text(100, 0.4, Overshoot2);
    text(100, 0.3, Risetime2);
    
K3 = 1000;
t3 = 0:0.1:400;
    H_transfer3 = tf([(K3/J)], [1 (B/J) (K3/J)]);
    step_r3 = step(H_transfer3, t3);
    
    % Finding Mp
    step_r_ss3 = dcgain(H_transfer3);
    Mp3 = (max(step_r3) - step_r_ss3)*100;
    Overshoot3 = sprintf('Max Mp = %3.2f%%', Mp3);
    
    % Finding tr
    
    % min_t3 = max( find((step_r3 == (0.1*step_r_ss3))) ); 
    % max_t3 = max( find((step_r3 == (0.9*step_r_ss3))) );
    % tr3 = max_t3 - min_t3;
    % code didn't work had to do it manually
    
    tr3 = t3(481) - t3(119);
    Risetime3 = sprintf('Rise time = %3.2fsec', tr3);
    
    figure(4);
    plot(t3, step_r3);
    xlabel('Time (sec)');
    ylabel('y(t)');
    title(sprintf('Step Response with K = %3.2f', K3));
    grid on;
    % Info
    text(100, 0.4, Overshoot3);
    text(100, 0.3, Risetime3);
    
K4 = 2000;
t4 = 0:0.1:400;
    H_transfer4 = tf([(K4/J)], [1 (B/J) (K4/J)]);
    step_r4 = step(H_transfer4, t4);
    
    % Finding Mp
    step_r_ss4 = dcgain(H_transfer4);
    Mp4 = (max(step_r4) - step_r_ss4)*100;
    Overshoot4 = sprintf('Max Mp = %3.2f%%', Mp4);
    
    % Finding tr
    
    % min_t4 = max( find((step_r4 == (0.1*step_r_ss4))) ); 
    % max_t4 = max( find((step_r4 == (0.9*step_r_ss4))) );
    % tr4 = max_t4 - min_t4;
    % code didn't work had to do it manually
    
    tr4 = t4(310) - t4(83);
    Risetime4 = sprintf('Rise time = %3.2fsec', tr4);
    
    figure(5);
    plot(t4, step_r4);
    xlabel('Time (sec)');
    ylabel('y(t)');
    title(sprintf('Step Response with K = %3.2f', K4));
    grid on;
    % Info
    text(100, 0.4, Overshoot4);
    text(100, 0.3, Risetime4);
    
    hold off;

