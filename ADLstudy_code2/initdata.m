% ---------------------------------------------------------------------
% initdata: ALDstudy
% ---------------------------------------------------------------------
clear Repository;

% Configure path to data files
setrepositorypath;


% Classes
Repository.Classlist = { ...
    'Hit 5 times',...                               %1
    'Hit 3 times',...                               %2
    'Hit 2 times',...                               %3
    'Sit',...                                       %4
    'Stand',...                                     %5
    'Rest',...                                      %6
    'Put socks and shoes',...                       %7
    'Put vest',...                                  %8
    'Walk',...                                      %9
    'Climb stairs',...                              %10    
    'Wash dishes',...                               %11
    'Pack groceries',...                            %12
    'Walking with groeceries'...                    %13
    'Unpack groeceries'...                          %14
    'Fold towels'...                                %15
    'Prepare vacuum cleaner'...                     %16
    'Vacuum clean'...                               %17
    'Put away vacuum cleaner'...                    %18
    'Stop for exhaustion'...                        %19
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






% Test recordings, 16-06-2014
% CIRO+
% Participant: Patient_21
Index = 1; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync'}; 
% RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync', 'Oxycon' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'AccSyncx', 'AccSyncy', 'AccSyncz','Channel1Sync','Channel2Sync'};
% RepEntry(Index).Assoc.Oxycon = {'Time'};%, 'VO2', 'VCO2', 'RER', 'HR', 'VE','BF','VO2_kg','VDe','VTin','VTex','SPO2'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'SensorData' filesep 'Shimmer_ECG1.bin' ];
RepEntry(Index).File.Shimmer_WristL = [ 'SensorData' filesep 'Shimmer_WristL.bin' ];
RepEntry(Index).File.Shimmer_WristR = [ 'SensorData' filesep 'Shimmer_WristR.bin' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'SensorData' filesep 'Shimmer_AnkleR.bin' ];
RepEntry(Index).File.Shimmer_Sync = [ 'SensorData' filesep 'Shimmer_Sync.bin' ];
% RepEntry(Index).File.Oxycon = [ 'SensorData' filesep 'OXYCON_RESP_ONSETS.mat' ];

RepEntry(Index).Dir.ALL = [ 'All' filesep 'Patient_1' ];
RepEntry(Index).SFrq = 200;
% RepEntry(Index).SFrq = 170.67;
RepEntry(Index).Subject = 'S1';
RepEntry(Index).Recdate = '20140616T115000';

% Test recordings, 17-06-2014
% CIRO+
% Participant: Patient_2
Index = 2; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync' }; 
% RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync','Oxycon' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'AccSyncx', 'AccSyncy', 'AccSyncz','Channel1Sync','Channel2Sync'};
% RepEntry(Index).Assoc.Oxycon = {'Time'};%, 'VO2', 'VCO2', 'RER', 'HR', 'VE','BF','VO2_kg','VDe','VTin','VTex','SPO2'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'SensorData' filesep 'Shimmer_ECG1.bin' ];
RepEntry(Index).File.Shimmer_WristL = [ 'SensorData' filesep 'Shimmer_WristL.bin' ];
RepEntry(Index).File.Shimmer_WristR = [ 'SensorData' filesep 'Shimmer_WristR.bin' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'SensorData' filesep 'Shimmer_AnkleR.bin' ];
RepEntry(Index).File.Shimmer_Sync = [ 'SensorData' filesep 'Shimmer_Sync.bin' ];
% RepEntry(Index).File.Oxycon = [ 'SensorData' filesep 'OXYCON_RESP_ONSETS.mat' ];


RepEntry(Index).Dir.ALL = [ 'All' filesep 'Patient_2' ];
RepEntry(Index).SFrq = 200;
% RepEntry(Index).SFrq = 170.67;
RepEntry(Index).Subject = 'S2';
RepEntry(Index).Recdate = '20140617T125800';

% ---------------------------------------------------------------------
% End Of File
% ---------------------------------------------------------------------
Repository.RepEntries = RepEntry;   % store everything in Repository struct

% Clean up
clear Index RepEntry;
clear -regexp ^Assoc;













