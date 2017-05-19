%--------------------------------------------------------------------------
% VersionChecks
% Check if a list of toolboxes satisfies version checks
%--------------------------------------------------------------------------
% Should be directly included as a subfunction in the INSTALL file
%--------------------------------------------------------------------------
% Primary Contributor: Daniel R. Herber, Graduate Student, University of 
% Illinois at Urbana-Champaign
% https://github.com/danielrherber/mfx-submission-install-utilities
%--------------------------------------------------------------------------
function VersionChecks(test)
    
    % initialize counter
    counter = 0;

    % go through each file
    for k = 1:length(test)       
        try
            if verLessThan(test(k).toolbox,test(k).version) % failed
                % output to the command window
                disp(['Failed: ',test(k).toolbox,' -v', test(k).version])

            else % passed
                % output to the command window
                disp(['Passed: ',test(k).toolbox,' -v', test(k).version])
                counter = counter + 1;
                
            end
            
        catch % failed to check the toolbox
            % output to the command window
            disp(['Failed to check toolbox: ', test(k).toolbox])
            
        end
        
    end
    
    % check if all tests were passed
    if counter == length(test) % successful
        disp('All version checks passed')
    else % failure
        warning('Not all version checks were successful')
    end
    
end