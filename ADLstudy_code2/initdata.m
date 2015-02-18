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
Repository.TargetClasses = 1:19;
% Repository.SyncClasses = strmatch('Sync', Repository.Classlist);


%% PART IDs

Repository.UseParts = 4:13;




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

% Test recordings, 27-10-2014
% CIRO+
% Participant: ADL004E - Lenders
Index = 6; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync'}; 
% RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync', 'Oxycon' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'Timestamp','AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'Timestamp','AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'Timestamp','AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'Timestamp','AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'Timestamp','AccSyncx', 'AccSyncy', 'AccSyncz'};
% RepEntry(Index).Assoc.Oxycon = {'Time'};%, 'VO2', 'VCO2', 'RER', 'HR', 'VE','BF','VO2_kg','VDe','VTin','VTex','SPO2'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'Data_excel' filesep 'E' filesep 'data_ecg.dat' ];
RepEntry(Index).File.Shimmer_WristL = [ 'Data_excel' filesep 'E' filesep 'data_wristL.dat' ];
RepEntry(Index).File.Shimmer_WristR = [ 'Data_excel' filesep 'E' filesep 'data_wristR.dat' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'Data_excel' filesep 'E' filesep 'data_ankleR.dat' ];
RepEntry(Index).File.Shimmer_Sync = [ 'Data_excel' filesep 'E' filesep 'data_sync.dat' ];
% RepEntry(Index).File.Oxycon = [ 'Data_excel' filesep 'B1' filesep 'data_oxycon.dat' ];

RepEntry(Index).Dir.ALL = 'ADL004';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S4';
RepEntry(Index).Recdate = '20141027T115000';

% Test recordings, 07-10-2014
% CIRO+
% Participant: ADL006B1 - Verstappen
Index = 7; 
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

RepEntry(Index).Dir.ALL = 'ADL006';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S6';
RepEntry(Index).Recdate = '20141007T081600';


% Test recordings, 08-10-2014
% CIRO+
% Participant: ADL006B2 - Verstappen
Index = 8; 
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

RepEntry(Index).Dir.ALL = 'ADL006';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S6';
RepEntry(Index).Recdate = '20141008T115000';


% Test recordings, 21-11-2014
% CIRO+
% Participant: ADL006E - Verstappen
Index = 9; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync'}; 
% RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync', 'Oxycon' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'Timestamp','AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'Timestamp','AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'Timestamp','AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'Timestamp','AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'Timestamp','AccSyncx', 'AccSyncy', 'AccSyncz'};
% RepEntry(Index).Assoc.Oxycon = {'Time'};%, 'VO2', 'VCO2', 'RER', 'HR', 'VE','BF','VO2_kg','VDe','VTin','VTex','SPO2'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'Data_excel' filesep 'E' filesep 'data_ecg.dat' ];
RepEntry(Index).File.Shimmer_WristL = [ 'Data_excel' filesep 'E' filesep 'data_wristL.dat' ];
RepEntry(Index).File.Shimmer_WristR = [ 'Data_excel' filesep 'E' filesep 'data_wristR.dat' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'Data_excel' filesep 'E' filesep 'data_ankleR.dat' ];
RepEntry(Index).File.Shimmer_Sync = [ 'Data_excel' filesep 'E' filesep 'data_sync.dat' ];
% RepEntry(Index).File.Oxycon = [ 'Data_excel' filesep 'B1' filesep 'data_oxycon.dat' ];

RepEntry(Index).Dir.ALL = 'ADL006';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S6';
RepEntry(Index).Recdate = '20150205T080400';


% Test recordings, 15-10-2014
% CIRO+
% Participant: ADL007B1 - Driessen-van den Broek
Index = 10; 
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

RepEntry(Index).Dir.ALL = 'ADL007';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S7';
RepEntry(Index).Recdate = '20141015T082100';


% Test recordings, 17-10-2014
% CIRO+
% Participant: ADL007B2 - Driessen-van den Broek
Index = 11; 
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

RepEntry(Index).Dir.ALL = 'ADL007';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S7';
RepEntry(Index).Recdate = '20141017T090800';


% Test recordings, 28-11-2014
% CIRO+
% Participant: ADL007E - Driessen-van den Broek
Index = 12; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync'}; 
% RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync', 'Oxycon' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'Timestamp','AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'Timestamp','AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'Timestamp','AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'Timestamp','AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'Timestamp','AccSyncx', 'AccSyncy', 'AccSyncz'};
% RepEntry(Index).Assoc.Oxycon = {'Time'};%, 'VO2', 'VCO2', 'RER', 'HR', 'VE','BF','VO2_kg','VDe','VTin','VTex','SPO2'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'Data_excel' filesep 'E' filesep 'data_ecg.dat' ];
RepEntry(Index).File.Shimmer_WristL = [ 'Data_excel' filesep 'E' filesep 'data_wristL.dat' ];
RepEntry(Index).File.Shimmer_WristR = [ 'Data_excel' filesep 'E' filesep 'data_wristR.dat' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'Data_excel' filesep 'E' filesep 'data_ankleR.dat' ];
RepEntry(Index).File.Shimmer_Sync = [ 'Data_excel' filesep 'E' filesep 'data_sync.dat' ];
% RepEntry(Index).File.Oxycon = [ 'Data_excel' filesep 'B1' filesep 'data_oxycon.dat' ];

RepEntry(Index).Dir.ALL = 'ADL007';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S7';
RepEntry(Index).Recdate = '20151128T084700';


