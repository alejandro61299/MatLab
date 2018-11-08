function [rotationMatrix] = Eaa2rotMat (rotationAxis,angle)
%This method generates the rotation matrix that rotates around that axis a
%certain angle
%INFO: Angle must be in degrees
if (iscolumn(rotationAxis) == 0)
    rotationAxis = rotationAxis';
end
rotationAxis.normalize();


%Create stoichiometry matrix
stoichiometryMatrix = [ 0, -rotationAxis(3), rotationAxis(2);
                        rotationAxis(3), 0, -rotationAxis(1);
                        -rotationAxis(2), rotationAxis(1), 0];

rotationMatrix = eye(3)*cosd(angle) + (1-cosd(angle)) * (rotationAxis * rotationAxis') + sind(angle)*stoichiometryMatrix;

end
