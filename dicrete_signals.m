% discrete_signals_fixed_sinc.m
clc; clear; close all;

%% common time ranges
n = -10:10;        % For impulse, step, ramp, exponential, signum
n_sinc = -30:30;   % Wider range for sinc

%% signals (Figure 1)
impulse = double(n==0);
u = double(n>=0);
r = n .* (n>=0);
a = 0.9;
x_exp = (a.^n) .* (n>=0);
sgn = sign(n);

%% Plot Figure 1 
figure(1);

% Impulse
subplot(3,2,1);
stem(n, impulse, 'filled');
title('Discrete time unit impulse signal');
xlabel('discrete time n ---->'); ylabel('amplitude --->');
axis([-10 10 0 1.2]); grid on;

% Step
subplot(3,2,2);
stem(n, u, 'filled');
title('Unit step sequence');
xlabel('discrete time n ---->'); ylabel('amplitude --->');
axis([-10 10 0 1.2]); grid on;

% Ramp
subplot(3,2,3);
stem(n, r, 'filled');
title('Unit ramp sequence');
xlabel('discrete time n ---->'); ylabel('amplitude --->');
axis([-10 10 0 10]); grid on;

% Exponential
subplot(3,2,4);
stem(n, x_exp, 'filled');
title('discrete time exponential signal');
xlabel('discrete time n ---->'); ylabel('amplitude --->');
axis([-10 10 0 6]); grid on;

% Signum (span bottom row)
subplot(3,2,[5 6]);
stem(n, sgn, 'filled');
title('discrete time signum function');
xlabel('discrete time n ---->'); ylabel('amplitude --->');
axis([-10 10 -1.2 1.2]); grid on;

%% ---------------- Figure 2 
% Choose scaling factor alpha to control zeros spacing. alpha=4 -> zeros at n = ±4, ±8, ...
alpha = 4;   

% scaled discrete sinc: sin(pi*(n/alpha)) / (pi*(n/alpha))
sinc_dt = sin(pi * (n_sinc ./ alpha)) ./ (pi * (n_sinc ./ alpha));
sinc_dt(n_sinc == 0) = 1;   % define sinc(0) = 1

figure(2);
stem(n_sinc, sinc_dt, 'filled');
title('discrete time sinc function');
xlabel('discrete time n ---->'); ylabel('amplitude --->');
axis([-30 30 -0.4 1.0]); grid on;
