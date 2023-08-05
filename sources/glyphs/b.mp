input glyph;
beginglyph;
z0=(0, X+serif_height);
z1=(x0, 0);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% Serifs
strokes[p] := top_left_serif(strokes[p], 0);
strokes[p] := bottom_left_serif(strokes[p], 3);
% Leave some extra gap at bottom, near serif
strokes[p] :=  subpath(0, 5.85) of strokes[p]
    -- subpath(6.1, 10) of strokes[p]
    --  cycle;

clearxy;
p:=p+1;
z0=(0, 0.6s);
z1=(0.6x2, s-overshoot);
z2=(x0 + 0.8sw, 0.55s);
z3=(x2/2, undershoot);
z4=(x0, ypart point 0.8 of paths[p-1]);
paths[p] :=z0{dir 60}..z1{right}..z2{down}..z3{left}..{dir 90}z4;
paths[p] :=paths[p] shifted(xpart(point 1 of paths[0]),0);

pen_stroke(
   nib(middle_up_nib)(0)
   nib(middle_down_nib)(2)
   nib(top_nib)(1)
   nib(down_nib)(3)
   nib(middle_up_nib)(4)
)(paths[p])(strokes[p]);


lbearing:=serif_width/2;
anchor( "top", (xpart(point 1 of paths[1]), X));
endglyph;
