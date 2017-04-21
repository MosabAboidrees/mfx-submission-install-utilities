%--------------------------------------------------------------------------
% CloseThisFile
% Closes the specified file
%--------------------------------------------------------------------------
% Should be directly included as a subfunction in the INSTALL file
%--------------------------------------------------------------------------
% Primary Contributor: Daniel R. Herber, Graduate Student, University of 
% Illinois at Urbana-Champaign
% https://github.com/danielrherber/mfx-submission-install-utilities
%--------------------------------------------------------------------------
function CloseThisFile(name)
    disp(['--- Closing ', name])
    disp(' ')

    % get editor information
    h = matlab.desktop.editor.getAll;

    % go through all open files in the editor
    for k = 1:numel(h)
        % check if this is the file
        if ~isempty(strfind(h(k).Filename,name))
            % close this file
            h(k).close
        end
    end
end