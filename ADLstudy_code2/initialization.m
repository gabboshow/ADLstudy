machine = 2; % 0 Laptop, 1 Philips windows, 2 Philips clusters

switch machine
    case 0
        error('Set the path');
    case 1
        path = '\\code1\storage\2012-0362_icare4copd_ux\datasets\ADLstudy\';
    case 2
        error('/home/2012-0362_icare4copd/datasets/ADLstudy/');
end

tests = {'B1'};%,'B2','E'};
sensors = {'ecg'};%{'ankleR','wristR','wristL','ecg','sync','oxycon'};





