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
Repository.TargetClasses = [1:19];
% Repository.SyncClasses = strmatch('Sync', Repository.Classlist);


%% PART IDs

Repository.UseParts = [4];




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



% Test recordings, 04-09-2014
% CIRO+
% Participant: ADL004B1 - Lenders
Index = 4; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync'}; 
% RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync', 'Oxycon' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'Timestamp','AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'Timestamp','AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'Timestamp','AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'Timestamp','AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'Timestamp','AccSyncx', 'AccSyncy', 'AccSyncz'};
% RepEntry(Index).Assoc.Oxycon = {'Time'};%, 'VO2', 'VCO2', 'RER', 'HR', 'VE','BF','VO2_kg','VDe','VTin','VTex','SPO2'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'Data_excel' filesep 'B1' filesep 'data_ecg.dat' ];
RepEntry(Index).File.Shimmer_WristL = [ 'Data_excel' filesep 'B1' filesep 'data_wristL.dat' ];
RepEntry(Index).File.Shimmer_WristR = [ 'Data_excel' filesep 'B1' filesep 'data_wristR.dat' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'Data_excel' filesep 'B1' filesep 'data_ankleR.dat' ];
RepEntry(Index).File.Shimmer_Sync = [ 'Data_excel' filesep 'B1' filesep 'data_sync.dat' ];
% RepEntry(Index).File.Oxycon = [ 'Data_excel' filesep 'B1' filesep 'data_oxycon.dat' ];

RepEntry(Index).Dir.ALL = 'ADL004';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S4';
RepEntry(Index).Recdate = '20140904T115000';

% Test recordings, 05-09-2014
% CIRO+
% Participant: ADL004B2 - Lenders
Index = 5; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync'}; 
% RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync', 'Oxycon' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'Timestamp','AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'Timestamp','AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'Timestamp','AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'Timestamp','AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'Timestamp','AccSyncx', 'AccSyncy', 'AccSyncz'};
% RepEntry(Index).Assoc.Oxycon = {'Time'};%, 'VO2', 'VCO2', 'RER', 'HR', 'VE','BF','VO2_kg','VDe','VTin','VTex','SPO2'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'Data_excel' filesep 'B2' filesep 'data_ecg.dat' ];
RepEntry(Index).File.Shimmer_WristL = [ 'Data_excel' filesep 'B2' filesep 'data_wristL.dat' ];
RepEntry(Index).File.Shimmer_WristR = [ 'Data_excel' filesep 'B2' filesep 'data_wristR.dat' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'Data_excel' filesep 'B2' filesep 'data_ankleR.dat' ];
RepEntry(Index).File.Shimmer_Sync = [ 'Data_excel' filesep 'B2' filesep 'data_sync.dat' ];
% RepEntry(Index).File.Oxycon = [ 'Data_excel' filesep 'B1' filesep 'data_oxycon.dat' ];

RepEntry(Index).Dir.ALL = 'ADL004';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S4';
RepEntry(Index).Recdate = '20140905T115000';

% ---------------------------------------------------------------------
% End Of File
% ---------------------------------------------------------------------
Repository.RepEntries = RepEntry;   % store everything in Repository struct

% Clean up
clear Index RepEntry;
clear -regexp ^Assoc;













