clear 
close all

patient = 7;

% sensor = 'AnkleR';
% sensor = 'WristR';
% sensor = 'WristL';
sensor = 'ECG1';
% sensor = 'Sync';

path_data = strcat('/home/2012-0362_icare4copd/datasets/ADLstudy/ADL00',num2str(patient),'/Data/B1/',sensor,'/adl_test_2014/');
[fileList, subfoldList] = getAllFiles(path_data);

for i = 1 : numel(fileList)
    
end