input glyph;
beginglyph;

p:=0;

z0=(thick/4, 0.75s);
z1=((x0+x2)/2, s-overshoot);
z2=(x0+0.75sw, 0.6s);
z3=(x2, serif_height/2);
paths[p] := z0{dir 70}..z1{right}..z2---z3;

pen_stroke(
    nib(thicknib rotated terminalangle 0 of paths[p] )(0)
    nib(top_nib scaled 0.8)(1)
    nib(middle_down_nib)(2,3)
    nib(thick_vertical_nib)(infinity)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point 2.2 of paths[p-1];
z1=(x3, y3 + 0.5s);
z2=(0, (y1 + y3)/2.25) ;
z3=((x2+x4)/2.5, undershoot);
z4=(x0, y3+s/3);
paths[p] := z0{left}..{down}z2..z3{right}..z4;
pen_stroke(
    nib(end_nib scaled 0.9 rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    nib(end_nib scaled 0.9 rotated terminalangle 3 of paths[p])(3)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_bottom_slanted shifted point infinity of paths[0];
strokes[p] := serif_stroke_slanted(paths[p]);

anchor( "top", (xpart(point 1 of paths[0]), X));
endglyph;
