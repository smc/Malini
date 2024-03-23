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
    z3=(x2, 0);
    harmonize(z0{dir 60}..z1{right}..z2---z3)
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

vardef top_left_serif(expr s, p ) =
    clearxy;
    z0 = (point p of s) + (-serif_width+thick/2, -3/4serif_height); % Move to left
    z1 = (x0+0.05u , y0  -3/4serif_height); % Move to left
    z2 = (xpart point p of s, y1-serif_height); % Move to right
    z3 = point length(s)-1 of s - (thick/4, -thick/4);

    z4 = (xpart point p of s, y1);
    z5 = (x4, y4);
    if p = 0:
        z0{dir 190}
        .. {right}z1.. controls z4 and z5 .. z2
        -- subpath(p+1, length(s)-1) of s
        .. z3{dir 190}.. cycle
    else:
        subpath(0, p-1) of s
        -- (point p of s) + (-serif_width+thick/2, 0) % Move to left
        -- (point p of s) + (-serif_width+thick/2, -serif_height){right} % Down
        .. {down}(point p of s) + (0, -serif_height*2) % Right
        -- subpath(p+1, length(s)-1) of s
        -- cycle
    fi
enddef;

vardef top_right_straight_serif(expr s, p) =
    path serif;
    clearxy;
    z0 = (point p of s) + (1.2*serif_width/2, 0); % Move to right
    z1 = (x0-0.05u , y0  - serif_height); % Move to down
    z2 = (xpart point p of s, y1-serif_height);
    z4 = (x2 + sw*0.02, y1*0.98);
    z5 = (x4 , y4);

    serif = subpath(0, p-1) of s
    -- z2 .. controls z4 and z5
    .. z1
    .. z0 {dir 183}
    .. {dir 183}cycle;

    soften_node(serif, u/10, 0)
enddef;


vardef top_left_straight_serif(expr s, p ) =
    path serif;
    clearxy;
    z0 = (point p of s) + (-1.2serif_width+thick/2, 0); % Move to left
    z1 = (x0+0.05u , y0  - serif_height); % Move to left
    z2 = (xpart point p of s, y1-serif_height); % Move to right
    z3 = (x2 - thick/4, y2);
    z4 = (xpart point p of s - sw*0.02, y1);
    z5 = (xpart point p of s, y1*0.98);

    serif = z0{dir 177}
    .. {right}z1.. controls z4 and z5 .. z2
    -- subpath(p+1, length(s)-1) of s{dir 183}
    ..  cycle;

    soften_node(serif, u/10, length(s)+1)
enddef;

vardef top_right_serif(expr s, p) =
    subpath(0, p-1) of s
    -- (point p of s) + (0, -serif_height*2){up}
    .. {right}(point p of s) + (serif_width-thick/2, -serif_height)
    -- (point p of s) + (serif_width-thick/2, 0){left}
    -- subpath(p+1, length(s)) of s
    -- cycle
enddef;



vardef top_serif(expr s, p ) =
    clearxy;
    numeric control_t;
    z0 = (point p of s) + (-serif_width+thick/2, 0); % Move to left
    z1 = (x0, y0  -3/4serif_height);
    z2 = (xpart point p of s, y0-serif_width);

    z6 = (xpart point p-1 of s, y2);
    z7 = (x6 + serif_width-thick/2, y1);
    z8 = (x7, y0);

    control_t = arctime serif_height of subpath(p, p+1) of s ;
    z4 =  point (p + control_t ) of s;
    z5 = z4;

    control_t := arctime serif_height of subpath(p-1, p-2) of s ;
    z9 = point (p -1- control_t ) of s;
    z10 = z9;


    if p = 0:
        z0{dir 177}
        .. {dir 350}z1.. controls z4 and z5 .. z2
        -- subpath(p+1, length(s)-2) of s
        -- z6 .. controls z9 and z10.. z7{dir 10}
        .. {dir 183}z8 .. cycle
    else:

        z14 = (point p of s) + (-1.2serif_width, 0); % Move to left
        z15 = (x14, y14  -3/4serif_height);

        z11 =(xpart point p+1 of s, y14 -serif_width);

        control_t := arctime serif_height of subpath(p+1, p+2) of s ;
        z12 =point (p+1+ control_t ) of s;
        z13 =z12;

        control_t := arctime serif_height of subpath(p, p-1) of s ;
        z16 = point (p - control_t ) of s;
        z17 = z16;

        subpath(0, p-1) of s
        -- z6 .. controls z16 and z17.. z7{dir 3}
        .. {dir 183}z8
        .. {dir 177}z14
        .. {dir -3}z15
        .. controls z12 and z13..z11
        -- subpath(p+2, length(s)-1) of s
        .. cycle
    fi
enddef;

