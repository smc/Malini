input glyph;
beginglyph;
z0=(sw/3, X);
z1=(x0, 0);
paths[0] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

p:=p+1;
paths[1] :=  paths[0] shifted(sw/2,0);
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);


clearxy;
p:=p+1;
z0=(xpart point 0 of paths[1], X-thick*sind(45)/2);
z1=(xpart point 0 of paths[0], y0);
z2=(0, ypart(point 0.25 of paths[0]));
z3=(x1, X/2);

paths[2] := z0--z1{left}..z2..{right}z3;


pen_stroke(
    nib(thick_horizontal_nib)(0,1)
    nib(middle_down_nib)(2)
    nib(down_nib)(3)
)(paths[2])(strokes[2]);

% Serifs
p:=p+1;
paths[p] := serif_top_thick shifted (xpart point 0 of paths[1], X);
strokes[p] := serif_stroke_top(paths[p]);

endglyph;
