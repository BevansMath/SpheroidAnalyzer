% Start with a folder and get a list of all subfolders.
% Finds and prints names of all PNG, JPG, and TIF images in 
% that folder and all of its subfolders.
clc;    % Clear the command window.
workspace;  % Make sure the workspace panel is showing.
format longg;
format compact;

% Define a starting folder.
start_path = fullfile(matlabroot, 'C\Users\18606\OneDrive\Documents\MATLAB\Spheroids For Brandon\1-8WT');
% Ask user to confirm or change.
topLevelFolder = uigetdir(start_path);
if topLevelFolder == 0
	return;
end
% Get list of all subfolders.
allSubFolders = genpath(topLevelFolder);
% Parse into a cell array.
remain = allSubFolders;
listOfFolderNames = {};
while true
	[singleSubFolder, remain] = strtok(remain, ';');
	if isempty(singleSubFolder)
		break;
	end
	listOfFolderNames = [listOfFolderNames singleSubFolder];
end
numberOfFolders = length(listOfFolderNames);

% Process all image files in those folders.
for k = 1 : numberOfFolders
	% Get this folder and print it out.
	thisFolder = listOfFolderNames{k};
	fprintf('Processing folder %s\n', thisFolder);
	
	% Add on TIF files.
	filePattern = sprintf('%s/*.tif', thisFolder);
	baseFileNames = [baseFileNames; dir(filePattern)];
	
	I = length(baseFileNames);
	% Now we have a list of all files in this folder.
	
	if I >= 1
		% Go through all those image files.
		for f = 1 : I
			fullFileName = fullfile(thisFolder, baseFileNames(f).name);
			fprintf('Processing image file %s\n', fullFileName);
		end
	else
		fprintf('Folder %s has no image files in it.\n', thisFolder);
    

	for j = 1 : numberOfImageFiles
        J = imread(numberOfImageFiles{j});
        run "RawData.m";
    end

    end
    destDir = 'C:\Users\18606\OneDrive\Documents\MATLAB\Results';
    mkdir(destDir);
    fulldestination = fullfile(destDir, numberOfImageFiles);
    imwrite(numberOfImageFiles, fulldestination);
    

end
    

