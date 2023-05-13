input glyph;
beginglyph;
z0=(x1 + Xw/2, s - thin*sind(45)/2);
z1=(0, 0.2s);
paths[0] = z0--z1;
pen_stroke(
   cut(thin_nib rotated terminalangle 0 of paths[0], -45)(0)
   cut(thin_nib rotated terminalangle 1 of paths[0], 90)(1)
)(paths[0])(strokes[0]);

% Horizontal
clearxy;
z0 =(0, ypart(point infinity of paths[0])  - thick/4 );
z1=(x0+0.8Xw, y0);
paths[1] = z0--z1 ;


pen_stroke(
    nib(thick_horizontal_nib )(0,1)
)(paths[1])(strokes[1]);

% Vertical
clearxy;
z0=(xpart(point 0 of paths[0])+thick*sind(45)/2, s);
z1=(x0, -descent);
paths[2] = z0--z1 ;

pen_stroke(
    nib(middle_down_nib rotated -10)(0,1)
)(paths[2])(strokes[2]);
endglyph;