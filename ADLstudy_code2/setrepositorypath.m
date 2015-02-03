% Configure path to data files (load in initdata.m)

% this is unix/linux

UserName = getusername;

switch lower(UserName)
        
    case 'gabbo' 
        error('Set path');
        
    case 'gspina'
        error('Set path');
        
    case '310153563'
        Repository.Path = '/home/2012-0362_icare4copd/datasets/ADLstudy/';          
        
    case '$user'
        Repository.Path = '\\code1\storage\2012-0362_icare4copd_ux\datasets\ADLstudy\';    
        
    otherwise
        fprintf('\n%s: System returned UserName "%s".', mfilename, lower(UserName));
        fprintf('\n%s: Cannot determine repository dataset path, setting default.', mfilename);
        error('Set path');
end;

clear ret;



