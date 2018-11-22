function [axis,angle] =  rotMat2Eaa(rMatrix)
%rotMat2Eaa given a rotation matrix returns its respective euler principal axis and angle.
angle = acosd((trace(rMatrix) -1) /2 );
stoichMatrix = (rMatrix - rMatrix') / (2*sind(angle));
axis = zeros(3:1);
axis(1) =  stoichMatrix(3,2);
axis(2) =  stoichMatrix(1,3);
axis(3) =  stoichMatrix(2,1);
axis = axis / sqrt(axis(1) * axis(1) + axis(2) * axis(2) + axis(3) * axis(3));

end

