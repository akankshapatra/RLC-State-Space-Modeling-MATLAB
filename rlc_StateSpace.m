clear; clc; close all;

% Circuit parameters
R = 10;          % Ohms
L = 0.1;         % Henry
C = 100e-6;      % Farads

% State-space matrices
A = [-R/L, -1/L; 
      1/C,    0];
B = [1/L; 
       0];
Cmat = [0, 1];
D = 0;

% State-space model
sys_ss = ss(A, B, Cmat, D);

% Time vector and responses
t = 0:1e-4:0.12;
[y, t_out, x] = step(sys_ss, t);

% Unit-step response (v_C)
figure;
plot(t_out, y, 'LineWidth', 1.2);
grid on;
title('RLC Unit-Step Response');
xlabel('Time (s)'); ylabel('Capacitor Voltage v_C(t) (V)');

% Inductor current trajectory
figure;
plot(t_out, x(:,1), 'LineWidth', 1.2);
grid on;
title('Inductor Current');
xlabel('Time (s)'); ylabel('i_L(t) (A)');

% Phase-plane portrait (i_L vs v_C)
figure;
plot(x(:,2), x(:,1), 'LineWidth', 1.2);
grid on;
title('Phase-Plane Portrait: i_L(t) vs. v_C(t)');
xlabel('Capacitor Voltage, v_C(t) (V)'); ylabel('Inductor Current, i_L(t) (A)');
