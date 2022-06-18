%% Synchronous generator parameters

clc, clear, close all

V_rated = 13.8e3;                   % line voltage in volts (V)
S_rated = 50e6;                     % apparent power in volt-amperes (VA)
PF_rated = 0.9;                     % rated power factor
PA_rated = -acos(PF_rated);         % rated power angle in radians
freq_rated = 60;                    % rated frequency in hertz (Hz)  (unused)
X_s = 2.5;                          % synchronous reactance in ohms
R_A = 0.2;                          % armature resistance in ohms
windage_losses = 1e6;               % windage losses in watts (W)    (unused)
core_losses = 1.5e6;                % core losses in watts (W)       (unused)
I_F_max = 10;                       % maximum field current in amperes (A)

%% 1 & 2) Simulation of the phasor_diagram function and plotting the |I_A|max and |E_A|max at rated conditions

I_A_mag_rated = S_rated / (sqrt(3) * V_rated);              % magnitude of the armature current I_A
figure
E_A_rated = plot_phasor_diagram(I_A_mag_rated, V_rated, X_s, R_A, PA_rated);
% The factor which limits internal generated voltage E_A is the field current,
% as the maximum field current I_F_max is 10 A.
E_A_mag_max = calculate_Vt_OC(I_F_max) / sqrt(3);
plot_circle(0, 0, I_A_mag_rated, 'r', '|I_A|_{max}', '--')
plot_circle(0, 0, E_A_mag_max, 'r', '|E_A|_{max}', '-')     % |E_A_rated| and |E_A_max| coincide for I_F = I_F_max
title('Phasor Diagram for the Rated Values', 'Color', 'r')
legend
axis equal
grid on

%% 3) Plotting for 0.9–PF–lagging-and-leading E_A limit circles corresponding to I_F = 2 and 6 A

PA_leading = -PA_rated;         % leading (+) power angle in radians
PA_lagging = PA_rated;          % lagging (-) power angle in radians

I_F1 = 2;       % field current for case 1
I_F2 = 6;       % field current for case 2

V_phi = V_rated / sqrt(3);      % relation due to Y-connection



% There is no solution for I_F1 = 2 A.
% figure
% 
% % for I_F1 = 2 A, PF = -0.9 lagging
% subplot(1, 2, 1)
% I_A_mag1 = calculate_Ia_mag(V_phi, I_F1, X_s, R_A, PA_lagging);
% E_A1 = plot_phasor_diagram(I_A_mag1, V_rated, X_s, R_A, PA_lagging);
% plot_circle(0, 0, I_A_mag_rated, 'b', '|I_A|_{rated}', '--')     % plot old |I_A|max limit circle
% plot_circle(0, 0, E_A_mag_max, 'r', '|E_A|_{rated}', '--')       % plot old |E_A|max limit circle
% plot_circle(0, 0, abs(I_A_mag1), 'b', '|I_A|_{max}', '-')        % plot new |I_A|max limit circle
% plot_circle(0, 0, abs(E_A1), 'r', '|E_A|_{max}', '-')            % plot new |E_A|max limit circle
% title('I_{F1} = 2 A, PF = -0.9 Lagging', 'Color', 'r')
% legend('Location', 'Northwest')
% grid on
% 
% % for I_F1 = 2 A, PF = 0.9 leading
% subplot(1, 2, 2)
% I_A_mag2 = calculate_Ia_mag(V_phi, I_F1, X_s, R_A, PA_leading);
% E_A2 = plot_phasor_diagram(I_A_mag2, V_rated, X_s, R_A, PA_leading);
% plot_circle(0, 0, I_A_mag_rated, 'b', '|I_A|_{rated}', '--')     % plot old |I_A|max limit circle
% plot_circle(0, 0, E_A_mag_max, 'r', '|E_A|_{rated}', '--')       % plot old |E_A|max limit circle
% plot_circle(0, 0, abs(I_A_mag2), 'b', '|I_A|_{max}', '-')        % plot new |I_A|max limit circle
% plot_circle(0, 0, abs(E_A2), 'r', '|E_A|_{max}', '-')            % plot new |E_A|max limit circle
% title('I_{F1} = 2 A, PF = -0.9 Leading', 'Color', 'r')
% legend('Location', 'Northwest')
% grid on



figure

% for I_F2 = 6 A, PF = -0.9 lagging
subplot(1, 2, 1)
I_A_mag1 = calculate_Ia_mag(V_phi, I_F2, X_s, R_A, PA_lagging);
E_A1 = plot_phasor_diagram(I_A_mag1, V_rated, X_s, R_A, PA_lagging);
plot_circle(0, 0, I_A_mag_rated, 'b', '|I_A|_{rated}', '--')     % plot old |I_A|max limit circle
plot_circle(0, 0, E_A_mag_max, 'r', '|E_A|_{rated}', '--')       % plot old |E_A|max limit circle
plot_circle(0, 0, abs(I_A_mag1), 'b', '|I_A|_{max}', '-')        % plot new |I_A|max limit circle
plot_circle(0, 0, abs(E_A1), 'r', '|E_A|_{max}', '-')            % plot new |E_A|max limit circle
title('I_{F2} = 6 A, PF = -0.9 Lagging', 'Color', 'r')
legend('Location', 'Northwest')
grid on

