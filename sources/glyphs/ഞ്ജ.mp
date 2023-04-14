input glyph;
beginglyph;

input ./glyphs/include/left_arch_with_eye;

p:=p+1;
clearxy;
z0=(thick/2-thin/2, undershoot);
z1= (x0, m*0.6);
z2 = ( x1 + mw/3, m - overshoot); % top
z3 = ( x2 + mw/4, 0.875m);


paths[p] :=z0---z1{up}..{right}z2..z3;
paths[p] := paths[p] shifted (xpart(point infinity of paths[p-1]), 0);

pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib rotated terminalangle 3 of paths[p])(3)
 )(paths[p])(strokes[p]);


% ജ
p:=p+1;
shift = xpart point infinity of paths[p-1] - mw/6;
input ./glyphs/include/ജ;
for i=p-2 upto p:
    paths[i] := paths[i] shifted (shift, 0);
    strokes[i] := strokes[i] shifted (shift, 0);
endfor;

anchor( "right", point infinity of paths[p]);

endglyph;