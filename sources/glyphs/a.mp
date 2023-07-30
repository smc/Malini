input glyph;
beginglyph;


z0=(thick/4, 0.75s);
z1=(x0+0.075sw, y2-0.08s);
z2=((x0+x3)/2, s-overshoot);
z3=(x0+0.7sw, 0.6s);
z4=(x3, s/6);
z5=(x4+serif_width, undershoot);
paths[p] := z0{up}..z1.. z2{right}..z3---z4..{dir 30}z5;

pen_stroke(
    nib(thicknib scaled 1.2 rotated terminalangle 0 of paths[p] )(0)
    nib(thicknib scaled 0.6 rotated terminalangle 1 of paths[p] )(1)
    nib(top_nib scaled 0.8)(2)
    nib(middle_down_nib)(3)
    nib(middle_down_nib)(4)
    nib(end_nib scaled 0.6 rotated terminalangle 5 of paths[p])(5)
)(paths[p])(strokes[p]);

% Curve correction near the drop end
strokes[p] := subpath(0, 9) of strokes[p]
    .. {down}subpath(11, 13) of strokes[p]
    -- cycle;

p:=p+1;
clearxy;
z0=point 3 of paths[p-1];
z1=(x3, y3 + 0.5s);
z2=(0, (y1 + y3)/2.5) ;
z3=((x2+x4)/2.5, undershoot);
z4=(x0, y3+s/3);
paths[p] := z0{dir 185}..{down}z2..z3{right}..z4;
pen_stroke(
    nib(end_nib scaled 0.9 rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    cut(end_nib   rotated terminalangle 3 of paths[p], 0)(3)
)(paths[p])(strokes[p]);


rbearing:=rbearing;
anchor( "top", (xpart(point 1 of paths[0]), 0.9X));
endglyph;
