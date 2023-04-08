input glyph;
beginglyph;

input ./glyphs/include/സ;

p:=p+1;
clearxy;
% ഋ sign
z0 = point 6 of paths[p-1];
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

anchor( "vc", (x3,0));
anchor( "bottom", point 5 of paths[1]);
anchor( "right", point 5 of paths[1]);

endglyph;
