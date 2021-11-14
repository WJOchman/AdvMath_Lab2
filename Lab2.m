% Task 1

prompt = {'Enter start time:','Enter end time:','Enter increment:'};
dlgtitle = 'Data Input';
dims = [1 70];
definput = {'','',''};
answer = inputdlg(prompt,dlgtitle,dims,definput);

start_time = str2num(answer{1});
end_time = str2num(answer{2});
increment = str2num(answer{3});

% Task 2

if start_time >= end_time
    f = msgbox('Start time cannot be greater than end time!', 'Error!');
elseif increment >= end_time
    f = msgbox('The increment cannot be larger than the end time!', 'Error!');
elseif start_time <= -1 
    f = msgbox('The start time can only be positive numbers!');
elseif end_time <= -1 
    f = msgbox('The end time can only be positive numbers!');
elseif increment <= -1 
    f = msgbox('The increment can only be positive numbers!');
elseif isempty(str2num(answer{1}))
    f = msgbox('Input must be a number!');
elseif isempty(str2num(answer{2}))
    f = msgbox('Input must be a number!');
elseif isempty(str2num(answer{3}))
    f = msgbox('Input must be a number!');
end 
