input glyph;
beginglyph;
p:=0;
z0=(x2 + Xw/3, y1-thick/2);
z1=((x0+x2)/2, X-thick/4);
z2=(x4  , 0.8X);
z3=(x4, 3/4s);
z4=(sw/4, 0);
paths[0] = z0{dir 135}..z1..{down}z2 ..{down}z3---z4;

%bar
z5 = (0, s);
z6 = (x5 + Xw/2.5, y5);
p:=p+1;
paths[1] = z5--z6;
pen_stroke(
    nib(thick_vertical_nib)(3,4)
    nib(top_nib)(1)
    nib(thick_vertical_nib)(2)
    nib(thicknib rotated terminalangle 0 of paths[0])(0)
    ignore_directions(1, 2)
)(paths[0])(strokes[0]);
pen_stroke(
   nib(end_nib rotated 90)(0,1)
)(paths[1])(strokes[1]);

p:=p+1;
clearxy;
z0=(-thick/2 + thin/2, y1+ thick/2);
z1 = (- thick/2 - 3/4u , thin/2);
z2 = (+ thick/2 + 3/4u , y1);
z3 = (thick/2 - thin/2, y0);
paths[p] = z0{down}..{left}z1 -- z2{left}..{up}z3 ;
paths[p] := paths[p] shifted (point infinity of paths[0]);
pen_stroke(
     nib(serif_nib rotated terminalangle 0  of paths[p])(0)
     nib(serif_nib rotated terminalangle 1  of paths[p])(1)
     nib(serif_nib rotated terminalangle 2  of paths[p])(2)
     nib(serif_nib rotated terminalangle 3  of paths[p])(3)
)(paths[p])(strokes[p]);

rbearing:=0.5*rbearing;
lbearing:=0;
endglyph;
