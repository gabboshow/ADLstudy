% st_marker
%
% run via:
% 
%   Partindex = 1; st_marker;
% 
% Launch audio data prep:
% 
%   DefAllSystems = {'WAV'}; MarkerFileLocation = ''; Partlist = 1; main_prepmarker
% 
% requires Partindex;

initdata;
UseSystems = { 'Shimmer_ECG1', 'Shimmer_WristL', 'Shimmer_WristR', 'Shimmer_AnkleR','Shimmer_Sync' };

% really launch marker
if ~exist('DoLaunch','var'), DoLaunch = true; end;

% load Shimmer data
fprintf('\n%s: Loading...', mfilename);
clear('FeatureSet', 'DTable');
for i = 1:length(UseSystems)
    fprintf('\n%s:    Processing %s...', mfilename, UseSystems{i})
%     [FeatureSet{i} datasps DTable{i}] = repos_loaddata(Repository, Partindex, UseSystems{i}, 'orgsps', 200);
    [FeatureSet{i} datasps DTable{i}] = repos_loaddata_calib(Repository, Partindex, UseSystems{i}, 'orgsps', 170.67);
    if any(isnan(FeatureSet{i})), error('NaNs found.'); end;
    if isempty(FeatureSet{i}), fprintf('\n%s: Data field is empty.', mfilename); end;
end;

% % load WAV data
% markerdata_filename = findmarkerdatafile(Repository, Partindex);
% if ~exist(markerdata_filename, 'file'), 
% 	fprintf('\n%s: MARKERDATA not found. Exiting.', mfilename);
%     error('MARKERDATA not found.');
% end;
% fprintf('\n%s: Loading Marker feature data...', mfilename);
% tmp = loadin(markerdata_filename, 'FeatureSet');
% FeatureSet(:,end+1) = tmp;
% tmp = loadin(markerdata_filename, 'SysFeatureString');
% DTable{end+1} = tmp{1};





if (datasps ~= repos_getfield(Repository, Partindex, 'SFrq'))
	error('Mismatch in data rate settings: Data and repos differs.');
end;


% optionally standardise features
if test('StandardiseData') && (StandardiseData)
	fprintf('\n%s: Standardise features...', mfilename);
    
    FeatureSet_Shimmer = zscore(FeatureSet_Shimmer);
    FeatureSet_Nonin = zscore(FeatureSet_Nonin);
end;


% load allSegLabels
% adapt begin of data (data alignment)
[alignshift alignsps alignrate plottypes found] = repos_getalignment(Repository, Partindex);


% fetch initlabels, labelsps
labelsps = repos_getmarkersps(Repository, Partindex, 'singlesps', true);
initlabels = repos_getlabellist(Repository, Partindex);
% initlabels = seg;
if ~isempty(initlabels)
	fprintf('\n%s: Found %u labels.', mfilename, size(initlabels,1));
end;


if (labelsps ~= datasps) && (~isempty(initlabels))
	fprintf('\n%s: WARNING: Sampling rate of labels (%uHz) and data (%uHz) differs, correcting labels.', ...
		mfilename, labelsps, datasps);

	initlabels = segment_resample(initlabels, labelsps, datasps, 'segmentmode', true);
end;



% ------------------------------------------------------------------
% setup plots
% ------------------------------------------------------------------
clear drawerobj;
viewsize = 30; % initial view in seconds

% setup marker drawerobj

%% PLOT 1: SHIMMER ECG1 ACCELERATION XYZ (acceleration left upper arm)
plotnr = 1; system = 'Shimmer_ECG1';  ylabel = 'ShimmeECG1_Channel2';
% plotnr = 1; system = 'Shimmer_ECG1';  ylabel = 'ShimmeECG1_AccXYZ';

available_channels = 1:length(DTable{plotnr});
show_channels = strmatch('Channel2ECG1', DTable{plotnr}(available_channels));
% show_channels = strmatch('AccECG1', DTable{plotnr}(available_channels));

