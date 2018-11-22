function [resultQuat]=MultiplyQuat(q, p)
%First position is the real part of the quaternion
%Three next positions are the imaginary parts  (i, j, k respectively)

if(iscolumn(q) == 0)
    q = q';
end

if(iscolumn(p) == 0)
    p = p';
end

q0 = q(1);
p0 = p(1);
qVec = q(2:end);
pVec = p(2:end);
resultQuat = zeros(4:1);
resultQuat(1) = q0 * p0 - qVec' * pVec;
resultQuat(2:end) = q0 * pVec + p0 * qVec  + cross(qVec, pVec);
end