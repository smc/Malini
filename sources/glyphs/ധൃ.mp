input glyph;
beginglyph;
p:=0;

paths[p] =left_arch_dha;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(thin_vertical_nib)(3)
    nib(thin_vertical_nib)(4)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
paths[p] =right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    nib(thick_vertical_nib)(0)
    nib(thick_vertical_nib)(1)
    nib(down_nib)(2)
    nib(middle_up_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);


p:=p+1;
clearxy;
% ഋ sign
z0 = point 3 of paths[p-1];
z1 = (x0 - mw/2, -descent*1.2);
z2 = (x1 - mw/3, y1/2);
paths[p] = z0{dir -85}..z1{left}..z2{dir 75};
z3 = point 2/3 of paths[p];
paths[p] := paths[p] .. {dir -60}z3;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
    nib(end_nib rotated 90)(3)
)(paths[p])(strokes[p]);


anchor( "vc", (xpart(point 3 of paths[0]),0));
endglyph;
