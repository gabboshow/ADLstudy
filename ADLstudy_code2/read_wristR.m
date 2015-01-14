clear 
close all

path_data = '/home/2012-0362_icare4copd/datasets/ADLstudy/ADL004/All_Data/B1/';
data= fopen(strcat(path_data,'data_Sync.bin'));

fs_shimmer = 170.67;
fs_true = 1024/(ceil(1024/fs_shimmer));

% read data
more off
ShimmerValues = fread(data,[4,Inf]);


data_accx = ShimmerValues(2,:)';
data_accy = ShimmerValues(3,:)';
data_accz = ShimmerValues(4,:)';

data_acc = [data_accx,data_accy,data_accz];
data_acc_calib = calibrate_shimmer('wristR',data_acc)./10000;


figure
time_plot = (0:size(data_acc,1)-1)/fs_true;
plot(time_plot,data_acc,'DisplayName','sync_dataX');

figure
time_plot = (0:size(data_acc_calib,1)-1)/fs_true;
hold on
plot(time_plot,data_acc_calib(:,1),'r');
plot(time_plot,data_acc_calib(:,2),'g');
plot(time_plot,data_acc_calib(:,3),'b');
xlabel('Time (seconds)');
ylabel('m/s^2');
legend('x','y','z');
ylim([-15 15]);




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
