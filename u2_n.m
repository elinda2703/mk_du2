clc
clear
format long g

% Common parameters
proj = @gnom;
s0 = 0;
Du = 10 *pi/180;
Dv = Du;
du = pi/180;
dv = du;
M = 50000000;
R = 6380*1000;
R = R/M;

% Boundary points
u_alpha_s = 26.5651 *pi/180;
u_alpha_j = -u_alpha_s;
u_gamma_s = 52.6226 *pi/180;
u_gamma_j = -u_gamma_s;
u_delta_s = 10.8123 *pi/180;
u_delta_j = -u_delta_s;


% Face 1 - north
    % Input parameters
    % K11
    uk = pi/2;
    vk = 0;

    % Graticule
    umin = 40*pi/180;
    umax = pi/2;
    vmin = -pi;
    vmax = pi;
    
    % Boundary points (P, Q, R, S, T, P)
    ub = [u_gamma_s, u_gamma_s, u_gamma_s, u_gamma_s, u_gamma_s, u_gamma_s];
    vb = [36*pi/180, 108*pi/180, pi, 252*pi/180, 324*pi/180, 36*pi/180];
    
    % GLobe face
    subplot(2, 3, 1);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)

% Face 2
    % Input parameters
    % K1
    uk = u_alpha_s;
    vk = 0;

    % Graticule
    umin = -20*pi/180;
    umax = 70*pi/180;
    vmin = -40*pi/180;
    vmax = 40*pi/180;

    % Boundary points (F, G, P, T, O, F)
    ub = [u_delta_j, u_delta_s, u_gamma_s, u_gamma_s, u_delta_s, u_delta_j];
    vb = [0, 36*pi/180, 36*pi/180, 324*pi/180, 324*pi/180, 0];
    
    % GLobe face
    subplot(2, 3, 2);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)

% Face 3
    % Input parameters
    % K2
    uk = u_alpha_s;
    vk = 72*pi/180;

    % Graticule
    umin = -20*pi/180;
    umax = 70*pi/180;
    vmin = 30*pi/180;
    vmax = 120*pi/180;

    % Boundary points (H, I, Q, P, G, H)
    ub = [u_delta_j, u_delta_s, u_gamma_s, u_gamma_s, u_delta_s, u_delta_j];
    vb = [72*pi/180, 108*pi/180, 108*pi/180, 36*pi/180, 36*pi/180, 72*pi/180];
    
    % GLobe face
    subplot(2, 3, 3);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)

% Face 4
    % Input parameters    
    % K3
    uk = u_alpha_s;
    vk = 144*pi/180;

    % Graticule
    umin = -20*pi/180;
    umax = 70*pi/180;
    vmin = 100*pi/180;
    vmax = 190*pi/180;

    % Boundary points (J, K, R, Q, I, J)
    ub = [u_delta_j, u_delta_s, u_gamma_s, u_gamma_s, u_delta_s, u_delta_j];
    vb = [144*pi/180, pi, pi, 108*pi/180, 108*pi/180, 144*pi/180];
    
    % GLobe face
    subplot(2, 3, 4);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)
    
% Face 5
    % Input parameters    
    % K4
    uk = u_alpha_s;
    vk = 216*pi/180;

    % Graticule
    umin = -20*pi/180;
    umax = 70*pi/180;
    vmin = 170*pi/180;
    vmax = 260*pi/180;

    % Boundary points (L, M, S, R, K, L)
    ub = [u_delta_j, u_delta_s, u_gamma_s, u_gamma_s, u_delta_s, u_delta_j];
    vb = [216*pi/180, 252*pi/180, 252*pi/180, pi, pi, 216*pi/180];
    
    % GLobe face
    subplot(2, 3, 5);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)


% Face 6
    % Input parameters    
    % K5
    uk = u_alpha_s;
    vk = 288*pi/180;

    % Graticule
    umin = -20*pi/180;
    umax = 70*pi/180;
    vmin = 240*pi/180;
    vmax = 330*pi/180;

    % Boundary points (N, O, T, S, M, N)
    ub = [u_delta_j, u_delta_s, u_gamma_s, u_gamma_s, u_delta_s, u_delta_j];
    vb = [288*pi/180, 324*pi/180, 324*pi/180, 252*pi/180, 252*pi/180, 288*pi/180];
    
    % GLobe face
    subplot(2, 3, 6);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)