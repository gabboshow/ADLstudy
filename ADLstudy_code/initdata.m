% ---------------------------------------------------------------------
% initdata: Sensatron validation
% ---------------------------------------------------------------------
clear Repository;

% Configure path to data files
setrepositorypath;


% Classes
Repository.Classlist = { ...
    'Sync',...          %1
    'Clapping',...      %2
    'Sitting',...       %3
    'Standing',...
    'Resting',... 
    'Putting socks',...
    'Putting shoes',...
    'Putting vest',... 
    'Removing vest',...
    'Walking (before stairs)',...
    'Climbing stairs',...
    'Walking (after stairs)',...
    'Walking (before dish)',...
    'Washing the dishes',...
    'Walking (after dish)',...
    'Walking (before the groceries)',...
    'Putting the groceries in the basket)'...
    'Walking with the groeceries'...         
    'Walking (after groeceries)'...         
    'Walking (before towels)'...
    'Folding towels'...
    'Walking (after towels)'...
    'Walking (before vacuum cleaner)'...
    'Vacuum cleaning'...
    'Walking (after vacuum cleaner)'...
    };

Repository.Classnames = Repository.Classlist;



% CLASS IDs
Repository.TargetClasses = [1:25];
% Repository.SyncClasses = strmatch('Sync', Repository.Classlist);


%% PART IDs

Repository.UseParts = [1];




% ---------------------------------------------------------------------

clear Template_Assoc*;



% Repository entries
RepEntry = [];
clear Index;

% ---------------------------------------------------------------------
% ---------------------------------------------------------------------
% Begin of valid entries
% ---------------------------------------------------------------------
% ---------------------------------------------------------------------



% ---------------------------------------------------------------------
% Test recordings, 03-04-2013
% Eindhoven
% ---------------------------------------------------------------------

% labeling checklist:  Sync:   Activity:
% Participant: Patient_1
Index = 1; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR' };        % 'MATLABMERGED_Shimmer'
RepEntry(Index).Assoc.Shimmer_ECG1 = {'AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};

RepEntry(Index).File.Shimmer_ECG1 = [ 'SensorData' filesep 'Shimmer_ECG1.bin' ];
RepEntry(Index).File.Shimmer_WristL = [ 'SensorData' filesep 'Shimmer_WristL.bin' ];
RepEntry(Index).File.Shimmer_WristR = [ 'SensorData' filesep 'Shimmer_WristR.bin' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'SensorData' filesep 'Shimmer_AnkleR.bin' ];

RepEntry(Index).Dir.ALL = [ 'All' filesep 'Patient_1' ];
% RepEntry(Index).Source.MATLABMERGED_Shimmer = 'matlab';
RepEntry(Index).SFrq = 200;
RepEntry(Index).Subject = 'S1';
RepEntry(Index).Recdate = '20140616T115000';


% ---------------------------------------------------------------------
% End Of File
% ---------------------------------------------------------------------
Repository.RepEntries = RepEntry;   % store everything in Repository struct

% Clean up
clear Index RepEntry;
clear -regexp ^Assoc;