% for I_F2 = 6 A, PF = 0.9 leading
subplot(1, 2, 2)
I_A_mag2 = calculate_Ia_mag(V_phi, I_F2, X_s, R_A, PA_leading);
E_A2 = plot_phasor_diagram(I_A_mag2, V_rated, X_s, R_A, PA_leading);
plot_circle(0, 0, I_A_mag_rated, 'b', '|I_A|_{rated}', '--')     % plot old |I_A|max limit circle
plot_circle(0, 0, E_A_mag_max, 'r', '|E_A|_{rated}', '--')       % plot old |E_A|max limit circle
plot_circle(0, 0, abs(I_A_mag2), 'b', '|I_A|_{max}', '-')        % plot new |I_A|max limit circle
plot_circle(0, 0, abs(E_A2), 'r', '|E_A|_{max}', '-')            % plot new |E_A|max limit circle
title('I_{F2} = 6 A, PF = -0.9 Leading', 'Color', 'r')
legend('Location', 'Northwest')
grid on

%% 4) Analysis of generator behavior in terms of active and reactive power

% We use negative phases since complex apparent power S = V * I' where I' means conjugate of I.
S_mag_lagging = abs(I_A_mag1 * 3 * V_phi);
S_mag_leading = abs(I_A_mag2 * 3 * V_phi);
P_lagging = round(S_mag_lagging * cos(-PA_lagging), 5)
Q_lagging = round(S_mag_lagging * sin(-PA_lagging), 5)
P_leading = round(S_mag_leading * cos(-PA_leading), 5)
Q_leading = round(S_mag_leading * sin(-PA_leading), 5)

%% Function definitions

function [Vt_OC] = calculate_Vt_OC(I_F)
%[Vt_OC] = calculate_Vt_OC(I_F):
%   I_F: field current in amperes (A)
%
%   Returns the open circuit terminal voltage for the given field current I_F.
    
    Vt_OC = 20 * (1.05 - exp(-0.3 * I_F)) * 1e3;
end



function plot_circle(xc, yc, r, marker, name, style)
%plot_circle(xc, yc, r, marker, name, style):
%   xc: x coordinate of the circle's center
%   yc: y coordinate of the circle's center
%   r: radius of the circle
%   marker: marker used on the plot
%   name: name of the plot
%   style: line style of the plot
%
%   Plots a circle with given center (xc, yc) and radius r.
    
    hold on
    angle = linspace(0, 2*pi, 200);     % angle array in range of [0, 2*pi]
    xp = r * cos(angle) + xc;           % x coordinates of the circle border
    yp = r * sin(angle) + yc;           % y coordinates of the circle border
    plot(xp, yp, marker, 'DisplayName', name, 'LineStyle', style);
    hold off
end



function [E_A] = plot_phasor_diagram(I_A, V_T, X_s, R_A, P_angle)
%[E_A] = plot_phasor_diagram(I_A, V_T, X_s, R_A, P_angle):
%   I_A: armature current in amperes (A)
%   V_T: terminal voltage in volts (V)
%   X_s: synchronous reactance in ohms
%   R_A: armature resistance in ohms
%   P_angle: power angle in radians
%
%   Plots the phasor diagram of the generator for given parameters.
    
    V_phi = V_T / sqrt(3);              % divide by sqrt(3) due to Y-connection
    I_A = I_A * exp(1i * P_angle);      % find armature current in phasor domain
    Ia_Ra = I_A * R_A;
    j_Ia_Xs = 1i * I_A * X_s;
    E_A = V_phi + Ia_Ra + j_Ia_Xs;
    Ia_x = real(I_A);           Ia_y = imag(I_A);           % get real and imaginary parts of I_A
    Ia_Ra_x = real(Ia_Ra);      Ia_Ra_y = imag(Ia_Ra);      % get real and imaginary parts of I_A * R_A
    j_Ia_Xs_x = real(j_Ia_Xs);  j_Ia_Xs_y = imag(j_Ia_Xs);  % get real and imaginary parts of j * I_A * X_s
    Ea_x = real(E_A);           Ea_y = imag(E_A);           % get real and imaginary parts of E_A
    
    hold on
    quiver(0, 0, Ia_x, Ia_y, 0, 'DisplayName', 'I_A')       % plot I_A
    quiver(0, 0, V_phi, 0, 0, 'DisplayName', 'V_\phi')      % plot V_phi
    quiver(0, 0, Ea_x, Ea_y, 0, 'DisplayName', 'E_A')       % plot E_A
    quiver(V_phi, 0, Ia_Ra_x, Ia_Ra_y, 0, 'DisplayName', 'I_A\cdotR_A')     % plot I_A * R_A
    quiver(V_phi + Ia_Ra_x , Ia_Ra_y, j_Ia_Xs_x, j_Ia_Xs_y, 0, 'DisplayName', 'j\cdotI_A\cdotX_s')  % plot j * I_A * X_s
    xlabel('Real')
    ylabel('Imaginary')
    hold off
end



function [I_A_mag] = calculate_Ia_mag(V_phi, I_F, X_s, R_A, P_angle)
%[I_A_mag] = calculate_Ia_mag(V_phi, I_F, X_s, R_A, P_angle):
%   V_phi: output voltage in volts (V)
%   I_F: field current in amperes (A)
%   X_s: synchronous reactance in ohms
%   R_A: armature resistance in ohms
%   P_angle: power angle in radians
%
%   Returns the magnitude of the armature current |I_A| for given parameters.
    
    syms Ia;
    E_A_mag = calculate_Vt_OC(I_F) / sqrt(3);       % divide by sqrt(3) due to Y-connection
    I_A_mag = solve(((V_phi + Ia * R_A * cos(P_angle) + Ia * X_s * -sin(P_angle)) ^ 2 ...
        + (Ia * R_A * sin(P_angle) + Ia * X_s * cos(P_angle)) ^ 2) ...
        == (E_A_mag ^ 2), Ia);                      % solve the Pythagorean theorem
    I_A_mag = I_A_mag(2);
end
