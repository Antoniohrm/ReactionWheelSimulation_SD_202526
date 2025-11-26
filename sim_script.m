%% Configure Matlab instance

clc; % Clear the command window
clear; % Clear workspace
close all; % Close all figures

%% Load parameters

% Several input files can exist, to change between them only the value of
% 'param_file' needs to be updated

paramFile = 'input_script'; % Name of the file that loads the script into the base workspace

eval(paramFile); % Load the parameters into the Matlab instance


