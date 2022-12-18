input glyph;
beginglyph;
p:=0;
save r,e;
z0 = (0.75Xw, y1 - 0.15X);
z1 = ((x0 + x2)/1.25, X - thick/2);
z2 = (0, 0.4X);
z3 = ((x0 + x2)/2, thick/4);
z4 = (x0, 0.2X);

paths[0]:=z0..z1..z2{dir -80}..z3{dir -10} ..{dir 80}z4;

pen_stroke(
    nib(start_up_nib rotated terminalangle 0 of paths[0])(0)
    nib(middle_down_nib)(2)
    nib(top_nib)(1)
    nib(down_nib)(3)
    nib(thick_vertical_nib)(4)
)(paths[0])(strokes[0]);

clearxy;
p:=p+1;
z0 = point infinity of paths[0];
z1 = (x0, 0.55X);
paths[1]:=z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0, 1)
 )(paths[1])(strokes[1]);

% Serifs
p:=p+1;
clearxy;
z0=(x1 - sw/10, (y1+y2)/2);
z1=(xpart(point 0 of paths[0]), X);
z2=(x1, ypart(point 0 of paths[0])  - thin/4);
paths[p]=z0{right}..{up}z1--z2;
pen_stroke(
    nib(serif_nib rotated terminalangle 0 of paths[p])(0 )
    nib(serif_nib )(1,2 )
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] := serif_top_thick shifted (point infinity of paths[1]);
strokes[p] := serif_stroke(paths[p]);

anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
anchor( "bottom", (xpart(point 3 of paths[0]), 0));
endglyph;
