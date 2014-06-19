clear 
close all

machine = 1; % 0 Linux, 1 Windows
oxycon_filename = 'Kilani_170614.xlsx';
fs_shimmer = 200;
fs_true = 1024/(ceil(1024/fs_shimmer));



b=[2003.983660; 2085.058824;1683.549020];
K=[99.788675,0,0;0,96.648415,0;0,0,100.440363];
% R = [-0.999642,-0.015439,0.021875;-0.001242,-0.998657,0.051796;0.062888,0.012171,0.997946];
R = [1,0,0;0,1,0;0,0,1];

test_sync_data = importdata('C:\Users\310153563\Dropbox\Philips\Shimmer\test_data\syncA.dat');

acc_sync_data = test_sync_data.data(:,2:4);

for i = 1 : size(acc_sync_data,1)
    calib_sync_dataX(i,:) = (R'*K'*(acc_sync_data(i,:)'-b))';
end

figure
time_plot = (0:size(calib_sync_dataX,1)-1)/fs_true;
plot(time_plot,calib_sync_dataX,'DisplayName','calib_sync_dataX');