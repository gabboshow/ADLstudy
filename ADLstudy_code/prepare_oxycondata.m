switch machine
    
    %Linux
    case 0
        path_data_oxicon = strcat('/media/Elements/Gabriele/ADL_study/All/Patient_',Partindex,'/SensorData/');
    %Windows
    case 1
        path_data_oxicon = strcat('E:\Gabriele\ADL_study\All\Patient_',Partindex,'\SensorData\');
        
end

% contains data from mobile oxycon
[~,~,data_oxycon] = xlsread(strcat(path_data_oxicon,oxycon_filename{Partindex}),1);

% vector contaning onsets timestamps in seconds
respiration_onsets = zeros(size(data_oxycon,1)-2,1);
for i = 3:size(data_oxycon,1)
    temp = (datevec(data_oxycon{i,1},'MM:SS'));
    respiration_onsets(i-2) = temp(3)*3600 + temp(4)*60 + temp(5);
end


oxycon_onsets = zeros(1,numel(1:(1/fs_shimmer):respiration_onsets(end)));
oxycon_onsets((fs_shimmer-1)*respiration_onsets) = 1;
index_onsets = find(oxycon_onsets==1);

square_resp = zeros(1,numel(1:(1/fs_shimmer):respiration_onsets(end)));

for i = 1:2:numel(index_onsets)-1
    square_resp(index_onsets(i):index_onsets(i+1)-1) = ones(numel(index_onsets(i):index_onsets(i+1)-1),1);
end

time_plot = (0:numel(oxycon_onsets)-1)/fs_shimmer;
figure
plot(time_plot,square_resp,'r');
xlabel('Time (seconds)');
ylim([0 5])


save(strcat(path_data_oxicon,'OXYCON_RESP_ONSETS'),'square_resp');