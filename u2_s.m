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


% Face 7
    % Input parameters    
    % K6
    uk = u_alpha_j;
    vk = 36*pi/180;

    % Graticule
    umin = -70*pi/180;
    umax = 20*pi/180;
    vmin = -10*pi/180;
    vmax = 80*pi/180;

    % Boundary points (F, A, B, H, G, F)
    ub = [u_delta_j, u_gamma_j, u_gamma_j, u_delta_j, u_delta_s, u_delta_j];
    vb = [0, 0, 72*pi/180, 72*pi/180, 36*pi/180, 0];
    
    % GLobe face
    subplot(2, 3, 1);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)


% Face 8
    % Input parameters    
    % K7
    uk = u_alpha_j;
    vk = 108*pi/180;

    % Graticule
    umin = -70*pi/180;
    umax = 20*pi/180;
    vmin = 60*pi/180;
    vmax = 150*pi/180;

    % Boundary points (H, B, C, J, I, H)
    ub = [u_delta_j, u_gamma_j, u_gamma_j, u_delta_j, u_delta_s, u_delta_j];
    vb = [72*pi/180, 72*pi/180, 144*pi/180, 144*pi/180, 108*pi/180, 72*pi/180];
    
    % GLobe face
    subplot(2, 3, 2);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)


% Face 9
    % Input parameters    
    % K8
    uk = u_alpha_j;
    vk = pi;

    % Graticule
    umin = -70*pi/180;
    umax = 20*pi/180;
    vmin = 130*pi/180;
    vmax = 230*pi/180;

    % Boundary points (J, C, D, L, K, J)
    ub = [u_delta_j, u_gamma_j, u_gamma_j, u_delta_j, u_delta_s, u_delta_j];
    vb = [144*pi/180, 144*pi/180, 216*pi/180, 216*pi/180, pi, 144*pi/180];
    
    % GLobe face
    subplot(2, 3, 3);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)


% Face 10
    % Input parameters    
    % K9
    uk = u_alpha_j;
    vk = 252*pi/180;

    % Graticule
    umin = -70*pi/180;
    umax = 20*pi/180;
    vmin = 210*pi/180;
    vmax = 300*pi/180;

    % Boundary points (L, D, E, N, M, L)
    ub = [u_delta_j, u_gamma_j, u_gamma_j, u_delta_j, u_delta_s, u_delta_j];
    vb = [216*pi/180, 216*pi/180, 288*pi/180, 288*pi/180, 252*pi/180, 216*pi/180];
    
    % GLobe face
    subplot(2, 3, 4);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)


% Face 11
    % Input parameters    
    % K10
    uk = u_alpha_j;
    vk = 324*pi/180;

    % Graticule
    umin = -70*pi/180;
    umax = 20*pi/180;
    vmin = 280*pi/180;
    vmax = 370*pi/180;

    % Boundary points (N, E, A, F, O, N)
    ub = [u_delta_j, u_gamma_j, u_gamma_j, u_delta_j, u_delta_s, u_delta_j];
    vb = [288*pi/180, 288*pi/180, 0, 0, 324*pi/180, 288*pi/180];
    
    % GLobe face
    subplot(2, 3, 5);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)


% Face 12 - south
    % Input parameters    
    % K12
    uk = -pi/2;
    vk = 0;
    
    % Graticule
    umin = -pi/2;
    umax = -40*pi/180;
    vmin = -pi;
    vmax = pi;

    % Boundary points (A, B, C, D, E, A)
    ub = [u_gamma_j, u_gamma_j, u_gamma_j, u_gamma_j, u_gamma_j, u_gamma_j];
    vb = [0, 72*pi/180, 144*pi/180, 216*pi/180, 288*pi/180, 0];
    
    % GLobe face
    subplot(2, 3, 6);
    globeFace(umin, umax, vmin, vmax, Du, Dv, du, dv, R, uk, vk, s0, proj, ub, vb)