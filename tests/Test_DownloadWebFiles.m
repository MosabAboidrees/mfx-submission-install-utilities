%--------------------------------------------------------------------------
% Test_DownloadWebFiles
% Testing function for DownloadWebFiles
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

% normal (m file)
files(1).url = 'http://www1.spms.ntu.edu.sg/~lilian/bookcodes/legen/lepoly.m';
files(1).folder = 'lepoly';
DownloadWebFiles(files,outputdir)

% repeat (m file)
clear files
files(1).url = 'http://www1.spms.ntu.edu.sg/~lilian/bookcodes/legen/lepoly.m';
files(1).folder = 'lepoly';
DownloadWebFiles(files,outputdir)

% normal (multiple files)
clear files
files(1).url = 'http://www.danielherber.com/img/footer/matlab_round.svg';
files(1).folder = 'SVG';
files(2).url = 'http://www.danielherber.com/img/footer/github_round.svg';
files(2).folder = 'SVG';
files(3).url = 'http://www1.spms.ntu.edu.sg/~lilian/bookcodes/legen/lepoly.m';
files(3).folder = 'lepoly';
DownloadWebFiles(files,outputdir)

% file does not exist
clear files
files(1).url = 'http://www.danielherber.com/img/footer/matlab_round_error.m';
files(1).folder = 'matlab_round_error';
DownloadWebFiles(files,outputdir)