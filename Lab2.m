clc;
clear; 

% Part A - Task 1

prompt = {'Enter start time:','Enter end time:','Enter increment:'};
dlgtitle = 'Data Input';
dims = [1 70];
definput = {'','',''};
answer = inputdlg(prompt,dlgtitle,dims,definput);

start_time = str2num(answer{1});
end_time = str2num(answer{2});
increment = str2num(answer{3});

% Part A - Task 2

if start_time >= end_time
    f = msgbox('Start time cannot be greater than end time! Please re-enter!', 'Error!');
elseif increment >= end_time
    f = msgbox('The increment cannot be larger than the end time! Please re-enter!', 'Error!');
elseif start_time <= -1 
    f = msgbox('The start time can only be positive numbers! Please re-enter!', 'Error!' );
elseif end_time <= -1 
    f = msgbox('The end time can only be positive numbers! Please re-enter!', 'Error!');
elseif increment <= -1 
    f = msgbox('The increment can only be positive numbers! Please re-enter!', 'Error!');
elseif isempty(str2num(answer{1}))
    f = msgbox('Input must be a number! Please re-enter!', 'Error!');
elseif isempty(str2num(answer{2}))
    f = msgbox('Input must be a number! Please re-enter!', 'Error!');
elseif isempty(str2num(answer{3}))
    f = msgbox('Input must be a number! Please re-enter!', 'Error!');
end 

% Part B - Task 1 - Proving the conecpet of infinite aliases 

t = start_time : increment : end_time;
t1 = start_time : increment : end_time;
t2 = start_time : increment : end_time;
x_c1 = sin(2*pi*1*t);
x_c2 = sin(2*pi*6*t);
figure('units', 'normalized', 'OuterPosition', [0 0 1 1]);
%plot (t, x_c1, 'LineWidth', 2, 'Color', 'blue'); - 1Hz Sinusoid
% hold on;
% plot (t, x_c2, 'LineWidth', 2, 'Color', 'green'); - 6Hz Sinusoid
x_c3 = x_c1 + x_c2;
subplot(3, 1,1);
plot (t, x_c3, 'LineWidth', 2, 'Color', 'blue');
hold on;

ylim([-2.1 2.1]);
[t] = title('Time vs. Magnitude', 'Color', 'black', 'FontWeight','bold');
t.FontSize = 16;
[x] = xlabel('Time (s)', 'color', 'black', 'FontWeight','bold');
[y] = ylabel('Magnitude', 'color', 'black', 'FontWeight','bold');
x.FontSize = 14;
y.FontSize = 14;
grid on;

% Converting to a discrete signal

%The correct signal
%{
Nyquist_Frequency = 6;      %6
Nyquist_Rate = Nyquist_Frequency * 2;
Sampling_Frequency = Nyquist_Rate * 5;
Sampling_Period = 1 / Sampling_Frequency;
Period = 1 / Nyquist_Frequency;
N = Period / Sampling_Period;
n = 0:1:10.75*N;            %10.75*N
nTs = n * Sampling_Period;
x_disc1 = sin(2*pi*6*nTs);  
x_disc2 = sin(2*pi*1*nTs);
x_disc3 = x_disc1 + x_disc2;
stem(nTs, x_disc3, 'Linewidth', 2, 'Color', 'red');

legend('Continuous Time Signal','Discrete Time Signal');
fig = gcf;
saveas(gcf, 'figure1.jpeg');
%}

% Reduce the sampling frequency from 30Hz to 5Hz.
% Sampling Frequency = 6Hz

Nyquist_Frequency = 6;     
Nyquist_Rate = Nyquist_Frequency * 2;
Sampling_Frequency = 5;
Sampling_Period = 1 / Sampling_Frequency;
Period = 1 / Nyquist_Frequency;
N = Period / Sampling_Period;
n = 0:1:10*N;
nTs = n * Sampling_Period;
x_disc1 = sin(2*pi*6*nTs);  
x_disc2 = sin(2*pi*1*nTs);
x_disc3 = x_disc1 + x_disc2;
stem(nTs, x_disc3, 'Linewidth', 2, 'Color', 'red');

% Sampling Frequency = 11Hz

subplot(3, 1, 2);
plot (t1, x_c3, 'LineWidth', 2, 'Color', 'blue');
hold on;
Nyquist_Frequency = 11;     
Nyquist_Rate = Nyquist_Frequency * 2;
Sampling_Frequency = 5;
Sampling_Period = 1 / Sampling_Frequency;
Period = 1 / Nyquist_Frequency;
N = Period / Sampling_Period;
n = 0:1:19*N;           
nTs = n * Sampling_Period;
x_disc1 = sin(2*pi*6*nTs);  
x_disc2 = sin(2*pi*1*nTs);
x_disc3 = x_disc1 + x_disc2;
stem(nTs, x_disc3, 'Linewidth', 2, 'Color', 'red');

% Sampling Frequency = 5001Hz

subplot(3, 1, 3);
plot (t2, x_c3, 'LineWidth', 2, 'Color', 'blue');
hold on
Nyquist_Frequency = 5001;     
Nyquist_Rate = Nyquist_Frequency * 2;
Sampling_Frequency = 5;
Sampling_Period = 1 / Sampling_Frequency;
Period = 1 / Nyquist_Frequency;
N = Period / Sampling_Period;
n = 0:1:9000*N; 
nTs = n * Sampling_Period;
x_disc1 = sin(2*pi*6*nTs);  
x_disc2 = sin(2*pi*1*nTs);
x_disc3 = x_disc1 + x_disc2;
stem(nTs, x_disc3, 'Linewidth', 2, 'Color', 'red');
