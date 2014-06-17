% ---------------------------------------------------------------------
% initdata: Sensatron validation
% ---------------------------------------------------------------------
clear Repository;

% Configure path to data files
setrepositorypath;


% Classes
Repository.Classlist = { ...
    'Sync',...                                      %1
    'Clapping',...                                  %2
    'Sitting',...                                   %3
    'Standing',...                                  %4
    'Resting',...                                   %5
    'Putting socks',...                             %6
    'Putting shoes',...                             %7
    'Putting vest',...                              %8
    'Removing vest',...                             %9
    'Walking (before stairs)',...                   %10
    'Climbing stairs',...                           %11
    'Walking (after stairs)',...                    %12
    'Walking (before dish)',...                     %13
    'Washing the dishes',...                        %14
    'Walking (after dish)',...                      %15
    'Walking (before the groceries)',...            %16
    'Putting the groceries in the basket'...        %17
    'Walking with the groeceries'...                %18
    'Walking (after groeceries)'...                 %19
    'Walking (before towels)'...                    %20
    'Folding towels'...                             %21
    'Walking (after towels)'...                     %22
    'Walking (before vacuum cleaner)'...            %23
    'Vacuum cleaning'...                            %24
    'Walking (after vacuum cleaner)'...             %25
    'Putting groceries in the fridge'...            %26
    'Stop for exhaustion'...                        %27
    'Preparing for vacuum cleaning'...              %28  (waking towards the vacuum cleaner, plugging the vacuum cleaner)
    'Putting in order after vacuum cleaning'...     %29  (removing the plug)
    };

Repository.Classnames = Repository.Classlist;



% CLASS IDs
Repository.TargetClasses = [1:29];
% Repository.SyncClasses = strmatch('Sync', Repository.Classlist);


%% PART IDs

Repository.UseParts = [1:2];




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
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'AccSyncx', 'AccSyncy', 'AccSyncz','Channel1Sync','Channel2Sync'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'SensorData' filesep 'Shimmer_ECG1.bin' ];
RepEntry(Index).File.Shimmer_WristL = [ 'SensorData' filesep 'Shimmer_WristL.bin' ];
RepEntry(Index).File.Shimmer_WristR = [ 'SensorData' filesep 'Shimmer_WristR.bin' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'SensorData' filesep 'Shimmer_AnkleR.bin' ];
RepEntry(Index).File.Shimmer_Sync = [ 'SensorData' filesep 'Shimmer_Sync.bin' ];

RepEntry(Index).Dir.ALL = [ 'All' filesep 'Patient_1' ];
RepEntry(Index).SFrq = 200;
RepEntry(Index).Subject = 'S1';
RepEntry(Index).Recdate = '20140616T115000';

% labeling checklist:  Sync:   Activity:
% Participant: Patient_1
Index = 2; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'AccSyncx', 'AccSyncy', 'AccSyncz','Channel1Sync','Channel2Sync'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'SensorData' filesep 'Shimmer_ECG1.bin' ];
RepEntry(Index).File.Shimmer_WristL = [ 'SensorData' filesep 'Shimmer_WristL.bin' ];
RepEntry(Index).File.Shimmer_WristR = [ 'SensorData' filesep 'Shimmer_WristR.bin' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'SensorData' filesep 'Shimmer_AnkleR.bin' ];
RepEntry(Index).File.Shimmer_Sync = [ 'SensorData' filesep 'Shimmer_Sync.bin' ];

RepEntry(Index).Dir.ALL = [ 'All' filesep 'Patient_2' ];
RepEntry(Index).SFrq = 200;
RepEntry(Index).Subject = 'S2';
RepEntry(Index).Recdate = '20140617T125800';

% ---------------------------------------------------------------------
% End Of File
% ---------------------------------------------------------------------
Repository.RepEntries = RepEntry;   % store everything in Repository struct

% Clean up
clear Index RepEntry;
clear -regexp ^Assoc;

