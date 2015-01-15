function [fileList, subfoldList] = getAllFiles(dirName)

    
    dirData = dir(dirName);                             %# Get the data for the current directory
    dirIndex = [dirData.isdir];                         %# Find the index for directories
    fileList = {dirData(~dirIndex).name}';              %'# Get a list of the files
    if ~isempty(fileList)
        fileList = cellfun(@(x) fullfile(dirName,x),... %# Prepend path to files
            fileList,'UniformOutput',false);
    end
    subDirs = {dirData(dirIndex).name};                 %# Get a list of the subdirectories
    validIndex = ~ismember(subDirs,{'.','..'});         %# Find index of subdirectories
                                                        %#   that are not '.' or '..'
    subfoldList = [];                                                        
    for iDir = find(validIndex)                         %# Loop over valid subdirectories
        nextDir = fullfile(dirName,subDirs{iDir});      %# Get the subdirectory path
        file = getAllFiles2(nextDir);
        sub=cell(length(file),1);
        for j = 1:length(file)
            sub{j}=subDirs{iDir};
        end
        subfoldList = [subfoldList; sub];
        fileList = [fileList; file];    %# Recursively call getAllFiles
    end
    
    % check for hidden files and remove them
    indexremove = 1;
    removefileList = [];
    for i = 1: length(fileList)
        
       slash = find(fileList{i}==filesep);
       if fileList{i}(slash(end)+1)=='.'
           removefileList(indexremove) = i;
           indexremove = indexremove +1;
       end
        
        
    end
    
    fileList(removefileList) = [];
    subfoldList(removefileList) = [];
end