% This file contains reusable, common glyph shapes for Latin script
% for the current font.
% Copyright 2022 Santhosh Thottingal
% Licensed under MIT License

latin_loop_slant := tand(8);

vardef base_loop =
    z0 = (0, s/2);
    z1 = (x0 + sw/3, s - thick/4);
    z2 = (x1 + sw/3, y1 - s/2);
    z3 = (x2 - sw/3, thick/4);
    z0..z1..z2..z3..cycle
enddef;

vardef l_vstem =
    clearxy;
    z0=(0,X);
    z1=(x0,X/2);
    z2=(x1, 0);
    z0---z1---z2
enddef;

vardef r_vstem =
    clearxy;
    path stem;
    z0=(x1-thick, s);
    z1=(0,y0-thick);
    z2=(0, y3+thick/2);
    z3=(x1,0);
    z0{right}..z1---z2---z3
enddef;

vardef n_arch =
    clearxy;
    z0=(0, 0.6s);
    z1=(0.6x2, s-thick/4);
    z2=(x0 + 0.75sw, 2/3s);
    z3=(x2, 0);
    z0{dir 60}..z1{right}..z2---z3
enddef;

vardef u_arch =
    reverse n_arch xyscaled(-1, -1) shifted(xpart(point 4 of n_arch), s)
enddef;

vardef r_arch =
    (n_arch cutafter point 1.3 of n_arch)
enddef;

% For the loops of p and b
vardef p_loop =
    clearxy;
    z0=(0, 0.6s);
    z1=(0.6x2, s-thick/4);
    z2=(x0 + 0.75sw, s/2);
    z3=(x2/2, thick/4);
    z4=(x0, y3 + 0.2s);
    z0{dir 60}..z1{right}..z2{down}..z3..z4
enddef;

vardef a_loop =
    clearxy;
    save r;
    r=0.85;
    z0=(sw*r,  s-thick);
    z1=(0.5*sw*r, s-thick/4);
    z2=(0, s/3);
    z3=(r*sw/3, thick/4);
    z4=(x0, y0);
    z0..z1{dir 190}..{dir -80}z2{dir -80}..z3..{dir 80}z4
enddef;

vardef serif_top_left =
    clearxy;
    serif_thickness := thin * 1.2 * 2/3;
    z0=(x4-thick/2, y4 - u/4 - serif_thickness );
    z1=(x0 - u/4, y0  + u/4);
    z2=(x1 - u/2, y1);
    z3=(x2, y2 + serif_thickness);
    z4=(0, 0);
    path serif_path;
    serif_path := z0{up}..{left}z1--z2---z3--z4--cycle;
    if soften > 0 :
        reverse soften_nodes(serif_path,cornerradius)(2, 3)
    else:
        reverse serif_path
    fi
enddef;

vardef serif_bottom_left =
    reverse serif_top_left xyscaled(1,-1)
enddef;

vardef serif_top_right =
    reverse serif_top_left xyscaled(-1,1)
enddef;

vardef serif_bottom_right =
    reverse serif_top_right xyscaled(1,-1)
enddef;

vardef serif_hanging_top_left =
   serif_bottom_right crotated(-95) shifted  (-thick/4, -thick)
enddef;

vardef serif_hanging_top_right =
   serif_bottom_left crotated(95) shifted  (thick/4, -thick)
enddef;

vardef serif_top_left_slanted =
    clearxy;
    z0= (thick/2-thin*1.2*sind(45)/2, thin*1.2*sind(45)/2 );
    z1= (x0-thick/2 - u, y0-thick/2);
    z0{dir -135}..{left}z1
enddef;

vardef serif_bottom_right_slanted =
    clearxy;
    z0= ( - thick/2 + thin*1.2*sind(45)/2, -thin*1.2*sind(45)/2 );
    z1= (x0+thick/2+ u, y0+thick/2);
    z0{dir 45}..{right}z1
enddef;