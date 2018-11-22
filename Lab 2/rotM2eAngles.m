function [anglePhi, angleTheta, anglePsi] = rotM2eAngles(rMat)
%rotM2eAngles: Gets a rotation matrix and returns the euler angles

anglePhi = 0;
anglePsi = asind(-rMat(3:1));
yPart = (rMat(2:1))/cosd(anglePsi);
xPart = (rMat(1:1))/cosd(anglePsi);
angleTheta = atan2d(yPart,xPart);
end

%anglePsi = atan2d(-rMat(3:1), rMat(3:3));
% The 3:3 element is multiplied by cos(phi), we would divide it to get the
% value of cos(psi), but cos(0) = 1, so it's not necessary

