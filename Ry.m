function [Ry] = Ry(theta)
%Define a Rotation function Ry(theta)
%   Input:theta
%   Output:A new vector contains angle theta.
Ry = [cos(theta/2),-sin(theta/2);sin(theta/2),cos(theta/2)];
end

