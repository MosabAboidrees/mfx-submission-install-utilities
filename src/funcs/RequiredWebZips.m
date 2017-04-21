%--------------------------------------------------------------------------
% RequiredWebZips
% 
%--------------------------------------------------------------------------
% Should be directly included as a subfunction in the INSTALL file
%--------------------------------------------------------------------------
% Primary Contributor: Daniel R. Herber, Graduate Student, University of 
% Illinois at Urbana-Champaign
% https://github.com/danielrherber/mfx-submission-install-utilities
%--------------------------------------------------------------------------
function RequiredWebZips
	disp('--- Obtaining required web zips')

    % initialize index
	ind = 0;

    % initialize structure
    zips = struct('url','','folder','','test','');
    
    % zip 1
% 	ind = ind + 1; % increment
% 	zips(ind).url = '';
% 	zips(ind).name = '';
% 	zips(ind).test = '';

    % zip 2
% 	ind = ind + 1; % increment
% 	zips(ind).url = '';
% 	zips(ind).name = '';
% 	zips(ind).test = '';

	% obtain full function path
	full_fun_path = which(mfilename('fullpath'));
	outputdir = fullfile(fileparts(full_fun_path),'include');

	% download and unzip
	DownloadWebZips(zips,outputdir)

	disp(' ')
end