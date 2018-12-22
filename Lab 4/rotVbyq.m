function [vr] = rotVbyq(v, q)
%UNTITLED3 Summary of this function goes here
%   v = vector
%   q = quaternion to rotate
%   vr = vector rotated
v = v / length(v);
vquat = 
%- Multiply the quaternions
rquat = MultiplyQuat(uquat, vquat);
uquat(2:end) = -uquat(2:end);
rquat = MultiplyQuat(rquat, uquat);

end

