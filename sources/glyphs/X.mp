input glyph;
beginglyph;
r := 0.8;
z0=(0, X);
z1=(x0 + r*Xw, 0);

paths[p] = z0--z1;
pen_stroke(
    cut(thick_vertical_nib rotated terminalangle 0 of paths[p], 0)(0)
    cut(thick_vertical_nib rotated terminalangle 1 of paths[p], 0)(1)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=(0, 0);
z1=(x0 + r*Xw, X);
paths[p] = z1--z0;
pen_stroke(
    cut(thin_vertical_nib rotated terminalangle 0 of paths[p], 0)(0)
    cut(thin_vertical_nib rotated terminalangle 1 of paths[p], 0)(1)
)(paths[p])(strokes[p]);


vardef bottom_right_slanted_serif(expr stroke, t ) =
    clearxy;
    numeric t_on_left_side, t_on_right_side;
    numeric r_control_t;

    z0 = point ( t  - arctime serif_width of subpath(t, t-1) of stroke ) of stroke;
    z1 = (x0 - serif_width/2, 3/4serif_height);
    z2 = (x1, 0);
    z3 = (xpart point t+1 of stroke + serif_width/2, y2);
    z4 = (x3, y1);

    % control points
    t_on_left_side =  t - arctime 1.25serif_height of subpath(t, t-1)  of stroke;
    z6 = point t_on_left_side of stroke;
    z7 = z6;

    t_on_right_slant := arctime serif_width of subpath(t+1, t+2)  of stroke;
    z5 = point (t +1 + t_on_right_slant ) of stroke;
    r_control_t = arctime 1.25serif_height of subpath(t+1, t+2) of stroke ;
    z8 = point t + 1+ r_control_t of stroke;
    z9 = z8;

    subpath(0, t-1) of stroke -- z0..controls z6 and z7 ..z1{dir 210}
        .. {dir 330}z2{dir 3}..{dir -3}z3{dir 30}
        .. {dir 120}z4..controls z8 and z9
        .. z5
        -- subpath(t+2, length(stroke)) of stroke
        -- cycle

enddef;

strokes[0] := top_left_slanted_serif(strokes[0], 0);
strokes[0] := bottom_right_slanted_serif(strokes[0], 3);
strokes[1] := top_right_slanted_serif(strokes[1], 0);

endglyph;
