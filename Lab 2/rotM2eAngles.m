function [anglePhi, angleTheta, anglePsi, flag] = rotM2eAngles(rMat)
%rotM2eAngles: Gets a rotation matrix and returns the euler angles
%flag
%   =  1 sin(angleTheta) = -1
%   = -1 sin(angleTheta) = 1
%   =  0 sin(angleTheta) ~= 1 | -1

if -rMat(3,1) == 1
    flag = -1;
    anglePhi = 0;
    angleTheta = asind(1);
    yPart = (cosd(anglePhi) * sind(angleTheta)) / sind(anglePhi);
    anglePsi = 
elseif -rMat(3,1) == -1
    flag = 1;
    anglePhi = 0;
    angleTheta = asind(-1);
else
    flag = 0;
    angleTheta1 = asind(-rMat(3,1));
    anglePsi1 = atan2d(rMat(2,1)/cosd(angleTheta1), rMat(1,1)/cosd(angleTheta1));
    anglePhi1 = atan2d(rMat(3,2)/cosd(angleTheta1), rMat(3,3)/cosd(angleTheta1));
    angleTheta2 = 180 - angleTheta1;
    anglePsi2 = atan2d(rMat(2,1)/cosd(angleTheta2), rMat(1,1)/cosd(angleTheta2));
    anglePhi2 = atan2d(rMat(3,2)/cosd(angleTheta2), rMat(3,3)/cosd(angleTheta2));
end

end

%anglePsi = atan2d(-rMat(3,1), rMat(3,3));
% The 3:3 element is multiplied by cos(phi), we would divide it to get the
% value of cos(psi), but cos(0) = 1, so it's not necessary

