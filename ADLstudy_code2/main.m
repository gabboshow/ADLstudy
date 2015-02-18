clear
close all

% figure
% hold on
% plot(dataankleR(:,2),'r')
% plot(dataankleR(:,3),'g')
% plot(dataankleR(:,4),'b')
% 
% [x1_ankle,~] = ginput(1)
% [x2_ankle,~] = ginput(1)
% samples_ankle = x2_ankle-x1_ankle;
% 
% 
% 
% figure
% hold on
% plot(dataecg(:,2),'r')
% plot(dataecg(:,3),'g')
% plot(dataecg(:,4),'b')
% 
% [x1_ecg,~] = ginput(1)
% [x2_ecg,~] = ginput(1)
% samples_ecg = x2_ecg-x1_ecg;
% 
% 
% figure
% hold on
% plot(datasync(:,2),'r')
% plot(datasync(:,3),'g')
% plot(datasync(:,4),'b')
% x1_sync = 7842;
% x2_sync = 7983;
% samples_sync = x2_sync-x1_sync;
% 
% [p,q] = rat(samples_ankle/samples_ecg,0.0001);
% 
% 
% fs_ecg2 = samples_ecg/t2;
% 
% 
% fs_des = 170.7;
% fs_ecg = 130;
% 
% y = resample(data,p,q);
% 
% 
% fs_ankle = 170.7;
% t2=samples_ankle/fs_ankle;


clear
close all

initialization

%% import data using ShimmerLog

%% prepare data matlab
% Read data from location where we import the row data (.../Data_matlab)
% Calibrate the accelerometer data
% Save coma separated data in (.../Data_excel)
patient = 'ADL008';
prepare_data_matlab


clear
close all
addpath(genpath('/home/310153563/Code/sw-matlab-actlab'))
addpath(genpath('/home/310153563/Code/sw-matlab-marker'))
Partindex = 15;
st_marker_ADL

%%
clear
close all

initialization
patient = 'ADL007';
tests = {'E'};
Partindex = 12;
load(strcat('DATA/labels/MARKER_',num2str(Partindex),'.mat'))

write_file_Astrid


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

