function q = Euler3212EP_multi(e)

% Euler3212EP_multi(E)
%
%	Q = Euler3212EP(E) translates the 321 Euler angle
%	vector E into the Euler parameter vector Q.
%
[m, ~] = size(e);
q(m, 1:4) = 0;
for i = 1:m
    c1 = cos(e(i, 1)/2);
    s1 = sin(e(i, 1)/2);
    c2 = cos(e(i, 2)/2);
    s2 = sin(e(i, 2)/2);
    c3 = cos(e(i, 3)/2);
    s3 = sin(e(i, 3)/2);

    q(i, 1) = c1*c2*c3+s1*s2*s3;
    q(i, 2) = c1*c2*s3-s1*s2*c3;
    q(i, 3) = c1*s2*c3+s1*c2*s3;
    q(i, 4) = s1*c2*c3-c1*s2*s3;
end
