% Task 1

prompt = {'Enter start time:','Enter end time:','Enter increment:'};
dlgtitle = 'Data Input';
dims = [1 70];
definput = {'','',''};
answer = inputdlg(prompt,dlgtitle,dims,definput)

start_time = str2num(answer{1});
end_time = str2num(answer{2});
increment = str2num(answer{3});