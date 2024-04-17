input glyph;
beginglyph;

% input ./glyphs/include/മ;
clearxy;
% Arch
z0= (0, thin/2*middle_up_nib_scale);
z1= (x0, (y0+y2)/2);
z2= ((x1+x3)/2, m-overshoot);
z3= (x0+ mw, y1);
z4= (x3, 0);
paths[p] = z0{up}..{up}z1..z2..z3---z4;
pen_stroke(
    cut(middle_up_nib, 45)(0)
    nib(middle_up_nib)(1)
    nib(top_nib)(2)
    nib(thick_vertical_nib)(3, 4)
)(paths[p])(strokes[p]);

% Bottom bar
clearxy;
p:=p+1;
z0=(xpart point 9 of strokes[p-1], thick*thin_horizontal_nib_scale/2);
z1=(xpart(point 4 of paths[p-1])+thick/2, y0);
paths[p] = z0--z1;
pen_stroke(
    nib(thin_horizontal_nib)(0)
    nib(thin_horizontal_nib)(1)
)(paths[p])(strokes[p]);


% Clean joint
strokes[p] :=  subpath(0,1) of strokes[p]
    -- (xpart point 3 of paths[p-1], ypart  point 2 of strokes[p])
    -- point 3 of strokes[p]
    -- cycle;

% Bow
clearxy;
p:=p+1;
save bow_start_t;
bow_start_t = 1.6;
z0= point bow_start_t of paths[p-2];
z1= (xpart point 2.15 of paths[p-2] , ypart point 1.25 of paths[p-2]);
z2= point 0 of paths[p-1];

paths[p] = z0{dir angle(direction bow_start_t of paths[p-2])}..z1{down}..{dir 200}z2;
pen_stroke(
    cut(end_nib scaled 0.8 rotated terminalangle 0 of paths[p], rel 90)(0)
    nib(middle_down_nib )(1)
    cut(end_nib rotated 80, 90 )(2)
    % ignore_directions(0, 1)
)(paths[p])(strokes[p]);

anchor( "bottom", (xpart(point infinity of paths[0]), 0));
anchor( "right", (xpart point infinity of paths[0] - u_drop_sign_radius, u_drop_sign_vshift));

endglyph;
