input glyph;
beginglyph;
paths[p] := pa_mouth;
paths[p] := paths[p] shifted (mw/3,0);
strokes[p] := pa_mouth_stroke(paths[p]);

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 1.4mw, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*sind(45)/2 );

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
z4=(x0 - mw*0.75, ypart(point infinity of paths[p-1]));
paths[p]:= z0---z1..z2..z3---z4 ;
pen_stroke(
    cut(thick_vertical_nib, -20)(0)
    nib(middle_down_nib)(1)
    nib(top_nib)(2)
    nib(middle_up_nib)(3,4)
)(paths[p])(strokes[p]);

% Clean joint
strokes[p] :=  subpath(0,  8) of strokes[p]
    -- (xpart point 8 of strokes[p], ypart  point 2 of strokes[p-1])
    -- cycle;


p:=p+1;
clearxy;
z0 = (xpart point 0 of paths[p-1], 0);
z1 = (3/4(x0-x3), reph_sign_depth  );
z2 = (0.5(x0-x3), y1);
z3 = (xpart(point 1 of paths[0]) - mw/3, m/2);
z4 = (x3+mw/6, m);
paths[p] =  z0{down}..z1---z2..z3..z4;
paths[p] := insert_nodes(paths[p], 2.5);
pen_stroke(
    nib(middle_down_nib rotated -10)(0)
    nib(thick_horizontal_nib)(1, 2)
    nib(thick_nib rotated terminalangle 3 of paths[p] scaled 0.8)(3)
    nib(middle_up_nib scaled 1.1)(4)
    nib(end_nib rotated terminalangle infinity of paths[p])(infinity)
    ignore_directions(3)
)(paths[p])(strokes[p]);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "right", point 0.5 of paths[p] );

endglyph;
