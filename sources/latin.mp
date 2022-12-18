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

vardef serif_bottom_thick =
    clearxy;
    z0=(-thick/2 + thin/2, y1+ thick/2);
    z1 = (- thick/2 - 3/4u , thin/2);
    z2 = (+ thick/2 + 3/4u , y1);
    z3 = (thick/2 - thin/2, y0);
    z0{down}..{left}z1 -- z2{left}..{up}z3
enddef;

vardef serif_top_slanted =
    clearxy;
    z0 = (thick/2, thin/2);
    z1 = (x0 - thick/4, y0);
    z2 = (x1 - thick/2 - u, y1 - 0.1s);
    z3 = (-thick + thin/2, y2);
    z4 = (-thick/2 + thin/2, y3-thin);
    z5 = (x4, y4-thin);

    z0--z1..{left}z2--z3{right}..{down}z4---z5
enddef;

vardef serif_bottom_slanted =
    serif_top_slanted rotated 180
enddef;


vardef serif_top_thick =
    serif_bottom_thick rotated 180
enddef;

vardef serif_top_thin =
    serif_bottom_thin rotated 180
enddef;

vardef serif_stroke (expr spath) =
    clearxy;
    path s_stroke;
    pen_stroke(
        nib(serif_nib rotated terminalangle 0  of spath)(0)
        nib(serif_nib rotated terminalangle 1  of spath)(1)
        nib(serif_nib rotated terminalangle 2  of spath)(2)
        nib(serif_nib rotated terminalangle 3  of spath)(3)
    )(spath)(s_stroke);
    s_stroke
enddef;


vardef serif_stroke_slanted (expr spath) =
    clearxy;
    path s_stroke;
    pen_stroke(
        nib(serif_nib rotated terminalangle 0  of spath)(0, 1)
        nib(serif_nib rotated terminalangle 2  of spath)(2)
        nib(serif_nib rotated terminalangle 3  of spath)(3)
        nib(serif_nib)(4,5)
    )(spath)(s_stroke);
    s_stroke
enddef;

vardef serif_bottom_thin =
    clearxy;
    z0=(-thin/2 + thin/2, y1+ thick/2);
    z1 = (- thick/2 - 3/4u , thin/2);
    z2 = (+ thick/2 + 3/4u , y1);
    z3 = (thin/2 - thin/2, y0);
    z0{down}..{left}z1 -- z2{left}..{up}z3
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

vardef serif_bottom_right_slanted =
    clearxy;
    z0= ( - thick/2 + thin*1.2*sind(45)/2, -thin*1.2*sind(45)/2 );
    z1= (x0+thick/2+ u, y0+thick/2);
    z0{dir 45}..{right}z1
enddef;