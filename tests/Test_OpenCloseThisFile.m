%--------------------------------------------------------------------------
% Test_OpenCloseThisFile
% Testing function for OpenThisFile and CloseThisFile
%--------------------------------------------------------------------------
% Primary Contributor: Daniel R. Herber, Graduate Student, University of 
% Illinois at Urbana-Champaign
% Link: https://github.com/danielrherber/mfx-submission-install-utilities
%--------------------------------------------------------------------------
clear
clc
close all

% close this file
CloseThisFile(mfilename)

% wait 1 second
pause(1)

% close this file
OpenThisFile(mfilename)

% open another file
OpenThisFile('Test_DownloadWebFiles')

% wait 1 second
pause(1)

% close the opened file
CloseThisFile('Test_DownloadWebFiles')

% try to open an unknown file
OpenThisFile('ErrorFileName')

% try to close an unknown file
CloseThisFile('ErrorFileName')