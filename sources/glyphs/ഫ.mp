input glyph;
beginglyph;
paths[p] := pa_mouth;
strokes[p] := pa_mouth_stroke(paths[p]);

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 1.4mw, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*thin_horizontal_nib_scale/2 );

pen_stroke(
    cut(thin_horizontal_nib, 30)(0)
    cut(thin_horizontal_nib, 135)(1)
)(paths[p])(strokes[p]);
strokes[p]:= (xpart point infinity of strokes[p-1], ypart(point 0 of strokes[p])) -- subpath( 1, 3) of strokes[p]--cycle;

p:=p+1;
clearxy;
z0=(xpart(point 1 of strokes[p-1])-thick/2, thick*tand(20)/2);
z1=(x0, (y0+y2)/2);
z2=((x1+x3)/2, m-overshoot);
z3=(x4, y1);
z4=(x0 - mw*0.75, ypart(point 2 of strokes[p-1]));
paths[p]:= z0---z1..z2{left}..z3---z4 ;
pen_stroke(
    cut(thick_vertical_nib, -20)(0)
    nib(middle_down_nib)(1)
    nib(top_nib)(2)
    nib(middle_up_nib)(3)
    cut(middle_up_nib, 0)(4)
)(paths[p])(strokes[p]);

% Clean joint
strokes[p] :=  subpath(0,  8) of strokes[p]
    -- (xpart point 8 of strokes[p], ypart  point 2 of strokes[p-1])
    -- cycle;

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", (xpart(point 0 of paths[p]),0));

anchor( "right", (xpart point infinity of paths[p-1] - u_drop_sign_radius,u_drop_sign_vshift) );

endglyph;
