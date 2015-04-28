machine = 1; % 0 Laptop, 1 Philips windows, 2 Philips clusters

switch machine
    case 0
        path = '/media/Elements/Gabriele/nas01/datasets/ADLStudy/';
    case 1
        path = '\\code1\storage\2012-0362_icare4copd_ux\datasets\ADLstudy\';
    case 2
        path = '/home/2012-0362_icare4copd/datasets/ADLstudy/';
end

tests = {'E'};
sensors = {'ecg','wristL','wristR','ankleR','sync'};


% tests = {'B1'};
% sensors = {'ankleR'};


