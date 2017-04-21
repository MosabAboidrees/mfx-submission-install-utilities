%--------------------------------------------------------------------------
% Test_AddSubmissionContents
% Testing function for AddSubmissionContents
%--------------------------------------------------------------------------
% Primary Contributor: Daniel R. Herber, Graduate Student, University of 
% Illinois at Urbana-Champaign
% Link: https://github.com/danielrherber/mfx-submission-install-utilities
%--------------------------------------------------------------------------
clear
clc
close all

% see if the test file is in your path
try
    TestFile
catch
    disp('X Test file is NOT in your path')
end

% run
AddSubmissionContents(mfilename)

% see if the test file is in your path
try
    TestFile
catch
    disp('X Test file is NOT in your path')
end