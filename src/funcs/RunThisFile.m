%--------------------------------------------------------------------------
% RunThisFile
% Runs the specified file
%--------------------------------------------------------------------------
% Should be directly included as a subfunction in the INSTALL file
%--------------------------------------------------------------------------
% Primary Contributor: Daniel R. Herber, Graduate Student, University of 
% Illinois at Urbana-Champaign
% https://github.com/danielrherber/mfx-submission-install-utilities
%--------------------------------------------------------------------------
function RunThisFile(name)
	disp(['--- Running ', name])

	try
	    % run the file
	    run(name);
	catch % error
	    disp(['Could not run ', name])
	end

	disp(' ')
end