vardef bottom_left_serif(expr s, p ) =
   clearxy;
   thickness := (xpart point p+1 of s )- (xpart point p of s);
   z0 = (xpart point p of s, y2 + 2*serif_width);
   z1 = (x0 - serif_width+thickness/2, y2+3/4serif_height) ;
   z2 = (x1, ypart point p of s);
   z3 = (xpart point p+1 of s + serif_width-thickness/2, y2);
   z4 = (x3, y1);
   z5 = (xpart point p+1 of s, y4+1.25serif_width);

   z6 = (x0, ypart point p of s + serif_height*1.2);
   z7 = (x0-0.05u, y6) ;

   subpath(0, p-1) of s -- z0.. controls z6 and z7.. z1{dir 210}
      .. {dir 330}z2
      -- subpath(p+1, length(s)-1) of s
      -- cycle
enddef;


vardef bottom_right_serif(expr s, p) =
    clearxy;
    z0 =  (point p of s) + (thick/4, -thick/4);
    z1 =  (x0 + serif_width+thick/2, y0+1.2serif_height);
    z2 =  (x1-0.05u, y1+ serif_height);
    z3 =  (xpart point p+1 of s, y2+1.2serif_width);

    z4 = (x3, y2+0.1u);
    z5 = (x3, y4+0.1u);

   subpath(0, p) of s{dir -80}
   ..  z0{dir 20} .. {dir 10}z1 .. z2 .. controls z4 and z5 .. z3{up}
   -- subpath(p+2,  length(s)-1) of s
   -- cycle
enddef;

vardef bottom_serif(expr s, p) =
    clearxy;

    thickness := (xpart point p+1 of s )- (xpart point p of s);
    z0 = (xpart point p of s, y2 + serif_width);
    z1 = (x0 - serif_width+thickness/2, y2+3/4serif_height) ;
    z2 = (x1, ypart point p of s);
    z3 = (xpart point p+1 of s + serif_width-thickness/2, y2);
    z4 = (x3, y1);
    z5 = (xpart point p+1 of s,y0 );

    numeric control_t;
    control_t = arctime serif_height of subpath(p, p-1) of s ;
    z6 = point (p - control_t ) of s;
    z7 = z6;

    control_t := arctime serif_height of subpath(p+1, p+2) of s;
    z8 = point p + 1 + control_t of s;
    z9 = z8;
    subpath(0, p-1) of s -- z0 .. controls z6 and z7.. z1
        .. {dir 3}z2{dir 3}
        .. {dir -3}z3{dir -3}
        ..  z4..  controls  z8 and z9 .. z5
        -- subpath(p+2, length(s)-1) of s .. cycle
enddef;


vardef top_left_straight_serif_MN(expr s, p ) =
    path serif;

    numeric l_control_t;
    clearxy;
    z0 = (point p of s) + (-serif_width+thick/2, 0); % Move to left
    z1 = (x0, y0  -3/4serif_height);
    z2 = point ( arctime serif_width of subpath(p, p+1) of s ) of s;

    l_control_t = arctime serif_height of subpath(p, p+1) of s ;
    z4 =  point (p + l_control_t ) of s;
    z5 = z4;

    serif = z0 .. z1.. controls z4 and z5 .. z2
     -- subpath(p+1, length(s)-1) of s-- cycle;
    soften_node(serif, u/10, 5)
enddef;



vardef top_right_straight_serif_MN(expr s, p ) =
    path serif;
    numeric r_control_t;
    numeric t_on_right_slant;
    clearxy;

    t_on_right_slant =  arctime serif_width of subpath(p, p-1)  of s;
    z0 = point (p - t_on_right_slant ) of s;
    z1 = (xpart point 1 of s + serif_width  , y2 - 3/4serif_height);
    z2 = (x1, ypart point p of s);

    % control
    r_control_t =  arctime serif_height of subpath(p, p-1) of s ;
    z6 = point (p - r_control_t ) of s;
    z7 = z6;

    serif = subpath(0, p-1) of s
        --  z0 .. controls z6 and z7
        .. z1{right} .. {left}z2
        -- subpath(p+1, length(s) -1 ) of s --  cycle;
    soften_node(serif, u/10, 4)
enddef;

vardef top_left_slanted_serif(expr s, p ) =
    numeric t_on_left_slant;
    numeric l_control_t;
    clearxy;
    z0 = (point p of s) + (-serif_width+thick/2, 0); % Move to left
    z1 = (x0, y0  -3/4serif_height);
    z2 = point ( arctime serif_width of subpath(p, p+1) of s ) of s;

    l_control_t = arctime serif_height of subpath(p, p+1) of s ;
    z4 =  point (p + l_control_t ) of s;
    z5 = z4;

    t_on_left_slant =  arctime serif_width of subpath(length(s) - 1, length(s) - 2)  of s;
    z6 = point (length(s) - 1 - t_on_left_slant ) of s;
    z7 = (x6 + serif_width-thick/2, y1);
    z8 = (x7, y0);

    l_control_t := arctime serif_height of subpath(length(s) - 1, length(s) - 2) of s ;
    z9= point (length(s) - 1 - l_control_t ) of s;
    z10=z9;


     z0{dir 250}
     .. {dir 300}z1.. controls z4 and z5 .. z2
     -- subpath(p+1, length(s)-2) of s
     -- z6 .. controls z9 and z10.. z7{dir 30}
     ..{dir 150}z8{dir 183} .. {dir 177}cycle

