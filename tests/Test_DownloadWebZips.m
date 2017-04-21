%--------------------------------------------------------------------------
% Test_DownloadWebZips
% Testing function for DownloadWebZips
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

% change current directory (so include can be removed)
cd ./.

% set outputdir
full_fun_path = which(mfilename('fullpath')); % obtain full function path
outputdir = fullfile(fileparts(full_fun_path),'include');
% clear the outputdir (if present)
try
    if exist(outputdir, 'dir')
        rmpath(genpath(outputdir))
        rmdir(outputdir,'s')
    end
catch
    disp('might be some remaining files')
end

% normal (multiple zips)
zips(1).url = 'https://github.com/altmany/export_fig/archive/master.zip';
zips(1).folder = 'MFX 23629';
zips(1).test = 'export_fig';
zips(2).url = 'http://www.mathworks.com/matlabcentral/mlc-downloads/downloads/submissions/40397/versions/7/download/zip/mfoldername_v2.zip';
zips(2).folder = 'MFX 40397';
zips(2).test = 'mfoldername';
DownloadWebZips(zips,outputdir)

% repeat (multiple zips)
DownloadWebZips(zips,outputdir)

% zip does not exist
clear zips
zips(1).url = 'http://www.danielherber.com/error.zip';
zips(1).folder = 'Error Case';
zips(1).test = 'error_func';
DownloadWebZips(zips,outputdir)