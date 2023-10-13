input glyph;
beginglyph;

z0=(0, s);
z1=(x0  ,-descent);
paths[p] := z0--z1;
pen_stroke(
    nib(thick_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
paths[p]:= p_loop;
pen_stroke(
   nib(middle_up_nib rotated terminalangle 0 of paths[p])(0)
   nib(middle_down_nib)(2)
   nib(down_nib)(1)
   nib(down_nib)(3)
   nib(middle_up_nib rotated terminalangle 4 of paths[p])(4)
   ignore_directions(1,2,3)
)(paths[p])(strokes[p]);

% Serifs
strokes[0] := top_left_serif(strokes[0], 0);
strokes[0] := bottom_serif(strokes[0], 3);
% Leave some extra gap at top, near serif
strokes[0] :=  subpath(0, 8.85) of strokes[0]
    -- subpath(9.15, 10) of strokes[0]
    --  cycle;

lbearing:=sw/3*0.25;
rbearing:=sw/3*0.4;
endglyph;
