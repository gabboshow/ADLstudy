clear 
close all

machine = 1; % 0 Linux, 1 Windows
oxycon_filename = 'Kilani_170614.xlsx';
fs_shimmer = 200;
fs_true = 1024/(ceil(1024/fs_shimmer));




test_sync_data = importdata('C:\Users\310153563\Dropbox\Philips\Shimmer\test_data\syncA.dat');