% Test recordings, 22-10-2014
% CIRO+
% Participant: ADL008B1 - Stoffers
Index = 13; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync'}; 
% RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync', 'Oxycon' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'Timestamp','AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'Timestamp','AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'Timestamp','AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'Timestamp','AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'Timestamp','AccSyncx', 'AccSyncy', 'AccSyncz'};
% RepEntry(Index).Assoc.Oxycon = {'Time'};%, 'VO2', 'VCO2', 'RER', 'HR', 'VE','BF','VO2_kg','VDe','VTin','VTex','SPO2'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'Data_excel' filesep 'E' filesep 'data_ecg.dat' ];
RepEntry(Index).File.Shimmer_WristL = [ 'Data_excel' filesep 'E' filesep 'data_wristL.dat' ];
RepEntry(Index).File.Shimmer_WristR = [ 'Data_excel' filesep 'E' filesep 'data_wristR.dat' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'Data_excel' filesep 'E' filesep 'data_ankleR.dat' ];
RepEntry(Index).File.Shimmer_Sync = [ 'Data_excel' filesep 'E' filesep 'data_sync.dat' ];
% RepEntry(Index).File.Oxycon = [ 'Data_excel' filesep 'B1' filesep 'data_oxycon.dat' ];

RepEntry(Index).Dir.ALL = 'ADL008';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S8';
RepEntry(Index).Recdate = '20141022T093700';


% Test recordings, 23-10-2014
% CIRO+
% Participant: ADL008B2 - Stoffers
Index = 14; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync'}; 
% RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync', 'Oxycon' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'Timestamp','AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'Timestamp','AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'Timestamp','AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'Timestamp','AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'Timestamp','AccSyncx', 'AccSyncy', 'AccSyncz'};
% RepEntry(Index).Assoc.Oxycon = {'Time'};%, 'VO2', 'VCO2', 'RER', 'HR', 'VE','BF','VO2_kg','VDe','VTin','VTex','SPO2'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'Data_excel' filesep 'E' filesep 'data_ecg.dat' ];
RepEntry(Index).File.Shimmer_WristL = [ 'Data_excel' filesep 'E' filesep 'data_wristL.dat' ];
RepEntry(Index).File.Shimmer_WristR = [ 'Data_excel' filesep 'E' filesep 'data_wristR.dat' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'Data_excel' filesep 'E' filesep 'data_ankleR.dat' ];
RepEntry(Index).File.Shimmer_Sync = [ 'Data_excel' filesep 'E' filesep 'data_sync.dat' ];
% RepEntry(Index).File.Oxycon = [ 'Data_excel' filesep 'B1' filesep 'data_oxycon.dat' ];

RepEntry(Index).Dir.ALL = 'ADL008';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S8';
RepEntry(Index).Recdate = '20141023T082100';


% Test recordings, 25-12-2014
% CIRO+
% Participant: ADL008E - Stoffers
Index = 15; 
RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync'}; 
% RepEntry(Index).Systems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync', 'Oxycon' }; 
RepEntry(Index).Assoc.Shimmer_ECG1 = {'Timestamp','AccECG1x', 'AccECG1y', 'AccECG1z','Channel1ECG1','Channel2ECG1'};
RepEntry(Index).Assoc.Shimmer_WristL = {'Timestamp','AccWristLx', 'AccWristLy', 'AccWristLz','GyroWristLx', 'GyroWristLy', 'GyroWristLz',};
RepEntry(Index).Assoc.Shimmer_WristR = {'Timestamp','AccWristRx', 'AccWristRy', 'AccWristRz','GyroWristRx', 'GyroWristRy', 'GyroWristRz',};
RepEntry(Index).Assoc.Shimmer_AnkleR = {'Timestamp','AccAnkleRx', 'AccAnkleRy', 'AccAnkleRz','GyroAnkleRx', 'GyroAnkleRy', 'GyroAnkleRz',};
RepEntry(Index).Assoc.Shimmer_Sync = {'Timestamp','AccSyncx', 'AccSyncy', 'AccSyncz'};
% RepEntry(Index).Assoc.Oxycon = {'Time'};%, 'VO2', 'VCO2', 'RER', 'HR', 'VE','BF','VO2_kg','VDe','VTin','VTex','SPO2'};

RepEntry(Index).File.Shimmer_ECG1 = [ 'Data_excel' filesep 'E' filesep 'data_ecg.dat' ];
RepEntry(Index).File.Shimmer_WristL = [ 'Data_excel' filesep 'E' filesep 'data_wristL.dat' ];
RepEntry(Index).File.Shimmer_WristR = [ 'Data_excel' filesep 'E' filesep 'data_wristR.dat' ];
RepEntry(Index).File.Shimmer_AnkleR = [ 'Data_excel' filesep 'E' filesep 'data_ankleR.dat' ];
RepEntry(Index).File.Shimmer_Sync = [ 'Data_excel' filesep 'E' filesep 'data_sync.dat' ];
% RepEntry(Index).File.Oxycon = [ 'Data_excel' filesep 'B1' filesep 'data_oxycon.dat' ];

RepEntry(Index).Dir.ALL = 'ADL008';
RepEntry(Index).SFrq = 170.70;
RepEntry(Index).Subject = 'S8';
RepEntry(Index).Recdate = '20141225T083400';


% ---------------------------------------------------------------------
% End Of File
% ---------------------------------------------------------------------
Repository.RepEntries = RepEntry;   % store everything in Repository struct

% Clean up
clear Index RepEntry;
clear -regexp ^Assoc;













