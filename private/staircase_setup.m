function datafilepointer = staircase_setup(subNo, prepair)
%------------------------------------------
% SCRIPT HEADER
%------------------------------------------
try
	tableVariable = {'subNo', ...    % variable names to print to outfile
					   'index', ...
					   'mean', ...
					   'periodicity', ...     
					   'testLevel', ...
					   'pressedKey', ...
					   'answer', ...
					   'isCorrect', ...
					   'rt', ...
					   'reversal', ...
					   's1',...
					   's2',...
					   's3',...
					   's4',...
					   's5',...
					   's6',...
					   't1',...
					   't2',...
					   't3',...
					   't4',...
					   't5',...
					   'seqDuration', ...
					   'startInterval', ...
					   'trialDuration'}; 

    filename = strcat('P_' ,num2str(subNo), '_staircase');

	datafilepointer = ml_open_files(subNo, prepair.outFolder, ...    % open output files:
	 								prepair.nOutfile, filename, ...
	  								prepair.isLogfile); 
	
	ml_writetofile(datafilepointer(1), tableVariable);    % print headings to outfiles

	GetSecs; 											  % initiate timing functions
	WaitSecs(1);
    %---------------------
catch ME
    rethrow(ME);
end
%------------------------------------------