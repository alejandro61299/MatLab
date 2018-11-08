function [rotationMatrix] = Eaa2rotMat (raxis,angle)
%This method generates the rotation matrix that rotates around that axis a
%certain angle
%INFO: Angle must be in degrees
if (iscolumn(raxis) == 0)
    raxis = raxis';
end
raxis = raxis / sqrt(raxis(1) * raxis(1) + raxis(2) * raxis(2) + raxis(3) * raxis(3));

%Create stoichiometry matrix
stoichiometryMatrix = [ 0, -raxis(3), raxis(2);
                        raxis(3), 0, -raxis(1);
                        -raxis(2), raxis(1), 0];

rotationMatrix = eye(3)*cosd(angle) + (1-cosd(angle)) * (raxis * raxis') + sind(angle)*stoichiometryMatrix;

end
