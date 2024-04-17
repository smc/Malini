input glyph;
beginglyph;


input ./glyphs/include/left_arch_dha;

clearxy;
p:=p+1;
input ./glyphs/include/right_arch_dha;
paths[p]:=paths[p] shifted (xpart(point infinity of paths[p-1]), 0);
strokes[p]:=strokes[p] shifted (xpart(point infinity of paths[p-1]), 0);

p:=p+1;
clearxy;
% ഋ sign
z0 = point 3.25 of paths[p-1];
z1 = (x0 - 0.75mw, -descent);
z2 = (x1 - mw/3, (y1+y3)/2);
z3 = (x1, y2+m/6);
z4 = (x1 + mw/3, y2);
paths[p] = z0{dir angle(direction 3.25 of paths[p-1])*-1}.. {left}z1..z2{up}..z3{right}..z4;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(down_nib)(1)
    nib(middle_down_nib)(2)
    nib(top_nib)(3)
    nib(end_nib rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);



anchor( "vc", (xpart(point 3 of paths[0]),0));
endglyph;
