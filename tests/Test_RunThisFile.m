%--------------------------------------------------------------------------
% Test_RunThisFile
% Testing function for RunThisFile
%--------------------------------------------------------------------------
% 
%--------------------------------------------------------------------------
% Primary Contributor: Daniel R. Herber, Graduate Student, University of 
% Illinois at Urbana-Champaign
% Link: https://github.com/danielrherber/mfx-submission-install-utilities
%--------------------------------------------------------------------------
clear
clc
close all

% normal case
RunThisFile('TestFile')

% error case
RunThisFile('ErrorFile')