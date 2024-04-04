input glyph;
beginglyph;
z0=(0, s);
z1=(x0, 1/3s);
z2=(0.4*x3, thin*1.2/4);
z3=(x0 + 0.75sw, 0.4s);
paths[p] := z0---z1..{right}z2..{dir 60}z3;
pen_stroke(
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
    nib(down_nib)(2)
    nib(thick_vertical_nib)(0,1)
    ignore_directions(2)
)(paths[p])(strokes[p]);


strokes[p] := top_left_serif(strokes[p], 0);

p:=p+1;
clearxy;
z0=(0, s);
z1=(x0, s/4) ;
z2=((x1+x3)/2, undershoot);
z3=(x1 + sw*0.3,  0.125s);
paths[p] := z0...z1{down}..z2{right}..{dir 60}z3;
paths[p] := paths[p] shifted(xpart(point infinity of paths[0]), 0);
pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(middle_down_nib)(1)
    nib(down_nib rotated -40 scaled 0.8)(2)
    cut(end_nib scaled 0.5, rel 90)(3)
)(paths[p])(strokes[p]);

strokes[p] := top_left_serif(strokes[p], 0);

lbearing:=sw/3*0.1;
rbearing:=sw/3*0.1;
anchor( "top", (xpart(point 2.25 of paths[0]), 0.9X));
endglyph;
