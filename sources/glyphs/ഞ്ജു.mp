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


p:=p+1;
clearxy;
z0 = point infinity of paths[p-1];
z1 =(x0 + mw/2, m/2);
z2 =(x1 + mw/3, (y1+y3)/2);
z3 =(x2 - mw/3, -m/6);
z4 =(xpart point 7 of paths[p-2], y3);
z5 =(xpart point 6 of paths[p-2], (y4+y6)/2);
z6 =(x4, -descent);
z7 =(x2 + thick/2, y6);
paths[p]:=z0{dir angle(direction infinity of paths[p-1])}..z1{right}..z2{down}..z3---z4..z5..z6---z7;


pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib scaled 0.8)(1)
    nib(down_nib)(3)
    nib(middle_down_nib scaled 0.8)(2)
    nib(down_nib)(3,4)
    nib(down_nib rotated 70)(5)
    nib(thick_horizontal_nib)(6,7)
)(paths[p])(strokes[p]);

endglyph;