function [axis, angle, flag] =  rotMat2Eaa2(rMatrix)
%rotMat2Eaa given a rotation matrix returns its respective euler principal axis and angle.
%correcting the case in which sin(angle) = 0
%flag = 1 : The specified matrix rotated the object
%flag = 0 : The specified matrix didn't rotate the object
angle = acosd((trace(rMatrix) -1) /2 );
if angle == 0
    %R = I
    axis = [0, 0, 0];
    flag = 0;
elseif angle == 180
    %R = u * u' * 2 - I
    axis(1) = sqrt((rMatrix(1,1) + 1) / 2);
    axis(2) = sqrt((rMatrix(2,2) + 1) / 2);
    axis(3) = sqrt((rMatrix(3,3) + 1) / 2);
    flag = 1;
else
    %R = I * cos(a) + (1 - cos(a)) * u * u' + sin(a) * [u]
    stoichMatrix = (rMatrix - rMatrix') / (2*sind(angle));
    axis(1) =  stoichMatrix(3,2);
    axis(2) =  stoichMatrix(1,3);
    axis(3) =  stoichMatrix(2,1);
    flag = 1;
end

axis = axis / sqrt(axis(1) * axis(1) + axis(2) * axis(2) + axis(3) * axis(3));


end