%drawerobj.disp(plotnr).ylim = [-50 50]; % for acc data
% drawerobj.disp(plotnr).hideplot = true;
drawerobj.disp(plotnr).type = system;  drawerobj.disp(plotnr).ylabel = ylabel;
drawerobj.disp(plotnr).data = FeatureSet{plotnr}(:, available_channels);
drawerobj.disp(plotnr).sfreq = datasps;
drawerobj.disp(plotnr).xvisible = drawerobj.disp(plotnr).sfreq*viewsize;
drawerobj.disp(plotnr).signalnames = DTable{plotnr}(available_channels);
drawerobj.disp(plotnr).alignshift = alignshift(plotnr);
drawerobj.disp(plotnr).alignsps = alignsps(plotnr);
drawerobj.disp(plotnr).hidesignal = true(1,length(drawerobj.disp(plotnr).signalnames));
drawerobj.disp(plotnr).hidesignal(show_channels) = false;


%% PLOT 2:
plotnr = 2; system = 'Shimmer_WristL';  ylabel = 'ShimmeWristL_AccXYZ';

available_channels = 1:length(DTable{plotnr});
show_channels = strmatch('AccWristL', DTable{plotnr}(available_channels));

%drawerobj.disp(plotnr).ylim = [-50 50]; % for acc data
% drawerobj.disp(plotnr).hideplot = true;
drawerobj.disp(plotnr).type = system;  drawerobj.disp(plotnr).ylabel = ylabel;
drawerobj.disp(plotnr).data = FeatureSet{plotnr}(:, available_channels);
drawerobj.disp(plotnr).sfreq = datasps;
drawerobj.disp(plotnr).xvisible = drawerobj.disp(plotnr).sfreq*viewsize;
drawerobj.disp(plotnr).signalnames = DTable{plotnr}(available_channels);
drawerobj.disp(plotnr).alignshift = alignshift(plotnr);
drawerobj.disp(plotnr).alignsps = alignsps(plotnr);
drawerobj.disp(plotnr).hidesignal = true(1,length(drawerobj.disp(plotnr).signalnames));
drawerobj.disp(plotnr).hidesignal(show_channels) = false;


%% PLOT 3: 
plotnr = 3; system = 'Shimmer_WristR';  ylabel = 'ShimmerWristR_AccXYZ';

available_channels = 1:length(DTable{plotnr});
show_channels = strmatch('AccWristR', DTable{plotnr}(available_channels));

%drawerobj.disp(plotnr).ylim = [-50 50]; % for acc data
% drawerobj.disp(plotnr).hideplot = true;
drawerobj.disp(plotnr).type = system;  drawerobj.disp(plotnr).ylabel = ylabel;
drawerobj.disp(plotnr).data = FeatureSet{plotnr}(:, available_channels);
drawerobj.disp(plotnr).sfreq = datasps;
drawerobj.disp(plotnr).xvisible = drawerobj.disp(plotnr).sfreq*viewsize;
drawerobj.disp(plotnr).signalnames = DTable{plotnr}(available_channels);
drawerobj.disp(plotnr).alignshift = alignshift(plotnr);
drawerobj.disp(plotnr).alignsps = alignsps(plotnr);
drawerobj.disp(plotnr).hidesignal = true(1,length(drawerobj.disp(plotnr).signalnames));
drawerobj.disp(plotnr).hidesignal(show_channels) = false;


%% PLOT 4: 
plotnr = 4; system = 'Shimmer_AnkleR';  ylabel = 'ShimmerAnkleR_AccXYZ';

available_channels = 1:length(DTable{plotnr});
show_channels = strmatch('AccAnkleR', DTable{plotnr}(available_channels));

%drawerobj.disp(plotnr).ylim = [-50 50]; % for acc data
% drawerobj.disp(plotnr).hideplot = true;
drawerobj.disp(plotnr).type = system;  drawerobj.disp(plotnr).ylabel = ylabel;
drawerobj.disp(plotnr).data = FeatureSet{plotnr}(:, available_channels);
drawerobj.disp(plotnr).sfreq = datasps;
drawerobj.disp(plotnr).xvisible = drawerobj.disp(plotnr).sfreq*viewsize;
drawerobj.disp(plotnr).signalnames = DTable{plotnr}(available_channels);
drawerobj.disp(plotnr).alignshift = alignshift(plotnr);
drawerobj.disp(plotnr).alignsps = alignsps(plotnr);
drawerobj.disp(plotnr).hidesignal = true(1,length(drawerobj.disp(plotnr).signalnames));
drawerobj.disp(plotnr).hidesignal(show_channels) = false;

