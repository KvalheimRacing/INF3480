function [ Ai ] = AI(t,a,ai,di)

% This is the calculation of one DH matrices
% t= Theta
% a = Alpha
% ai = displacement along current X axis
% di = displacement along previous Z axis
% cos(), sin() is taking in radiens. For degrees, use cosd(), sind()

Ai = [cos(t), -sin(t)*cos(a),  sin(t)*sin(a), ai*cos(t); 
      sin(t),  cos(t)*cos(a), -cos(t)*sin(a), ai*sin(t); 
           0,         sin(a),         cos(a),        di; 
           0,              0,              0,        1];

end
