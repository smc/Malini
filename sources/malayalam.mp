% This file contains reusable, common glyph shapes for Malayalam script
% for the current font.
% Copyright 2022 Santhosh Thottingal
% Licensed under MIT License

% Clockwise loop
vardef ml_base_loop_short_c =
    clearxy;
    save hr, vr;
    hr = mw/3; % Horizontal radius
    vr = 0.9*m/2; % Vertical radius
    z0 = (hr, 0);
    z1 = (x0 - hr, y0 + vr);
    z2 = (x1 +  hr,  y1 + vr);
    z3 = (x2 + hr,  y2 - vr);
    z0{left}..z1{up}..z2{right}..z3{down}..{left}z0
enddef;

vardef left_arch =
    clearxy;
    z0=(x1+mw/4, 0);
    z1=(0, 0.5m);
    z2=((x1+x3)/2,  m);
    x3-x1 = 2/3*mw;
    z3=(x3, 2/3m);
    z4=(x3, y0); % bottom of piller
    z0..z1..z2..{down}z3---z4
enddef;

vardef right_arch =
    clearxy;
    z0=(thin/2, 0);
    z1=(x0, 2/3m);
    z2=((x1+x3)/2, m); % Top of arch
    x3-x1 = 2/3*mw;
    z3=(x3, 0.4m);
    z4= (x3 - mw/4, 0);
    z0---z1..z2..z3..z4
enddef;

vardef middle_arch =
    clearxy;
    z0=(thin/2, 0);
    z1=(x0, 2/3m);
    z2=((x1+x3)/2, m); % Top of arch
    x3-x1 = 0.6mw;
    z3=(x3, y1);
    z4=(x3, y0);
    z0---z1..z2..z3---z4
enddef;

vardef right_arch_short =
    clearxy;
    save l,slant;
    path l;
    slant:= tand(8);
    l:= ml_base_loop_short_c;
    l:=l slanted slant;
    l:=l shifted (-slant*m/2, 0);
    l
enddef;

vardef right_tha_arch =
    clearxy;
    z0=(thin/2, 0);
    z1= (x0, 2/3m);
    z2 = ( x1 + mw/2.75, m); % top
    z3 = ( x2 + mw/2, 0.4m);
    z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
    z5 = ( x4 - mw/4, m/2);
    z6 = ( x5 + mw/2, y2); % second top
    z7 = ( x6 + mw/2, y3);
    z8 = ( x7 - mw/4, y0);
    z0---z1..z2..z3..{left}z4{left}..z5..z6{right}..z7..z8
enddef;

vardef middle_tha_arch =
    clearxy;
    z0=(thin/2, 0);
    z1= (x0, 2/3m);
    z2 = ( x1 + mw/2.75, m); % top
    z3 = ( x2 + mw/2, m/2);
    z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
    z5 = ( x4 - mw/4, y3);
    z6 = ( x5 + mw/2, y2); % second top
    z7 = ( x6 + mw/2.5, 2/3m);
    z8 = ( x7, y0);
    z0---z1..z2..z3..{left}z4{left}..z5..z6{right}..z7---z8
enddef;


vardef left_tha_arch =
    clearxy;
    z0= (x1 + mw/4, 0);
    z1= (0, y0 + mw/2);
    z2 = ( x1 + mw/2, m); % top
    z3 = ( x2 + mw/2, 0.4m);
    z4 = ( x3 - mw/4, thick*0.6/2); % bottom middle
    z5 = ( x4 - mw/4, m/2);
    z6 = ( x5 + mw/2, y2); % second top
    z7 = ( x6 + mw/2.5, 2/3m);
    z8 = ( x7, y0);
    z0..z1..z2..z3..{left}z4{left}..z5..z6{right}..z7---z8
enddef;

vardef left_arch_dha =
    clearxy;
    z0=(x1+mw/4, m);
    z1=(0, y0 - m/2);
    z2=((x1+x3)/2, 0);
    z3=(x2 +  mw/3, 1/3m);
    z4=(x3, m);
     z0..z1..z2..z3---z4
enddef;

