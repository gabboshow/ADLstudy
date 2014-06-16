clear 
close all

path_data = '/media/Elements/Gabriele/ADL_study/All/Patient_1/SensorData/';
fs_shimmer = 200;

% sensor_data = 'AnkleR';
% AnkleR_data= fopen(strcat(path_data,'/',data_patient,'/',sensor_data,'/',date_data,'/',time_data,'/acceleration/acceltot.bin'));
% 
% more off
% ShimmerValues_AnkleR = fread(AnkleR_data,[6,Inf],'uint16');
% 
% %AnkleR
% AnkleR_accx = ShimmerValues_AnkleR(1,:)';
% AnkleR_accy = ShimmerValues_AnkleR(2,:)';
% AnkleR_accz = ShimmerValues_AnkleR(3,:)';
% 
% AnkleR_gyorx = ShimmerValues_AnkleR(4,:)';
% AnkleR_gyory = ShimmerValues_AnkleR(5,:)';
% AnkleR_gyorz = ShimmerValues_AnkleR(6,:)';
% 
% % AnkleR_magnx = ShimmerValues_AnkleR(7,:)';
% % AnkleR_magny = ShimmerValues_AnkleR(8,:)';
% % AnkleR_magnz = ShimmerValues_AnkleR(9,:)';
% 
% L_AnkleR= length(AnkleR_accx);
% t_AnkleR = (0:L_AnkleR-1)/200;
% 
% figure
% subplot(3,1,1); plot(t_AnkleR,AnkleR_accx,'r'); title 'AnkleR Accel X';
% subplot(3,1,2); plot(t_AnkleR,AnkleR_accy,'b'); title 'AnkleR Accel Y';
% subplot(3,1,3); plot(t_AnkleR,AnkleR_accz,'g'); title 'AnkleR Accel Z';
% 
% figure
% subplot(3,1,1); plot(t_AnkleR,AnkleR_gyorx,'r'); title 'AnkleR Gyro X';
% subplot(3,1,2); plot(t_AnkleR,AnkleR_gyory,'b'); title 'AnkleR Gyro Y';
% subplot(3,1,3); plot(t_AnkleR,AnkleR_gyorz,'g'); title 'AnkleR Gyro Z';
% 
% % figure
% % subplot(3,1,1); plot(t_AnkleR,AnkleR_magnx,'r'); title 'AnkleR Magn X';
% % subplot(3,1,2); plot(t_AnkleR,AnkleR_magny,'b'); title 'AnkleR Magn Y';
% % subplot(3,1,3); plot(t_AnkleR,AnkleR_magnz,'g'); title 'AnkleR Magn Z';



sensor_data = 'Shimmer_ECG1';
ECG1_data= fopen(strcat(path_data,sensor_data,'.bin'));


 

ShimmerValues_ECG1 = fread(ECG1_data,[5,Inf],'uint16');


% *************************************************************************%

%ECG1
ECG1_accx = ShimmerValues_ECG1(1,:)';
ECG1_accy = ShimmerValues_ECG1(2,:)';
ECG1_accz = ShimmerValues_ECG1(2,:)';

ECG1_channel1 = -1*ShimmerValues_ECG1(3,:)';
ECG1_channel2 = -1*ShimmerValues_ECG1(4,:)';

L_ECG1= length(ECG1_accx);
t_ECG1 = (0:L_ECG1-1)/fs_shimmer;

figure
subplot(3,1,1); plot(t_ECG1, ECG1_accx,'r'); title 'ECG1 Accel X';
subplot(3,1,2); plot(t_ECG1, ECG1_accy,'g'); title 'ECG1 Accel Y';
subplot(3,1,3); plot(t_ECG1, ECG1_accz,'b'); title 'ECG1 Accel Z';

figure
subplot(2,1,1); plot(t_ECG1, ECG1_channel1,'r'); title 'ECG1 Channel 1';
subplot(2,1,2); plot(t_ECG1, ECG1_channel2,'g'); title 'ECG1 Channel 2';

% *************************************************************************%



% *************************************************************************%

