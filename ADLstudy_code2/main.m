
figure
hold on
plot(dataankleR(:,2),'r')
plot(dataankleR(:,3),'g')
plot(dataankleR(:,4),'b')
[x1,~] = ginput(1)
[x2,~] = ginput(1)
samples_ankle2 = x2-x1;
fs_ankle = 170.7;
t2=samples_ankle2/fs_ankle;



figure
hold on
plot(dataecg(:,2),'r')
plot(dataecg(:,3),'g')
plot(dataecg(:,4),'b')
[x1_ecg,~] = ginput(1)
[x2_ecg,~] = ginput(1)
samples_ecg2 = x2_ecg-x1_ecg;
fs_ecg2 = samples_ecg2/t2;

 
% t/60


clear
close all

initialization

%% import data using ShimmerLog

%% prepare data matlab
% Read data from location where we import the row data (.../Data_matlab)
% Calibrate the accelerometer data
% Save coma separated data in (.../Data_excel)
patient = 'ADL004';
prepare_data_matlab


Partindex = 4;
st_marker_ADL



% initialization
% Partindex = [2];
% prepare_oxycondata
% 
% clear
% close all
% 
% initialization
% Partindex = 2;
% st_marker_ADL_ox

