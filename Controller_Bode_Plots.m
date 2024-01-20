% Bode Plots of PI-, PD-, PID-, Lead-, Lag-Controller
close all
clear
clc

s = tf("s");

k_P = 1;
k_I = 1;
k_D = 1;

% PI
PI = (k_P * s + k_I) / s;
figure(1)
bode(PI);
title("Bode Plot of a PI-Controller")

% PD
PD = k_P + k_D * s;
figure(2)
bode(PD)
title("Bode Plot of a PD-Controller")

% PID
PID = (k_P * s + k_I + k_D * s*s) / s;
figure(3)
bode(PID)
title("Bode Plot of a PID-Controller")

% Lead (0 < a < b)
a = 1;
b = 10;
T_Lead = (s/a + 1) / (s/b + 1);
figure(4)
bode(T_Lead)
title("Bode Plot of a Lead-Controller")

% Lag (0 < b < a)
a = 10;
b = 1;
T_Lag = (s/a + 1) / (s/b + 1);
figure(5)
bode(T_Lag)
title("Bode Plot of a Lag-Controller")