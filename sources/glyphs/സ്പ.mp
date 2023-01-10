input glyph;
beginglyph;
p=0;
paths[p] = left_arch;
pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point infinity of paths[p-1] + (thick/2-thin/2, undershoot);
z1=(x0, 2/3m);
z2=((x1+x3)/2, m - overshoot); % Top of arch
x3-x1 = mw*0.6;
z3=(x3, m-m/3);
z4=(x3, 0.4m);
z5= ( x4+ mw/3, undershoot);
z6= ( x5 + mw/3, (y5+y7)/2);
z7= ( x2 + 3/4mw, m);

paths[p] = z0---z1..z2..z3---z4..z5{right}..z6{up}..z7;
pen_stroke(
   nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib)(4)
    nib(down_nib)(5)
    nib(middle_up_nib)(6)
    nib(end_nib rotated 45)(7)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] := pa_mouth;

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 0.75mw, y0);
z2=(x1, m);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1]) , thick*sind(45)/2 );

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0, m);

paths[p]:= z0--z1;
paths[p]:= paths[p] shifted (xpart(point 1 of paths[p-1]), 0);

paths[p-2] := paths[p-2] shifted (mw, -0.8m) xscaled 0.9 yscaled 0.75 ;

strokes[p-2]:= va_mouth_stroke(paths[p-2]);
paths[p-1] := paths[p-1] shifted (mw, -0.8m) xscaled 0.9 yscaled 0.75 ;
pen_stroke(
    nib(thin_horizontal_nib scaled 0.8)(0)
    nib(thin_horizontal_nib scaled 0.8)(1)
)(paths[p-1])(strokes[p-1]);
paths[p] := paths[p] shifted (mw, -0.8m) xscaled 0.9 yscaled 0.75 ;

pen_stroke(
    nib(thick_vertical_nib scaled 0.8)(0)
    nib(thick_vertical_nib scaled 0.8)(1)
)(paths[p])(strokes[p]);

anchor( "vc", point 0.5 of paths[1]);

endglyph;
