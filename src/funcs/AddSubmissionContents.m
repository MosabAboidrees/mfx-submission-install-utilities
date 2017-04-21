%--------------------------------------------------------------------------
% AddSubmissionContents
% Adds all the contents of the current folder and subfolders relative to 
% the file the function is called from. To add all the project files to 
% your path, make sure the INSTALL file calling this function is in the
% root folder of the submission.
%--------------------------------------------------------------------------
% Should be directly included as a subfunction in the INSTALL file
%--------------------------------------------------------------------------
% Primary Contributor: Daniel R. Herber, Graduate Student, University of 
% Illinois at Urbana-Champaign
% https://github.com/danielrherber/mfx-submission-install-utilities
%--------------------------------------------------------------------------
function AddSubmissionContents(name)
	disp('--- Adding submission contents to path')
	disp(' ')

	% current file
	fullfuncdir = which(name);

	% current folder 
	submissiondir = fullfile(fileparts(fullfuncdir));

	% add folders and subfolders to path
	addpath(genpath(submissiondir)) 
end