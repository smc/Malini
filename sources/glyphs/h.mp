input glyph;
beginglyph;
p:=0;
z0=(0, X);
z1=(x0, y2+2/3thick);
z2=(x0  ,0);
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

p:=p+1;
paths[2] := n_arch shifted(xpart(point 0 of l_vstem),0);
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(middle_down_nib)(2,3)
    nib(end_nib scaled 3)(infinity)
)(paths[2])(strokes[2]);
endglyph;
