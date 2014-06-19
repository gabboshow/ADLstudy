% Configure path to data files (load in initdata.m)

% this is unix/linux

UserName = getusername;

switch lower(UserName)
        
    case 'gabbo' % change username and path according to your platform/machine
        % Change this after SVN checkout
        Repository.Path = '/media/Elements/Gabriele/ADL_study/';
        
    case 'gspina' % change username and path according to your platform/machine
        % Change this after SVN checkout
%         Repository.Path = '/home/nas01/datasets/Gabriele_Smartscope3/';    
        
    case '$user'
        Repository.Path = 'E:\Gabriele\ADL_study';    
        
    otherwise
        fprintf('\n%s: System returned UserName "%s".', mfilename, lower(UserName));
        fprintf('\n%s: Cannot determine repository dataset path, setting default.', mfilename);
        Repository.Path = '../data';
end;

clear ret;



