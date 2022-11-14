input glyph;
beginglyph;

z0=(x1+mw/4, 0);
z1=(0, m-m/1.6);
z2=((x1+x3)/2, m);
x3-x1 = mw*0.75;
z3=(x3, m*0.6);
z4=(x3,  y0); % bottom of piller
paths[0] = z0..z1.. z2.. {down}z3---z4 ;
paths[0] := paths[0] shifted (mw/3,0);
pen_stroke(
    nib(start_up_nib)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[0])(strokes[0]);

clearxy;
z0=point 4 of paths[0] + (thick*0.60/2, 0);
z1=(x0, m*0.6);
z2=((x1+x3)/2, m); % Top of arch
x3-x1 = mw*0.6;
z3=(x3, m-m/3);
z4=(x3, m/3);
z5= ( x4+ mw/3, 0);
z6= ( x5 + mw/3, (y5+y7)/2);
z7= ( x2 + 3/4mw, y2);

paths[1] = z0---z1..z2..{down}z3---z4..z5..z6..z7;

pen_stroke(
   nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib)(4)
    nib(down_nib)(5)
    nib(middle_up_nib)(6)
    nib(top_nib rotated -45)(7)
)(paths[1])(strokes[1]);

clearxy;
z0= (x1 + mw/3, 0);
z1= (0, y0 + mw/2);
z2 = ( x1 + mw/2, y1 + m/2); % top
z3 = ( x2 + mw/2, y2 - m/2);
z4 = ( x3 - mw/3, y3 - m/2 + thick/2); % bottom middle
z5 = ( x4 - mw/3, y4 + m/2 - thick/2);
z6 = ( x5 + mw/2, y2); % second top
z7 = ( x6 + mw/2, y1);
z8 = ( x7 - mw/3, y0); %
paths[2] = (z0  ..z1 ..z2{right}.. z3..{left}z4) slanted tand(-8);
paths[2] := paths[2] && (z4{left}.. z5 ..z6{right}..{dir -80}z7) slanted tand(8);

z9 = ( x4,  -descent); % ra sign starts
z10 = (x1 - mw*1.2, y1 + m);
z11 = (x10 + mw/4, y10 + m*0.85);

paths[2] := paths[2] ..z9{dir 190}..z10.. {dir 60}z11  ;
paths[2] := paths[2] shifted(m*1.2, -m*0.85) xscaled 0.8 yscaled 0.66;

pen_stroke(
    nib(thinnib rotated 0 )(1, 2, 3, 5, 7, 9)
    nib(terminalnib rotated terminalangle 0 of paths[2])(0)
    nib(terminalnib rotated terminalangle infinity of paths[2])(infinity)
)(paths[2])(strokes[2]);

anchor( "vc", (x3,0));

endglyph;