vardef right_arch_dha =
    clearxy;
    z0=(thin/2, m);
    z1=(x0, 1/3m);
    z2=(x1 +  mw/3, 0);
    z3=(x2 +  mw/3, y2 + m/2);
    z4=(x3 -  mw/4, m);
    z0---z1..z2..z3..z4
enddef;

% Clockwise top loop sits on top of mid horizontal line
vardef top_arch_c =
    clearxy;
    save l,hr,vr;
    path l;
    hr = mw/3 * 0.8; % Horizontal radius
    vr = m/4; % Vertical radius
    z0 = (mw/3*0.25, vr + m/2);
    z1 = (x0 + hr, y0 + vr);
    z2 = (x1 +  hr,  y1 - vr);
    z3 = (x2 - hr,  y2 - vr);

    z0{up}..{left}z1..{down}z2..{right}z3..{up}z0
enddef;

% Anti clockwise top loop sits on top of mid horizontal line
vardef top_arch_ac =
    clearxy;
    save l,hr,vr;
    path l;
    hr = mw/3 * 0.9; % Horizontal radius
    vr = m/4; % Vertical radius
    z0 = (2*mw/3, vr + m/2);
    z1 = (x0 - hr, y0 + vr);
    z2 = (x1  - hr,  y1 - vr);
    z3 = (x2 + hr,  y2 - vr);

    z0{up}..{left}z1..{down}z2..{right}z3..{up}z0
enddef;

% Clockwise
vardef bottom_arch =
    clearxy;
    save l,hr,vr;
    path l;
    hr = mw/3; % Horizontal radius
    vr = m/4; % Vertical radius
    z0 = (0, vr);
    z1 = (x0 + hr, y0 + vr);
    z2 = (x1 + hr,  y1 - vr);
    z3 = (x2 - hr,  y2 - vr);
    z0{up}..z1..z2..z3..{up}z0
enddef;

vardef la_sign =
    clearxy;
    path l;
    z0 =(0, (y1 + y3)/2);
    z1 =(x0 + mw/4, y3+0.55m);
    z2=(x1 + mw/4, y0);
    z3=(x2 - mw/4, thick*0.6/2);
    z4=(x0, y0);
    z5=(x4 + mw/3, m);
    z6=(x5 + mw/2, 0.6m);
    z7=(x6, 0.4m);
    z8=(x7 + mw/3, y3);
    z9=(x8 + mw/3, m/2);
    z10=(x9 - mw/4, y5);

    l=z0{dir 80}..z1..z2..z3..z4..z5..{down}z6..z7..z8..z9..z10;
    l shifted(0,-m*1.1) xscaled 0.8 yscaled 2/3
enddef;

vardef la =
    clearxy;
    z0=(mw/4, m/2);
    z1=(x0 + mw/2, y0+m/6);
    z2=(x1 - mw/3, m);
    z3=(thick/4, m/3);
    z4=(x3 + mw/3, 0);
    z5=(x4 + 2/3mw, y3);
    z6=(x5 - mw/8, y2);
    z0..z1..z2..z3..z4..z5..z6
enddef;

vardef ra =
    clearxy;
    z0=(x1 + mw/3 , 0);
    y2 - y1 = y2/2;
    z1=(0, y1);
    z2=((x1+x3)/2, m-thick*sind(55)/4);
    x3-x1 = mw*0.95;
    z3=(x3, y1);
    z4=(x3 - mw/3, 0);
    z0..z1..z2..z3..z4
enddef;

vardef va_mouth =
    clearxy;
    z0=(x1 + mw/4 , thin/4);
    y2 - y1 = y2/2;
    z1=(0, y1);
    z2=((x1+x3)/2, m);
    x3-x1 = mw*0.95;
    z3=(x3, y1);
    z4=(x3 - mw/3 + thin*1.2/2, thin/2);
    z5=(x4, 0);

    z0..z1..z2..z3..z4--z5
enddef;

