%% Declare the variables needed for simulation here

% Satellite data

satLWH = 1; % Satellite length, width and height [m]
satM = 100; % Satellite mass [kg]

% Reaction wheel data

wheelR = 0.25; % Radius of the reaction wheel [m]
wheelW = 0.05; % Width of the reaction wheel [m] (Not needed)
wheelM = 5; % Mass of the reaction wheel [m]

% Initial state of the system

initSatPhi = 0; % Initial angle of the satellite [º]
initSatAngVel = 1; % Initial angular velocity of the satellite [º/s]
initWheelAngVel = 0; % Initial angular velocity of the reaction wheel [º/s]

% Angular reference data

initSatPhiRef = 45; % Initial angle reference for the satellite [º]
satPhiRefAngVel = 360 / (24 * 60 * 60); % Angular rate of the reference angle for the satellite [º/s]

%% Process inputs

% Inertia moments

satI = (1 / 12) * satM * ((satLWH ^ 2) + (satLWH ^ 2)); % Inertia moment of the satellite around any of its principal axis [kgm2]
wheelI = (1 / 12) * wheelM * (wheelR ^ 2); % Inertia moment of the reaction wheel around its revolution axis [kgm2]

% Initial state vector

x0 = [initSatPhi; initSatAngVel; initWheelAngVel] .* (pi / 180); % Initial state vector [rad, rad/s, rad/s]

% Reference angle

initSatPhiRef = initSatPhiRef * (pi / 180); % Convert to radians
satPhiRefAngVel = satPhiRefAngVel * (pi / 180); % Convert to radians