%% PLOT 4: 
plotnr = 4; system = 'Shimmer_AnkleR';  ylabel = 'ShimmerAnkleR_AccXYZ';

available_channels = 1:length(DTable{plotnr});
show_channels = strmatch('AccAnkleR', DTable{plotnr}(available_channels));

%drawerobj.disp(plotnr).ylim = [-50 50]; % for acc data
% drawerobj.disp(plotnr).hideplot = true;
drawerobj.disp(plotnr).type = system;  drawerobj.disp(plotnr).ylabel = ylabel;
drawerobj.disp(plotnr).data = FeatureSet{plotnr}(:, available_channels);
drawerobj.disp(plotnr).sfreq = datasps;
drawerobj.disp(plotnr).xvisible = drawerobj.disp(plotnr).sfreq*viewsize;
drawerobj.disp(plotnr).signalnames = DTable{plotnr}(available_channels);
drawerobj.disp(plotnr).alignshift = alignshift(plotnr);
drawerobj.disp(plotnr).alignsps = alignsps(plotnr);
drawerobj.disp(plotnr).hidesignal = true(1,length(drawerobj.disp(plotnr).signalnames));
drawerobj.disp(plotnr).hidesignal(show_channels) = false;

%% PLOT 4: 
plotnr = 5; system = 'Shimmer_Sync';  ylabel = 'ShimmerSync_AccXYZ';

available_channels = 1:length(DTable{plotnr});
show_channels = strmatch('AccSync', DTable{plotnr}(available_channels));

%drawerobj.disp(plotnr).ylim = [-50 50]; % for acc data
% drawerobj.disp(plotnr).hideplot = true;
drawerobj.disp(plotnr).type = system;  drawerobj.disp(plotnr).ylabel = ylabel;
drawerobj.disp(plotnr).data = FeatureSet{plotnr}(:, available_channels);
drawerobj.disp(plotnr).sfreq = datasps;
drawerobj.disp(plotnr).xvisible = drawerobj.disp(plotnr).sfreq*viewsize;
drawerobj.disp(plotnr).signalnames = DTable{plotnr}(available_channels);
drawerobj.disp(plotnr).alignshift = alignshift(plotnr);
drawerobj.disp(plotnr).alignsps = alignsps(plotnr);
drawerobj.disp(plotnr).hidesignal = true(1,length(drawerobj.disp(plotnr).signalnames));
drawerobj.disp(plotnr).hidesignal(show_channels) = false;

% player = 1;  % player set 1
% drawerobj.disp(plotnr).playerdata(player).playerfun = @marker_player_playsound;
% drawerobj.disp(plotnr).playerdata(player).title = 'Play audio';
% drawerobj.disp(plotnr).playerdata(player).file = repos_getfilename(Repository, Partindex, 'WAV');
% drawerobj.disp(plotnr).playerdata(player).channel = repos_findassoc(Repository, Partindex, 'Mic', 'WAV');
% drawerobj.disp(plotnr).playerdata(player).gain = 1.3;



% ------------------------------------------------------------------
% misc settings
% ------------------------------------------------------------------

drawerobj.maxLabelNum = size(Repository.Classlist,2);
drawerobj.labelstrings = Repository.Classlist;
drawerobj.locklabels = isemptycell(Repository.Classlist);

% text menu instead of graphics: uncomment following line
drawerobj.consolemenus = false;

drawerobj.askbeforequit = false;
drawerobj.defaultsavetype = 1;
drawerobj.timeaxisunits = 'seconds';
%drawerobj.ismodified = true;

drawerobj.title = sprintf('Part: %3u, Subject: %s', Partindex, Repository.RepEntries(Partindex).Subject);
% drawerobj.title = sprintf('Part: %3u, Subject: %s, SimSetID: %s', Partindex, Repository.RepEntries(Partindex).Subject, SimSetID);

[fdir fname fext] = fileparts(repos_makefilename(Repository, 'indices', Partindex, 'prefix', 'MARKER', 'subdir', 'labels'));
drawerobj.iofilename = [fname fext];
drawerobj.defaultDir = fdir;

%%
if (DoLaunch)
    fprintf('\n%s: Launch Marker...', mfilename);
    marker(drawerobj, initlabels);
end;