input glyph;
beginglyph;

z0 = ( 0, -descent*0.75 + thick*sind(45)/2 );
z1 = ( x0 + mw/2, y0);
z2 =( x1, -descent*0.75 );
z3 = ( x2, m);

paths[0] = z0---z1;
paths[1] = z2---z3;

paths[0] := paths[0] shifted(-x2, 0);
paths[1] := paths[1] shifted(-x2,0);

pen_stroke(
    nib(thin_horizontal_nib)( 0,1)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thick_vertical_nib)( 0,1)
)(paths[1])(strokes[1]);
endglyph;
