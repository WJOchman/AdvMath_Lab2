clc;
clear; 

% Lab 2 | Part B | Task 2 
% Continuous Time Envelopes and the Nyquist Frequency Range (NFR)

% Job 1: Create a UI with 5 inputs (fundamental_frequency (Hz), sampling_frequency (Hz), start_time (s), stop_time (s), increment (s)).


prompt = {'Enter a fundamental frequency:','Enter a Sampling Frequency:','Enter start time:','Enter end time:','Enter increment:'};
dlgtitle = 'Data Input';
dims = [1 70];
definput = {'','','','',''};
answer = inputdlg(prompt,dlgtitle,dims,definput);

fundamental_frequency = str2num(answer{1});
sampling_frequency = str2num(answer{2});
start_time = str2num(answer{3});
end_time = str2num(answer{4});
increment = str2num(answer{5});

% Job 2: Trapping mechanics (if and ifelse statements) to make sure the user only enters valid inputs. 

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
elseif isempty(str2num(answer{1})) || isempty(str2num(answer{2})) || isempty(str2num(answer{3})) || isempty(str2num(answer{4})) || isempty(str2num(answer{5}))
    f = msgbox('Input must be a number! Please re-enter!', 'Error!');
end

% Job 3: Convert the continuous time signal to a discrete time signal using the defined sampling freuqncy. 

t = start_time : increment : end_time;
x_c = sin(2*pi*fundamental_frequency*t);
figure('units', 'normalized', 'OuterPosition', [0 0 1 1]);
plot (t, x_c, 'LineWidth', 2, 'Color', 'blue');

Nyquist_Frequency = 6;    
Nyquist_Rate = Nyquist_Frequency * 2;
Sampling_Frequency = sampling_frequency;
Sampling_Period = 1 / Sampling_Frequency;
Period = 1 / Nyquist_Frequency;
N = Period / Sampling_Period;
n = 0:1:10.75*N;           
nTs = n * Sampling_Period;

% Job 4: The program must then automatically calculate NFR. The program must inform the user whether the signal is within the NFR or not and act appropriately.


% Job 5: This is insane, needs to be revisited. 
