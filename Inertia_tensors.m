% Symbols for link dimmensions
aL = sym('aL', [6,1]);
bL = sym('bL', [6,1]);
cL = sym('cL', [6,1]);


% Calculated link density
rho = 7850; % kg/m^3 - Steel <-- should be calculated based on weight and volume


% Making cell array of inertia tensors
Inertia_tensors = cell(6,1);


% Summing up Inertia tensors for each link, under the assumption that one has uniform solid masses where axis of rotation coincide with center of mass
for i = 1:n

    IxxLi = rho*((aL(i)*bL(i)*cL(i))/12)*(bL(i)^2 + (cL(i))^2);

    IyyLi = rho*((aL(i)*bL(i)*cL(i))/12)*(aL(i)^2 + (cL(i))^2);

    IzzLi = rho*((aL(i)*bL(i)*cL(i))/12)*(aL(i)^2 + (bL(i))^2);

    % 3 Dimensional matrix to hold all link tensor matrices
    Inertia_tensors{i} = [IxxLi,     0,     0;
                              0, IyyLi,     0;
                              0,     0, IzzLi]

end
