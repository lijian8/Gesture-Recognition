%% Extract many matrices 
% This script uses as reference the base scripts matlabViewer and 
% extracts a sequence of zip video files 
% INPUT: 1. set lla variable from within the script (see line 24)
%        2. when executing, give the folder path where the coeffs lie
% OUTPUT: Every zip file from the dataset is extracted. The output is a 
%         .mat file with general information on each video sequence and a 
%         folder with .mat files, which hold information on each specific 
%         frame of the video sequence
% ** Chalearn 2013 Challenge **

% Specify the path to folder with zip files 
[filenamewhatever,path] = uigetfile('*.zip');

%% Redundant Information. Was put to "simulate the functionality of dataViewer.m"
hObject = 174.0020;
handles.figure1 = 173.0026;
handles.text = 3.0027;
handles.exportData = 2.0027;
handles.soundButton = 1.0027;
handles.playButton = 0.0027;
handles.loadButton = 174.0026;
handles.output = 173.0026;

%% Gestures sequences to be extracted
% Load all zips from file , eg. [300:400] extracts Sample300.zip -
% Sample400.zip
% ex. lla = [510 516:539 541:550 552:610]; % 641:648 651 653:..684:689
lla = [ 697:710];

for j = 1:length(lla)
    
    i = lla(j);
    
    % load each zip file
    %zip_path = sprintf('%s/', path);
    filename = sprintf('Sample%05d.zip', i);
    
    eventdata = [];
    handles = loadButton_Callback(hObject, eventdata, handles, filename, path);
    
    handles
    % ... and export it to mat files :P
    exportData_Callback(hObject, eventdata, handles)
end