vardef va_mouth_stroke (expr va_path) =
    clearxy;
    path va_stroke;
    pen_stroke(
        nib(start_up_nib rotated terminalangle 0 of va_path)(0)
        nib(middle_up_nib)(1)
        nib(top_nib)(2)
        nib(middle_down_nib)(3)
        nib(end_nib)(4,5)
        ignore_directions(1,2,3)
    )(va_path)(va_stroke);
    va_stroke
enddef;

vardef pa_mouth =
    clearxy;
    z0=(x1 + mw/6 , thin/4);
    y2 - y1 = y2/2;
    z1=(0, y1);
    z2=((x1+x3)/2, 0.6m);
    x3-x1 = mw*0.6;
    z3=(x3, y1);
    z4=(x3 - mw/4 + thin*1.2/2, thin/2);
    z5=(x4, 0);

    z0..z1..z2..z3..z4--z5
enddef;


vardef pa_tail =
    clearxy;
    z0=(0, 0);
    z1=(x0 + 0.8mw, y0);
    z2=(x1, y1 + m/2);
    z3=(x2, y2 + m/2);
    z0{dir 30}..{dir 30}z1{dir 30}..z2...{dir 60}z3
enddef;

vardef va_tail =
   clearxy;
   z0=(0, 0);
   z1=(x0 + 0.7mw, y0);
   z2= (x1, y1 + m/2);
   z3=(x2, y2 + m/2);
   z0{dir 20}..{dir 20}z1{dir 30}..z2...{dir 60}z3
enddef;

vardef da =
    clearxy;
    z0 = ( x1 + mw/8 , 0);
    z1 = ( 0, (y0 + y2)/2);
    z2 = ( x1 + mw/2, m); % top
    z3 = ( x2 + mw/3, y2 - m/4);
    z4 = ( x3 - mw/3, y3 - m/4); % <
    z5 = ( x3+ mw/10, y4-m/4);
    z6 = ( x4, thin);
    z0..z1{up}..{right}z2..z3..{left}z4{right}..z5..{dir 150}z6
enddef;


vardef right_da =
    clearxy;
    z0=(thin/2, 0);
    z1= (x0, 2/3m);
    z2 = ( x1 + mw/2.5, m); % top
    z3 = ( x2 + mw/3, y2 - m/4);
    z4 = ( x3 - mw/3, y3 - m/4); % <
    z5 = ( x3+ mw/10, y4-m/4);
    z6 = ( x4, y0 + m/20);
    z0---z1..{right}z2..z3..{left}z4{right}..z5..{dir 150}z6
enddef;

vardef left_arch_with_eye =
    clearxy;
    z0 =(0, (y1 + y3)/2);
    z1 =(x0 + mw/4, y3+0.55m);
    z2=(x1 + mw/4, y0);
    z3=(x2 - mw/4, thick*0.6/2);
    z4=(x0, y0);
    z5=(x4 + mw/3, m);
    z6=(x5 + mw/2, 2/3m);
    z7=(x6, 0);
    z0{dir 80}..z1..z2..z3..z4..z5..{down}z6 ---z7
enddef;

vardef right_arch_with_eye =
    clearxy;
    path l;
    z0 = (thin/2, 0);
    z1=(x0, 2/3m);
    z2=(x1 + mw/2.25, m);
    z3=(x2 + mw/2.25, m/2);
    z4=(x3 - mw/3, thick*0.5/2);
    z5=(x4 - mw/4, y4 + m/3.2);
    l=z0---z1..z2..z3..z4..{dir 80}z5;
    l..point 2.8 of l
enddef;

vardef right_arch_with_tail =
    clearxy;
    z0 = (thin/2, 0);
    z1= ( x0 , 2/3m);
    z2= ( x1 + mw/2.25, m);
    z3= ( x2 + mw/2.25, m/2);
    z4= ( x3 - mw/3, thick*0.5/2);
    z5= ( x4 - mw/4, y4 + m/3);
    z6= ( x4 + mw/4, y3 + m/6);
    z7= ( x5 + mw*0.9, (y6 + y8)/2);
    z8= ( x5 + mw*0.2, y6-m);
    z0---z1..z2..z3..z4..z5..z6..z7..z8
enddef;