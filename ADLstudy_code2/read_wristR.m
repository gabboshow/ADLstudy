clear 
% close all

% path_data = '\\code1\storage\2012-0362_icare4copd_ux\datasets\ADLstudy\ADL004\All_Data\B1\';
path_data = '/home/2012-0362_icare4copd/datasets/ADLstudy/ADL007/All_Data/B1/';
% sensor = 'AnkleR';
% sensor = 'WristR';
% sensor = 'WristL';
sensor = 'ECG1';
% sensor = 'Sync';
data= fopen(strcat(path_data,'data_',sensor,'.bin'));

fs_shimmer = 170.67;
fs_true = 1024/(ceil(1024/fs_shimmer));

% read data
more off
if strcmp(sensor,'ECG1') || strcmp(sensor,'ECG2')
    ShimmerValues = fread(data,[6, Inf], 'uint16');
    data_acc = ShimmerValues(2:4,:)';
    data_ecg = ShimmerValues(5:6,:)';
    
    time_plot = (0:size(data_acc,1)-1)/fs_true;

    figure
    subplot(2,1,1)
    hold on
    plot(time_plot,data_acc(:,1),'r');
    plot(time_plot,data_acc(:,2),'g');
    plot(time_plot,data_acc(:,3),'b');
    xlabel('Time (seconds)');
    ylabel('m/s^2');
    legend('x','y','z');

    subplot(2,1,2)
    hold on
    plot(time_plot,data_ecg(:,1),'r');
    plot(time_plot,data_ecg(:,2),'g');
    xlabel('Time (seconds)');
    ylabel('');
    legend('Channel 1','Channel 2');
    
elseif strcmp(sensor,'Sync') 
    ShimmerValues = fread(data,[4, Inf], 'uint16');
    
    data_acc = ShimmerValues(2:4,:)';
        
    time_plot = (0:size(data_acc,1)-1)/fs_true;

    figure
    hold on
    plot(time_plot,data_acc(:,1),'r');
    plot(time_plot,data_acc(:,2),'g');
    plot(time_plot,data_acc(:,3),'b');
    xlabel('Time (seconds)');
    ylabel('m/s^2');
    legend('x','y','z');


    
else
    ShimmerValues = fread(data,[7, Inf], 'uint16');
    
    data_acc = ShimmerValues(2:4,:)';
    data_gyro = ShimmerValues(5:7,:)';
    
    time_plot = (0:size(data_acc,1)-1)/fs_true;

    figure
    subplot(2,1,1)
    hold on
    plot(time_plot,data_acc(:,1),'r');
    plot(time_plot,data_acc(:,2),'g');
    plot(time_plot,data_acc(:,3),'b');
    xlabel('Time (seconds)');
    ylabel('m/s^2');
    legend('x','y','z');

    subplot(2,1,2)
    hold on
    plot(time_plot,data_gyro(:,1),'r');
    plot(time_plot,data_gyro(:,2),'g');
    plot(time_plot,data_gyro(:,3),'b');
    xlabel('Time (seconds)');
    ylabel('alpha');
    legend('x','y','z');
    
end







% wristR_gyorx = ShimmerValues_wristR(5,:)';
% wristR_gyory = ShimmerValues_wristR(6,:)';
% wristR_gyorz = ShimmerValues_wristR(7,:)';
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 
% L_wristR= length(wristR_accx);
% t_wristR = (0:L_wristR-1)/200;
% 
% figure
% subplot(3,1,1); plot(t_wristR,wristR_accx,'r'); title 'AnkleR Accel X';
% subplot(3,1,2); plot(t_wristR,wristR_accy,'b'); title 'AnkleR Accel Y';
% subplot(3,1,3); plot(t_wristR,wristR_accz,'g'); title 'AnkleR Accel Z';
% 
% figure
% subplot(3,1,1); plot(t_wristR,wristR_gyorx,'r'); title 'AnkleR Gyro X';
% subplot(3,1,2); plot(t_wristR,wristR_gyory,'b'); title 'AnkleR Gyro Y';
% subplot(3,1,3); plot(t_wristR,wristR_gyorz,'g'); title 'AnkleR Gyro Z';
% 
