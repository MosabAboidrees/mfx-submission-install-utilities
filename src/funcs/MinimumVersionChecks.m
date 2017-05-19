%--------------------------------------------------------------------------
% MinimumVersionChecks
% Specify the toolbox version checks
%--------------------------------------------------------------------------
% Should be directly included as a subfunction in the INSTALL file
%--------------------------------------------------------------------------
% Primary Contributor: Daniel R. Herber, Graduate Student, University of 
% Illinois at Urbana-Champaign
% https://github.com/danielrherber/mfx-submission-install-utilities
%--------------------------------------------------------------------------
function MinimumVersionChecks
    disp('--- Checking toolbox versions')

    % initialize index
    ind = 0;

    % initialize structure
    test = struct('toolbox','','version','');

    % test 1
%   ind = ind + 1; % increment
%   test(ind).toolbox = '';
%   test(ind).version = '';

    % test 2
%   ind = ind + 1; % increment
%   test(ind).toolbox = '';
%   test(ind).version = '';

    % download and unzip
    VersionChecks(test)

    disp(' ')
end