%% == LaTeX PACKAGE tikz-3dplot-circleofsphere ================================
%     Drawing circles of a sphere with tikz-3dplot
%  
%  Matthias Wolff, BTU Cottbus-Sentenberg
%  July 26, 2018
% 
%  References:
%  [1] J. Hein. The tikz-3dplot package. 2012. Online, retrieved July 20, 2018.
%      https://mirror.hmc.edu/ctan/graphics/pgf/contrib/tikz-3dplot/tikz-3dplot_documentation.pdf
%

%% Rotation matrices ==========================================================
syms a b p t

% R rotation matrix -----------------------------------------------------------
Rz = [  cos(p) -sin(p)   0
        sin(p)  cos(p)   0
        0       0        1      ];

Rx = [  1       0        0 
        0       cos(t)  -sin(t)
        0       sin(t)   cos(t) ];

% - [1] eq. (2.1) line 2
% R = Rz*Rx; disp(R);

% - [1] eq. (2.1) line 3
% R = [  cos(p)         sin(p)         0 
%       -cos(t)*sin(p)  cos(t)*cos(p) -sin(t)
%        sin(t)*sin(p) -sin(t)*cos(p)  cos(t) ];

% - [1] eq. (2.1) line 3, corrected
R = (Rz*Rx).';

% -- D rotation matrix --------------------------------------------------------
Dz = [  cos(a) -sin(a)  0
        sin(a)  cos(a)  0
        0       0       1      ];
     
Dy = [  cos(b)  0       sin(b)
        0       1       0
       -sin(b)  0       cos(b) ];
     
Dx = [  1       0       0
        0       cos(b) -sin(b)
        0       sin(b)  cos(b) ];
     
D = Dz*Dy; disp(D);

% -- Full rotation matrix -----------------------------------------------------
A = R*D; disp(A);
axx = A(1,1); axy = A(1,2); axz = A(1,3);
ayx = A(2,1); ayy = A(2,2); ayz = A(2,3);
azx = A(3,1); azy = A(3,2); azz = A(3,3);

%% == Transform a vector (world -> screen) ====================================
syms x y z
p = [ x
      y
      z ];
q=A*p;
disp(q);

%% == View angle ==============================================================
syms p0 r eps azx azy azz
assume(p0,'real');
assume(r,'real');
assume(eps,'real');
assume(azx,'real');
assume(azy,'real');
assume(azz,'real');
eqn = azx*r*cos(eps)*cos(p0) + azy*r*cos(eps)*sin(p0) + azz*r*sin(eps) == 0
solve(eqn,p0,'Real',true)

%% == EOF =====================================================================