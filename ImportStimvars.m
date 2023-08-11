function t = ImportStimvars(toggleDebug)
%% MRI 

t.mri.dummy = 5; %waits for the 5th pulse, resulting in 4 dummy scans!
t.mri.tr = 2.65;

%% Preexposure

t.exp.Temp            = 40;
t.exp.Dur             = 20;
t.exp.ITI             = 3;
t.exp.Cue             = 2;


%% CORE VARIABLES: Other protocol parameters
t.test.baseTemp       = 34; % to determine approximate wait time
t.test.riseSpeed      = 15; % to determine approximate wait time
t.test.fallSpeed      = 15; % to determine approximate wait time

t.test.ratingDur      = 6;
t.test.ratDelay       = 2;

t.test.sBlank         = 0.5;
t.test.firstITI       = 3; % override, no reason for this to be so long
t.test.lastITI        = 3;

t.test.cueing         = 1; %switch cueing on or off

if ~toggleDebug
    t.test.debug      = 0;
    
    t.test.stimDur   = 6; % to determine approximate wait time % pain stimulus duration
    t.test.ITI       = [11 15];  
    t.test.Cue       = [1.5 2.5]; 
    t.test.nRuns     = 4;
    t.test.condsRun  = 2;
    t.test.nTrials   = 8;

else
    t.test.debug      = 1;
   
    t.test.stimDur   = 1; % to determine approximate wait time
    t.test.ITI       = [2 3];
    t.test.Cue       = [0.5 1.5];
    t.test.nRuns     = 4;
    t.test.condsRun  = 2;
    t.test.nTrials   = 2;
    
    
end

    
    

    
