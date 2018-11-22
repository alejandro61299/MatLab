function [anglePhi, angleTheta, anglePsi, flag] = rotM2eAngles(rMat)
%rotM2eAngles: Gets a rotation matrix and returns the euler angles
%flag
%   =  1 sin(angleTheta) = -1
%   = -1 sin(angleTheta) = 1
%   =  0 sin(angleTheta) ~= 1 | -1

 %angleTheta(2)= asind(-rMat(3,1));
 %angleTheta(1) = -angleTheta(2);
 angleTheta(1)= asind(-rMat(3,1));
 angleTheta(2) =  angleTheta(1) + 180 ;

if rMat(3,1) == 1
    flag = -1;
    anglePhi(1) = 0;
    anglePhi(2) = 0;
    anglePsi(1) = anglePhi(1) - acosd(rMat(2,2));
    anglePsi(2) = 180 - anglePsi(1);
elseif rMat(3,1) == -1
    flag = 1;
    anglePhi(1) = 0;
    anglePhi(2) = 0;
    anglePsi(1) = acosd(rMat(2,2)) - anglePhi(1); 
    anglePsi(2) = 180 - anglePsi(1);
else
    flag = 0;
    anglePsi(1) = atan2d(rMat(2,1)/cosd(angleTheta(1)), rMat(1,1)/cosd(angleTheta(1)));
    anglePhi(1) = atan2d(rMat(3,2)/cosd(angleTheta(1)), rMat(3,3)/cosd(angleTheta(1)));
    anglePsi(2) = atan2d(rMat(2,1)/cosd(angleTheta(2)), rMat(1,1)/cosd(angleTheta(2)));
    anglePhi(2) = atan2d(rMat(3,2)/cosd(angleTheta(2)), rMat(3,3)/cosd(angleTheta(2)));
    
end

end

%anglePsi = atan2d(-rMat(3,1), rMat(3,3));
% The 3:3 element is multiplied by cos(phi), we would divide it to get the
% value of cos(psi), but cos(0) = 1, so it's not necessary

