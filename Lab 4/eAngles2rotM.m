function [rMatrix] = eAngles2rotM(anglePhi, angleTheta, anglePsi)
%eAngles2rotM given a set of euler angles phi, theta and psi, return its respective rotation matrix.
rMatrix1 = Eaa2rotMat([1;0;0], anglePhi);
rMatrix2 = Eaa2rotMat([0;1;0], angleTheta);
rMatrix3 = Eaa2rotMat([0;0;1], anglePsi);
rMatrix = rMatrix3*rMatrix2*rMatrix1;
end

