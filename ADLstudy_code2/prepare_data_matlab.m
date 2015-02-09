

for index_test = 1 : numel(tests)
    for index_sensor = 1 : numel(sensors)
        %1) Read all data in folder
        [fileList, subfoldList] = getAllFiles(strcat(path,patient,filesep,'Data_matlab',filesep,tests{index_test},filesep,sensors{index_sensor}));

        if strcmp(sensors{index_sensor},'oxycon')
            cal_data = importfile_xls(fileList{1}, 1);
            cal_data = cal_data(3:end,:);
%             time = datestr(cal_data(:,1),'HH:MM:SS');
        else
            
            data = [];
            for index_file = 1:numel(fileList)
                clear data_temp
                data_temp = importfile(fileList{index_file});
                data = [data; data_temp];
            end
        
            clear data_temp
        
%             cal_acc = calibrate_shimmer_acc(sensors{index_sensor},data(:,2:4));
            cal_data = data;
%             cal_data(:,2:4)=cal_acc;
            
%             if strcmp(sensors{index_sensor},'ecg')
%                 [p,q] = rat(143/123,0.0001);
%                 y = resample(cal_data,p,q);
%                 clear cal_data
%                 cal_data = y;
%             end
            clear cal_acc data
        end


        foldername = strcat(path,patient,filesep,'Data_excel',filesep,tests{index_test});
        mkdir(foldername);
        csvwrite(strcat(foldername,filesep,'data_',sensors{index_sensor},'.dat'),cal_data);
        
        clear cal_data

    end
end



