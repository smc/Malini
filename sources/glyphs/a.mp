input glyph;
beginglyph;


z0=(thick/4, 0.75s);
z1=((x0+x2)/2, s-overshoot);
z2=(x0+0.75sw, 2/3s);
z3=(x2, s/6);
z4=(x3+sw/4, undershoot);
paths[p] := z0{up}..z1{right}..z2---z3..{dir 30}z4;

pen_stroke(
    nib(thicknib scaled 1.2 rotated terminalangle 0 of paths[p] )(0)
    nib(top_nib scaled 0.8)(1)
    nib(middle_down_nib)(2)
    nib(middle_down_nib)(3)
    nib(end_nib scaled 0.5 rotated terminalangle 4 of paths[p])(4)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point 2.25 of paths[p-1];
z1=(x3, y3 + 0.5s);
z2=(0, (y1 + y3)/2.5) ;
z3=((x2+x4)/3, undershoot);
z4=(x0, y3+s/3);
paths[p] := z0{dir 185}..{down}z2..z3{right}..z4;
pen_stroke(
    nib(end_nib scaled 0.9 rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib)(1)
    nib(down_nib)(2)
    cut(end_nib scaled 0.9 rotated terminalangle 3 of paths[p], 0)(3)
)(paths[p])(strokes[p]);


rbearing:=rbearing/2;
anchor( "top", (xpart(point 1 of paths[0]), 0.9X));
endglyph;
