clc;
close all;
clear all;

% --- Input Section ---
tmin = input('The lower bound of theta in degree=');
tmax = input('The upper bound of theta in degree=');
pmin = input('The lower bound of phi in degree=');
pmax = input('The upper bound of phi in degree=');

% ASSIGN theta and phi and convert to radians
theta = (tmin:1:tmax) * (pi/180); 
phi = (pmin:1:pmax) * (pi/180);

% ASSIGN differential steps
dth = theta(2) - theta(1);
dph = phi(2) - phi(1);

% Create grid
[THETA, PHI] = meshgrid(theta, phi);

% WRITE INPUT COMMANDS for patterns
% Note: Using 's' in input to allow the user to type the formula (e.g., cos(THETA))
x_str = input('The field pattern : E(THETA,PHI)=', 's'); 
E = eval(x_str); % Evaluates the string as a command

v = input('The power pattern: P(THETA,PHI)=', 's');
Pn = eval(v); % This uses the power pattern directly

% --- Calculation ---
% According to the formula in your image: 
% Omega_A = Integral [ Pn(theta, phi) * sin(theta) d_theta d_phi ]
% We use a numerical summation for the discrete grid
Prad = sum(sum(Pn .* sin(THETA) * dth * dph));

% --- Output Section ---
fprintf('\n Input Parameters: \n-------------------- ');
fprintf('\n Theta = %2.0f', tmin);
fprintf(' : %2.0f', dth*180/pi);
fprintf(' : %2.0f', tmax);
fprintf('\n Phi = %2.0f', pmin);
fprintf(' : %2.0f', dph*180/pi);
fprintf(' : %2.0f', pmax);
fprintf('\n POWER PATTERN : %s', v);

fprintf('\n \n Output Parameters: \n-------------------- ');
% WRITE fprintf COMMAND for the final result
fprintf('\n BEAM AREA (steradians)=%3.2f\n', Prad);