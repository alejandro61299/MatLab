function [vr] = rotVbyq(v, q)
%UNTITLED3 Summary of this function goes here
%   v = vector
%   q = quaternion to rotate
%   vr = vector rotated

v_q = [ 0 ; v(1); v(2); v(3)];
q_c = [ q(1) ; - q(2) ;- q(3) ; -q(4)];
v_q_r = MultiplyQuat(q , v_q);
v_q_r = MultiplyQuat(v_q_r , q_c);

vr = [ v_q_r(2); v_q_r(3); v_q_r(4)];

end

