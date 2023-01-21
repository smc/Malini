input glyph;
beginglyph;

z0 = (s/2, s/2);
z1 = (x0, s);
for i=0 upto 5:
    paths[i]:=z0--z1 rotatedaround (z0, i*360/5);
    pen_stroke(
        nib(thick_nib scaled 1/2 rotated terminalangle 0 of paths[i])(0)
        nib(thick_nib rotated terminalangle 0 of paths[i])(1)
    )(paths[i])(strokes[i]);
    strokes[i]:=point 0 of strokes[i]--point 1 of strokes[i]--point 2 of strokes[i]--point 3 of strokes[i]--cycle;

endfor;

endglyph;
