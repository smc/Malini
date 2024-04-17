% This file contains reusable, common glyph shapes for Malayalam script
% for the current font.
% Copyright 2022 Santhosh Thottingal
% Licensed under MIT License

% Depth of reph sign in ക്ര, പ്ര , സ്ര etc
reph_sign_depth   := -descent*0.8;
u_drop_sign_radius:= condense*(descent-thick/2)/2;
% ഉ sign proper overlap with horizontal strokes like ല, പ
u_drop_sign_vshift:=thick*0.8*contrast*0.75;


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
