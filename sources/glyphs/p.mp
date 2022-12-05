input glyph;
beginglyph;

p:=0;
z0=(0, s);
z1=(x0, y2+2/3thick);
z2=(x0  ,-descent);
paths[p] := z0--z1--z2;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
    nib(end_nib scaled 3)(infinity)
)(paths[p])(strokes[p]);

%serif
p:=p+1;
paths[1] := serif_top_left shifted point 0 of paths[p-1];
pen_stroke(
    nib(end_nib scaled 0.5 rotated terminalangle 0 of paths[p])(0)
    nib(end_nib scaled 0.5 rotated terminalangle 1 of paths[p])(1)
    nib(end_nib scaled 0.5 rotated terminalangle 2 of paths[p])(2)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
paths[p] = p_loop;
pen_stroke(
   nib(middle_up_nib)(0, 4)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
)(paths[p])(strokes[p]);
endglyph;
