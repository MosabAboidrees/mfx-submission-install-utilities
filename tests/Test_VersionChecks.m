%--------------------------------------------------------------------------
% Test_VersionChecks
% Testing function for Test_VersionChecks
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

%% test 1: no failures (on recent matlab versions)
test(1).toolbox = 'matlab';
test(1).version = '8.4';
test(2).toolbox = 'simulink';
test(2).version = '4.0';
VersionChecks(test)
disp(' ')

%% test 2: failure in one version
test(1).toolbox = 'matlab';
test(1).version = '8.4';
test(2).toolbox = 'simulink';
test(2).version = '10000';
VersionChecks(test)
disp(' ')

%% test 3: error in one version
test(1).toolbox = 'simulinkk';
test(1).version = '4.0';
test(2).toolbox = 'matlab';
test(2).version = '8.4';
VersionChecks(test)