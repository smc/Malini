input glyph;
beginglyph;
p:=0;
z0= (thick/2, X);
z1=( x0, y0 - X/2);
z2=( x1, 0);
z3 = (x0, y0 - thin/2);
z4 = (x3 + Xw/1.6, y3);
z5 = (x0, y1);
z6 = (x5 + x4*0.75, y5);

paths[0] = z0--z2 ;
pen_stroke(
   nib(thick_vertical_nib)(0,1,2)
)(paths[p])(strokes[p]);

p:=p+1;
paths[1] = z3--z4;

pen_stroke(
    nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] = z5--z6;
pen_stroke(
    nib(thin_nib rotated 90)(0,1)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (point 0 of paths[0]);
strokes[p] := serif_stroke(paths[p]);

p:=4;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

clearxy;
p:=p+1;
z0=(xpart(point 1 of paths[1]), y1  - thick/2 - u);
z1=(x0 - thick/2, ypart(point 1 of paths[1]));
paths[p]=z0--z1;
pen_stroke(
    nib(serif_nib rotated terminalangle 0 of paths[p])(0 )
    nib(serif_nib scaled 1.5 rotated terminalangle 1 of paths[p])(1 )
)(paths[p])(strokes[p]);

p:=p+1;
paths[p] := serif_bottom_thin rotated 90 shifted (point infinity of paths[2]);
strokes[p] := serif_stroke(paths[p]);

endglyph;
