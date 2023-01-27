input glyph;
beginglyph;
% Malayalam Sign Chandrabindu
z0 = (0, y1 + m/3);
z1=(x0 + mw/3, m+thick/2);
z2=(x1 + mw/3, y0);

paths[0] = z0{down}..{right}z1..{up}z2;

pen_stroke(
    nib(middle_down_nib)(0)
    nib(down_nib)(1)
    nib(middle_up_nib)(2)
)(paths[0])(strokes[0]);
clearxy;
soften:=0;
paths[1] = fullcircle scaled (thick*1.5)  shifted(mw/3, ypart point 0 of paths[0]);
strokes[1] = paths[1];
endglyph;
