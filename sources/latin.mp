% This file contains reusable, common glyph shapes for Latin script
% for the current font.
% Copyright 2022 Santhosh Thottingal
% Licensed under MIT License

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
    z1=(0.64*x2, s-overshoot);
    z2=(x0 + 0.75sw, 2/3s);
    z3=(x2, serif_height/4);
    z0{dir 60}..z1{right}..z2---z3
enddef;

% For the loops of p and b
vardef p_loop =
    clearxy;
    z0=(0, 0.6s);
    z1=(0.56*x2, s-overshoot);
    z2=(x0 + 0.8sw, 0.52s);
    z3=(0.46*x2, undershoot);
    z4=(x0, y3 + 0.2s);
    z0{dir 60}..z1{right}..z2{down}..z3{left}..z4
enddef;

vardef a_loop =
    clearxy;
    save r;
    r=0.85;
    z0=(sw*r,  s-thick);
    z1=(0.5*sw*r, s-overshoot);
    z2=(0, s/3);
    z3=(r*sw/3, undershoot);
    z4=(x0, y0);
    z0..z1{dir 190}..{dir -80}z2{dir -80}..z3..{dir 80}z4
enddef;

vardef serif_bottom_thick =
    clearxy;
    z0=(0,  y1+serif_height);
    z1=(x0, y2+serif_height);
    z2=(x0, 0);
    z0--z1--z2
enddef;

vardef serif_top_slanted =
    clearxy;
    z0 = (thick/2, serif_height/2);
    z1 = (x0 - thick/4, y0);
    z2 = (-serif_width, y1 - serif_height);
    z3 = (-thick + serif_height/2, y2);
    z4 = (-thick/2 + serif_height/2, y3-serif_height);
    z5 = (x4, y4-thin);

    z0--z1{dir 200}..{dir 180}z2--z3{right}..{down}z4
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

vardef serif_right_thin =
    serif_bottom_thin rotated 90
enddef;

vardef serif_stroke_bottom (expr spath) =
    clearxy;
    path s_stroke;
    pen_stroke(
        nib(thick_vertical_nib)(0)
        nib(thick_vertical_nib scaled 2.6)(1,2)
    )(spath)(s_stroke);
    s_stroke:=point 0 of s_stroke{down}..{left}(subpath (1,4) of s_stroke){left}..{up}point 5 of s_stroke--cycle;
    s_stroke
enddef;

vardef serif_stroke_top (expr spath) =
    clearxy;
    path s_stroke;
    pen_stroke(
        nib(thick_nib rotated terminalangle 0 of spath)(0)
        nib(thick_nib scaled 2.6 )(1)
        nib(thick_nib scaled 2.6)(2)
    )(spath)(s_stroke);
    s_stroke:=point 0 of s_stroke{up}..{right}(subpath (1,4) of s_stroke){right}..{down}point 5 of s_stroke--cycle;
    s_stroke
enddef;

vardef serif_stroke_top_thin (expr spath) =
    clearxy;
    path s_stroke;
    pen_stroke(
        nib(thin_vertical_nib)(0)
        nib(thick_vertical_nib scaled 2.6)(1,2)
    )(spath)(s_stroke);
    s_stroke:=point 0 of s_stroke{up}..{right}(subpath (1,4) of s_stroke){right}..{down}point 5 of s_stroke--cycle;
    s_stroke
enddef;

vardef serif_stroke_bottom_thin (expr spath) =
    clearxy;
    path s_stroke;
    pen_stroke(
        nib(thin_vertical_nib rotated terminalangle 0 of spath)(0)
        nib(thick_vertical_nib scaled 2.6 rotated terminalangle 1 of spath)(1)
        nib(thick_vertical_nib scaled 2.6 rotated terminalangle 2 of spath)(2)
    )(spath)(s_stroke);
    s_stroke:=point 0 of s_stroke{down}..{left}(subpath (1,4) of s_stroke){left}..{up}point 5 of s_stroke--cycle;
    s_stroke
enddef;

vardef serif_stroke_right_thin (expr spath) =
    clearxy;
    path s_stroke;
    pen_stroke(
        nib(thin_vertical_nib rotated terminalangle 0 of spath)(0)
        nib(thick_vertical_nib scaled 2.6 rotated terminalangle 1 of spath)(1)
        nib(thick_vertical_nib scaled 2.6 rotated terminalangle 2 of spath)(2)
    )(spath)(s_stroke);
    s_stroke:=point 0 of s_stroke{right}..{down}(subpath (1,4) of s_stroke){down}..{left}point 5 of s_stroke--cycle;
    s_stroke
enddef;


vardef serif_stroke_slanted (expr spath) =
    clearxy;
    path s_stroke;
    pen_stroke(
        nib(serif_nib rotated terminalangle 0  of spath)(0, 1)
        nib(serif_nib rotated terminalangle 2  of spath)(2)
        nib(serif_nib rotated terminalangle 3  of spath)(3)
        nib(serif_nib)(4)
    )(spath)(s_stroke);
    s_stroke
enddef;

vardef serif_bottom_thin =
    serif_bottom_thick
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