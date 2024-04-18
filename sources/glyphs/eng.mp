input glyph;
beginglyph;

z0=(0, s);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[p]:=n_arch;
paths[p]:=paths[p] shifted(xpart(point 1 of paths[p-1]) ,0);
pen_stroke(
    cut(end_nib scaled 0.9, rel 90)(0)
    nib(top_nib)(1)
    nib(thick_vertical_nib)(2,3)
    ignore_directions(1r )
)(paths[p])(strokes[p]);


% Serifs
strokes[0] := top_left_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 3);

clearxy;
z0=point infinity of paths[1] + (0, undershoot);
z1=(x0-s/3, -descent*0.9);
paths[2]=z0{down}..{dir 160}z1;
pen_stroke(
    nib(middle_down_nib)(0)
    nib(thicknib)(1)
)(paths[2])(strokes[2]);
endglyph;
