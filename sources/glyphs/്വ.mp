input glyph;
beginglyph;

bottom:=-descent*0.7;
% Horizontal bar
z0 = ( 0, bottom + thick*sind(45)/2 );
z1 = ( x0 + mw/2, y0);
paths[0] = z0---z1;

% Vertical bar
z2 =( x1, bottom);
z3 = ( x2, m);
paths[1] = z2---z3;

paths[0] := paths[0] shifted(-x2+thick*3/4, 0);
paths[1] := paths[1] shifted(-x2+thick*3/4,0);

pen_stroke(
    nib(thin_horizontal_nib)( 0,1)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thick_vertical_nib)( 0,1)
)(paths[1])(strokes[1]);

absolute_position := 1;
endglyph;
