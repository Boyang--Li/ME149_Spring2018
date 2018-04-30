function [p0,p1,p2,p3,p4,p1v,p2v] = autoGen_quadrotorPendulumKinematics(x,y,q1,q2,u1,u2,m1,w,g,l)
%AUTOGEN_QUADROTORPENDULUMKINEMATICS
%    [P0,P1,P2,P3,P4,P1V,P2V] = AUTOGEN_QUADROTORPENDULUMKINEMATICS(X,Y,Q1,Q2,U1,U2,M1,W,G,L)

%    This function was generated by the Symbolic Math Toolbox version 7.2.
%    07-Apr-2018 12:42:38

p0 = [x;y];
if nargout > 1
    t2 = cos(q1);
    t3 = t2.*w.*(1.0./2.0);
    t4 = sin(q1);
    t5 = t4.*w.*(1.0./2.0);
    p1 = [t3+x;t5+y];
end
if nargout > 2
    p2 = [-t3+x;-t5+y];
end
if nargout > 3
    t6 = sin(q2);
    t7 = cos(q2);
    p3 = [x+l.*t6.*(1.0./2.0);y-l.*t7.*(1.0./2.0)];
end
if nargout > 4
    p4 = [x+l.*t6;y-l.*t7];
end
if nargout > 5
    t8 = 1.0./g;
    t9 = 1.0./m1;
    t10 = 1.0./w;
    p1v = [t3+x+t4.*t8.*t9.*t10.*u1.*(1.0./8.0);t5+y-t2.*t8.*t9.*t10.*u1.*(1.0./8.0)];
end
if nargout > 6
    p2v = [-t3+x+t4.*t8.*t9.*t10.*u2.*(1.0./8.0);-t5+y-t2.*t8.*t9.*t10.*u2.*(1.0./8.0)];
end
