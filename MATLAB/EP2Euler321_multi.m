function e = EP2Euler321_multi(q)

% EP2Euler321
%
%	E = EP2Euler321(Q) translates the Euler parameter vector
%	Q into the corresponding (3-2-1) Euler angle set.
%	
[m, ~] = size(q);
e(m, 1:3) = 0;
for i = 1:m
    q0 = q(i, 1);
    q1 = q(i, 2);
    q2 = q(i, 3);
    q3 = q(i, 4);
    e(i, 1) = atan2(2*(q1*q2+q0*q3),q0*q0+q1*q1-q2*q2-q3*q3);
    e(i, 2) = asin(-2*(q1*q3-q0*q2));
    e(i, 3)= atan2(2*(q2*q3+q0*q1),q0*q0-q1*q1-q2*q2+q3*q3);
end
