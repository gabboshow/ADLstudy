for index_test = 1 : numel(tests)
    data_aligned = cell(1,numel(sensors));
    maxvalues = zeros(1,size(numel(sensors),1));
    
    for index_sensor = 1 : numel(sensors)
        
        if index_sensor>1
            
            data = csvread(strcat(path,patient,filesep,'Data_excel',filesep,tests{index_test},filesep,'data_',sensors{index_sensor},'.dat'));
            data_aligned{index_sensor} = data(alignshift(index_sensor)+1:end,:);
            maxvalues(index_sensor)=size(data_aligned{index_sensor},1);
            clear data
        end
        
    end
end


excel=zeros(max(maxvalues),3*3+1);
in = 1;
for i = 1 : numel(data_aligned)-2
    
    excel(1:size(data_aligned{i+1},1),in:in+2)=data_aligned{i+1}(:,2:4);
    in = in + 3;
end

for i = 1: size(seg,1)
    
    if seg(i,4)>3
        excel(seg(i,1):seg(i,2),10)=ones(seg(i,3),1)*seg(i,4);
    end
end

foldername = strcat(path,'Data_Astrid');
mkdir(foldername);
csvwrite(strcat(foldername,filesep,'data_',patient,tests{index_test},'.csv'),excel);
clear cal_data



