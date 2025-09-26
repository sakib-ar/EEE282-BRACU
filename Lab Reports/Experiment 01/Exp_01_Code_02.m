clc
clear
close all

t = linspace(0, 80/1000, 81);
SinWave1 = 10*sin(2*pi*15*t);
SinWave2 = 2*sin(2*pi*30*t);
CosWave = 5*cos(2*pi*60*t);

%% Two sine waves in different windows

% First sine wave:
figure;
plot(t, SinWave1, 'r', 'LineWidth', 1);
title('Sine Wave 1');
xlabel('Time (ms)');
ylabel('Amplitude');
grid on;

% Second sine wave:
figure;
plot(t, SinWave2, 'b', 'LineWidth', 1);
title('Sine Wave 2');
xlabel('Time (ms)');
ylabel('Amplitude');
grid on;

%% Two sine waves in the same window
figure;
plot(t, SinWave1, 'r', 'LineWidth', 1.5);
hold on;
plot(t, SinWave2, 'b', 'LineWidth', 1.5);
hold off;

title('Sine Wave 1 and 2');
xlabel('Time (ms)');
ylabel('Amplitude');
legend('Sine Wave 1', 'Sine Wave 2');
grid on;

%% Subplot: All Waves in different plots
figure;
subplot(3, 1, 1);
plot(t, SinWave1, 'r', 'LineWidth', 1.5);
title('Sine Wave 1');
xlabel('Time (ms)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 2);
plot(t, SinWave2, 'b', 'LineWidth', 1.5);
title('Sine Wave 2');
xlabel('Time (ms)');
ylabel('Amplitude');
grid on;

subplot(3, 1, 3);
plot(t, CosWave, 'k', 'LineWidth', 1.5);
title('Cosine Wave');
xlabel('Time (ms)');
ylabel('Amplitude');
grid on;

%% Subplot: Sine Waves on the same figure but Cosine in different plot

% For both Sine Waves
figure;
subplot(2, 1, 1);
plot(t, SinWave1, 'r--', 'LineWidth', 1.5); % First Sine Wave
hold on;
plot(t, SinWave2, 'b-.', 'LineWidth', 1.5); % Second Sine Wave
hold off;
title('Sine Wave 1 and 2');
xlabel('Time (ms)');
ylabel('Amplitude');
legend('Sine Wave 1', 'Sine Wave 2');
grid on;

% For Cosine Wave
subplot(2, 1, 2);
plot(t, CosWave, 'k', 'LineWidth', 1.5); % Cosine Wave
title('Cosine Wave');
xlabel('Time (ms)');
ylabel('Amplitude');
grid on;