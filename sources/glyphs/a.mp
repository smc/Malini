input glyph;
beginglyph;

p:=0;

z0=(thick/4, y1-s/5);
z1=((x0+x2)/2, s-thin*1.2/4);
z2=(x0+0.75sw, 2/3s);
z3=(x2, serif_height/2);
paths[p] := z0{dir 60}..z1..z2---z3;

pen_stroke(
    nib(thicknib rotated terminalangle 0 of paths[p] )(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3)
    nib(thick_vertical_nib)(infinity)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point 2 of paths[p-1];
z1=(x3, y3 + 0.45s);
z2=(0, y3 + s/6);
z3=((x2+x4)/2, thick/4);
z4=(x0, y3+s/4);
paths[p] := z0{down}..{left}z1..z2{dir -90}..z3..z4;
pen_stroke(
    nib(end_nib rotated terminalangle 0 of paths[p])(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
    nib(end_nib rotated terminalangle 3 of paths[p])(4)
    % ignore_directions(2)
)(paths[p])(strokes[p]);

% Serifs
p:=p+1;
paths[p] := serif_bottom_slanted shifted point infinity of paths[0];
strokes[p] := serif_stroke_slanted(paths[p]);

anchor( "top", (xpart(point 1 of paths[0]), X));
endglyph;