enddef;

vardef top_right_slanted_serif(expr s, p ) =
    numeric t_on_right_slant;
    numeric r_control_t;
    clearxy;
    z0 = (point p  of s) + (-serif_width, 0); % Move to left
    z1 = (x0, y0  -3/4serif_height);
    z2 = point ( arctime serif_width of subpath(p, p+1) of s ) of s;

    r_control_t = arctime serif_height of subpath(p, p+1) of s ;
    z4 =  point (p + r_control_t ) of s;
    z5 = z4;

    t_on_right_slant =  arctime serif_width of subpath(length(s) - 1, length(s) - 2)  of s;
    z6 = point (length(s) - 1 - t_on_right_slant ) of s;
    z7 = (x6 + serif_width , y1); % Move to right
    z8 = (x7, y0);


    r_control_t := arctime serif_height of subpath(length(s) - 1, length(s) - 2) of s ;
    z9= point (length(s) - 1 - r_control_t ) of s;
    z10=z9;

    z0{dir 210}
     .. {dir 330}z1.. controls z4 and z5 .. z2
     -- subpath(p+1, length(s)-2) of s
     -- z6 .. controls z9 and z10.. z7{dir 30}
     ..{dir 150}z8{dir 183} .. {dir 177}cycle

enddef;

vardef bottom_right_slanted_serif(expr stroke, t ) =
    clearxy;
    numeric t_on_left_side, t_on_right_side;
    numeric r_control_t;

    z0 = point ( t  - arctime serif_width of subpath(t, t-1) of stroke ) of stroke;
    z1 = (x0 - serif_width/2, 3/4serif_height);
    z2 = (x1, 0);
    z3 = (xpart point t+1 of stroke + serif_width/2, y2);
    z4 = (x3, y1);

    % control points
    t_on_left_side =  t - arctime 1.25serif_height of subpath(t, t-1)  of stroke;
    z6 = point t_on_left_side of stroke;
    z7 = z6;

    t_on_right_slant := arctime serif_width of subpath(t+1, t+2)  of stroke;
    z5 = point (t +1 + t_on_right_slant ) of stroke;
    r_control_t = arctime 1.25serif_height of subpath(t+1, t+2) of stroke ;
    z8 = point t + 1+ r_control_t of stroke;
    z9 = z8;

    subpath(0, t-1) of stroke -- z0..controls z6 and z7 ..z1{dir 210}
        .. {dir 330}z2{dir 3}..{dir -3}z3{dir 30}
        .. {dir 120}z4..controls z8 and z9
        .. z5
        -- subpath(t+2, length(stroke)-1) of stroke
        -- cycle

enddef;


vardef bottom_left_slanted_serif(expr stroke, t ) =
    clearxy;
    numeric t_on_left_side, t_on_right_side;
    numeric r_control_t;

    z0 = point ( t  - arctime serif_width of subpath(t, t-1) of stroke ) of stroke;
    z1 = (x0 - serif_width, 3/4serif_height);
    z2 = (x1, 0);
    z3 = (xpart point t+1 of stroke + serif_width, y2);
    z4 = (x3, y1);

    % control points
    t_on_right_side =  arctime 1.25serif_height of subpath(t, t-1)  of stroke;
    z6 = point t - t_on_right_side of stroke;
    z7 = z6;

    t_on_left_side := arctime serif_width of subpath(t+1, t+2) of stroke;
    z5 = point (t +1 + t_on_left_side ) of stroke;
    r_control_t = arctime 1.25serif_height of subpath(t+1, t+2) of stroke ;
    z8 = point t + 1+ r_control_t of stroke;
    z9 = z8;

    subpath(0, t-1) of stroke -- z0
        .. controls z6 and z7
        .. z1{dir 210}
        .. {dir 330}z2{dir 3}
        .. {dir -3}z3{dir 30}
        .. {dir 150}z4
        .. controls z8 and z9
        .. z5
        -- subpath(t+2, length(stroke)-1) of stroke
        -- cycle

enddef;

vardef circle(expr radius) =
    clearxy;
    z0 = (0, radius/2);
    z1 = ((x0 + x2)/2, radius);
    z2 = (x0 + radius, y0);
    z3 = (x1, 0);
    z4 = (x0, y0);
    z0{up}..{right}z1..{down}z2..z3{left}..cycle
enddef;