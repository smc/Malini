% This file contains reusable, common glyph shapes for Malayalam script
% for the current font.
% Copyright 2022 Santhosh Thottingal
% Licensed under MIT License

% Depth of reph sign in ക്ര, പ്ര , സ്ര etc
reph_sign_depth   := -descent*0.8;


vardef left_arch_dha =
    clearxy;
    z0=(x1+mw/3, m);
    z1=(0, y0 - m/2);
    z2=((x1+x3)/2, undershoot);
    z3=(x2 +  mw/3, 1/3m);
    z4=(x3, m);
     z0..z1{down}..z2{right}..z3---z4
enddef;

vardef right_arch_dha =
    clearxy;
    z0=(thick/2-thin/2, m);
    z1=(x0, 1/3m);
    z2=((x1 + x3)/2, undershoot);
    z3=(x0 +  3/4mw, y2 + m/2);
    z4=(x3 -  mw/3, m);
    z0---z1..z2{right}..z3{up}..z4
enddef;



vardef va_mouth =
    clearxy;
    z0=(x1 + mw/4 , undershoot);
    z1=(0, (y0+y2)/2.12);
    z2=((x1+x3)/2, m-overshoot);
    x3-x1 = mw*0.95;
    z3=(x3, (y2+y4)/2);
    z4=(x3 - mw/3 + thin*1.2/2, thin/2);
    z5=(x4, 0);

    z0..z1{up}..z2{right}..z3{down}..z4--z5
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

    z0..z1{up}..z2{right}..z3{down}..z4--z5
enddef;


vardef pa_mouth_stroke (expr va_path) =
    clearxy;
    path va_stroke;
    pen_stroke(
        nib(start_up_nib rotated terminalangle 0 of va_path)(0)
        nib(middle_up_nib)(1)
        nib(top_nib)(2)
        nib(middle_down_nib)(3)
        nib(end_nib)(4,5)
    )(va_path)(va_stroke);
    va_stroke
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

vardef ga =
    clearxy;
    z0 = (x1 + mw/3.5, m);
    z1 = (0, (y0+y2)/2);
    z2 = (x1 + mw/3, undershoot);
    z3 = (x2 + mw/3, 0.5m);
    z4 = (x3 + mw/3, m-overshoot);
    z5 = (x4 + mw/2.5, (y4+y6)/2);
    z6 = (x5 - mw/3, 0);
    z0{dir 215}..z1{down}..z2{right}..z3{dir 100}..z4{right}.. z5{down}.. {dir 210}z6
enddef;

vardef da =
    clearxy;
    z0 = ( x1 + mw/8 , 0);
    z1 = ( 0, (y0 + y2)/2);
    z2 = ( x1 + mw/2, m-overshoot); % top
    z3 = ( x2 + mw/3, y2 - m/4);
    z4 = ( x3 - mw/3, y3 - m/4); % <
    z5 = ( x3+ thick/4, y4-m/4);
    z6 = ( x4, thin/2);
    z0..z1{up}..{right}z2..z3..{left}z4{right}..z5{down}..{dir 150}z6
enddef;




% ഋ sign
vardef vocalic_r_sign =
    clearxy;
    z0 = (0, thick/4);
    z1 = ((x0 + x2)/2, -descent*1.2);
    z2 = (x0 -0.9mw, (y1+y3)/2);
    z3 = ((x2 +x4)/1.75, y0-m/4);
    z4 = ((x0 + x1)/3, (y1+y2)/2.4);
    z0{down}.. {dir 190}z1..{dir 85}z2..{right}z3..z4
enddef;
