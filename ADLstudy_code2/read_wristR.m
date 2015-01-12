clear 
close all

path_data = '/media/Elements/Gabriele/ADL_study/Test_SDLOG/WristL/1/1/acceleration/';
wristR_data= fopen(strcat(path_data,'acceltot.bin'));

fs_shimmer = 170.67;
fs_true = 1024/(ceil(1024/fs_shimmer));

% read data
more off
ShimmerValues_wristR = fread(wristR_data,[7,Inf],'uint16');


wristR_accx = ShimmerValues_wristR(2,:)';
wristR_accy = ShimmerValues_wristR(3,:)';
wristR_accz = ShimmerValues_wristR(4,:)';

wristR_acc = [wristR_accx,wristR_accy,wristR_accz];
wristR_acc_calib = calibrate_shimmer('wristR',wristR_acc)./10000;


figure
time_plot = (0:size(wristR_acc,1)-1)/fs_true;
plot(time_plot,wristR_acc,'DisplayName','sync_dataX');

figure
time_plot = (0:size(wristR_acc_calib,1)-1)/fs_true;
hold on
plot(time_plot,wristR_acc_calib(:,1),'r');
plot(time_plot,wristR_acc_calib(:,2),'g');
plot(time_plot,wristR_acc_calib(:,3),'b');
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
