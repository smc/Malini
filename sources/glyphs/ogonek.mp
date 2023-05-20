input glyph;
beginglyph;
z0 = (x1 + sw/4, undershoot);
z1 = (0, (y0+y2)/1.25);
z2 = (x1 + sw/3, -descent*0.75);
paths[p] := z0{dir 200} ..z1..{dir 60}z2;
pen_stroke(
    nib(thinterminalnib rotated terminalangle 0 of paths[p])(0)
    nib(middle_down_nib scaled 0.8)(1)
    nib(end_nib scaled 0.8 rotated terminalangle infinity of paths[p])(infinity)
)(paths[p])(strokes[p]);

anchor( "bottom", (xpart(point 0 of paths[p]), 0));
endglyph;