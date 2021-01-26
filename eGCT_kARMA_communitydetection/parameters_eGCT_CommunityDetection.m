function [innr, k, sg, parameters] = parameters_eGCT_CommunityDetection(testname)  
   parameters.N = 1;
    innr = 1.5;
    k = 10;% Nearest neighbors.
    parameters.k1 = 1;
%% 

    % parameters for whole
    parameters.lamb1 = 1e-2;
    parameters.lamb2 = 2e-2;
    % tangent space
    parameters.centered=false;
%% parameters solving optimization 
    parameters.flagOpt = 0; % If 0, then fixed no of iterations; if 1, stop
                            % when tolerance is met.

    parameters.numofIter = 10000;
    parameters.tolOpt = 1;
    parameters.sigma = 1;
    parameters.psi_n = 1;
    parameters.gamma = 1;
    parameters.lamb = 1;
    parameters.DimSubspTheta = 1e-3;
    parameters.OrderO = 3;
    parameters.ProjDim = 30;
    % The number of dimensions of the tangent space in order to compute
    % thetas.
    % Actually, I am using the max number of dims according to pca. Take
    % a look at the file ~/utility/tangent_gap.m
    
    % Weights for the three factors in constructing similarity matrix.
    % Need to be tuned.
    % Weight values are inversely proportional to similarity: The
    % smaller sigma is, the larger the similarity.

    sg.sigma1 = 1; % Weight on sparsity.
    sg.sigma2 = 1;  % Weight on angles.
    
    %   'Type' - Defines the type of spectral clustering algorithm
    %            that should be used. Choices are:
    %      1 - Unnormalized
    %      2 - Normalized according to Shi and Malik (2000)
    %      3 - Normalized according to Jordan and Weiss (2002)
    parameters.TypeSC = 3;

    % Parameters for generating the fMRI series.
%     parameters.SNR = 10; % Additive Gaussian noise level to be added to TC.
%     parameters.nC = 10;              % Number of components
                                    
                                     
    % Number of different connectivity states (CLUSTERS).
%%     
%        parameters.nStates = 4; %Original value is 4

    %%
%     parameters.nT = parameters.nStates*(100);%100--2 line of
%     data,200-4,400-8
    parameters.nT = 500;
    parameters.nStates = 1;
    parameters.N = 10; % T_w
    parameters.taow = 10; %length of vectorlized data tao_w for community and subspace clustering
    %%
    parameters.StateTCL = parameters.nT/parameters.nStates; %StateTCL is the length of each time series for each state 
    %% Parameter for kARMA
    parameters.SlideWinL = 300; %T_w
    parameters.taob_real = 10;
    parameters.taob = parameters.taob_real+parameters.N;%\tao_b
    parameters.m = 3;%m
    parameters.DimSubsp = 3; %\rho
    parameters.taof = parameters.SlideWinL - parameters.taob-parameters.m;
    parameters.Numoftest = 1;


%% online clustering
% parameters.landmark  = 40;
% parameters.wdistance  = 0.5;
% parameters.wangle = 0.5;
%%
%     parameters.UBoundNoPointsForOptim = ceil(parameters.nT/3);
%     parameters.DimSubspTheta = 1e-3;
%     % TR
%     parameters.TR = 1;
%     % Probability of unique events
% %     parameters.pU = 0.5;
%     parameters.pU = 0.5;
%     % Probability of state specific events 
%     parameters.pState = 0.5;
%     % Number of event types (i.e., number of different modules)
%     parameters.nE = 3;
%     % Weights on the signal components.
%     parameters.wAR = 0;
%     parameters.wMod = 0.9;
%     parameters.wUnique = 1-parameters.wAR-parameters.wMod;
%     parameters.theta1 = pi/10;
%     parameters.theta2 = pi/2 - parameters.theta1;
%     parameters.Slope = pi/1e1;
%     
%     % If 1, show figures of states; otherwise, do nothing.
%     parameters.ShowFigfMRI = 0;
%     % If 1, use the same random number generator to re-produce experiments.
%     parameters.SameRandNo = 0;
    %% parameters of ADMM
    parameters.alphad = 1;
    parameters.rhoofadmm = 1.5;
    parameters.errorabs = 1e-3;
    parameters.errorrel = 1e-3;
    parameters.numofIter1 = 1000;
    
    %% parameter of landmark
    parameters.landmark = 20;
    parameters.landmarknnr = 0.02;
    parameters.landmarkdensity = 3;
    parameters.landmarksparse = 10;
end
