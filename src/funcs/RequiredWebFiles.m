%--------------------------------------------------------------------------
% RequiredWebFiles
% 
%--------------------------------------------------------------------------
% Should be directly included as a subfunction in the INSTALL file
%--------------------------------------------------------------------------
% Primary Contributor: Daniel R. Herber, Graduate Student, University of 
% Illinois at Urbana-Champaign
% https://github.com/danielrherber/mfx-submission-install-utilities
%--------------------------------------------------------------------------
function RequiredWebFiles
	disp('--- Obtaining required web files')

    % initialize index
    ind = 0;
    
    % initialize structure
    files = struct('url','','folder','');
    
    % file 1
% 	ind = ind + 1; % increment
% 	files(ind).url = '';
% 	files(ind).folder = '';
    
    % file 2
%   ind = ind + 1; % increment
% 	files(ind).url = '';
% 	files(ind).folder = '';
    
	% obtain full function path
	full_fun_path = which(mfilename('fullpath'));
	outputdir = fullfile(fileparts(full_fun_path),'include');

	% download
	DownloadWebFiles(files,outputdir)
    
    disp(' ')
end