clear 
close all

patients = [4];

sensors = {'AnkleR', 'WristR', 'WristL', 'ECG1', 'Sync'};
tests = {'B1','B2','E'};

for patient_index = 1 : numel(patients)
    for index_test = 1:numel(tests)
        test = tests{index_test};
        patient = patients(patient_index);
        for i = 1 : numel(sensors)
            sensor = sensors{i};
            path_data = strcat('\\code1\storage\2012-0362_icare4copd_ux\datasets\ADLstudy\ADL00',num2str(patient),'\Data\',test,'\',sensor,'\adl_test_2014\');            
%             path_data = strcat('/home/2012-0362_icare4copd/datasets/ADLstudy/ADL00',num2str(patient),'/Data/',test,'/',sensor,'/adl_test_2014/');
            [fileList, subfoldList] = getAllFiles(path_data);

            switch sensor
                case 'ECG1'
                    if patient == 1
                        bytes_to_read = 5;
                        bits_acc = 1:3;
                        bits_ecg = 4:5;
                    else
                        bytes_to_read =6;
                        bits_acc = 2:4;
                        bits_ecg = 5:6;
                    end
                    data_all = [];
                    data_acc = [];
                    data_ecg = [];
                    for j = 1 : numel(fileList)
                            data= fopen(fileList{j});
                            clear ShimmerValues
                            ShimmerValues = fread(data,[bytes_to_read, Inf], 'uint16');
                            fclose(data);
                            data_all = [data_all;ShimmerValues'];
                            data_acc = [data_acc;ShimmerValues(bits_acc,:)'];
                            data_ecg = [data_ecg;ShimmerValues(bits_ecg,:)'];
                    end
                    figure
                    for k = 1 : size(data_all,2)
                        subplot(3,2,k)
                        plot(data_all(:,k));
                    end
                    close all                            
                    if ~isempty(data_acc)
                        figure
                        subplot(2,1,1)
                        hold on
                        plot(data_acc(:,1),'r');
                        plot(data_acc(:,2),'g');
                        plot(data_acc(:,3),'b');
                        title(sensor);
                        subplot(2,1,2)
                        hold on
                        plot(data_ecg(:,1),'r');
                        plot(data_ecg(:,2),'g');
                    end
                case {'AnkleR', 'WristR', 'WristL'}
                    if patient == 1
                        bytes_to_read = 6;
                        bits_acc = 1:3;
                        bits_gyro = 4:6;
                    else
                        bytes_to_read = 7;
                        bits_acc = 2:4;
                        bits_gyro = 5:7;
                    end
                    data_acc = [];
                    data_gyro = [];
                    for j = 1 : numel(fileList)
                            data= fopen(fileList{j});
                            clear ShimmerValues
                            ShimmerValues = fread(data,[bytes_to_read, Inf], 'uint16');
                            fclose(data);
                            data_acc = [data_acc;ShimmerValues(bits_acc,:)'];
                            data_gyro = [data_gyro;ShimmerValues(bits_gyro,:)'];
                    end 
                    if ~isempty(data_acc)
                        figure
                        subplot(2,1,1)
                        hold on
                        plot(data_acc(:,1),'r');
                        plot(data_acc(:,2),'g');
                        plot(data_acc(:,3),'b');
                        title(sensor);
                        subplot(2,1,2)
                        hold on
                        plot(data_gyro(:,1),'r');
                        plot(data_gyro(:,2),'g');
                        plot(data_gyro(:,3),'b');
                    end                    
                case 'Sync'
                    if patient == 1
                        bytes_to_read = 5;
                        bits_acc = 1:3;
                        
                    else
                        bytes_to_read = 4;
                        bits_acc = 2:4;
                        
                    end
                    data_acc = [];
                    
                    for j = 1 : numel(fileList)
                            data= fopen(fileList{j});
                            clear ShimmerValues
                            ShimmerValues = fread(data,[bytes_to_read, Inf], 'uint16');
                            fclose(data);
                            data_acc = [data_acc;ShimmerValues(bits_acc,:)'];
                            
                    end 
                    if ~isempty(data_acc)
                        figure
                        subplot(2,1,1)
                        hold on
                        plot(data_acc(:,1),'r');
                        plot(data_acc(:,2),'g');
                        plot(data_acc(:,3),'b');
                        title(sensor);
                    end                   
            end
        end
        close all
    end
end