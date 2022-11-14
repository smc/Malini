input glyph;
beginglyph;

z0 = ( 0, -descent + thick*0.6/2 );
z1 = ( x0 + 2/3m, y0);
z2 =(x1, -descent );
z3 =  ( x2, m);

paths[0] = z0---z1;
paths[1] = z2---z3;

paths[0] := paths[0] shifted(-x2 + thick, 0);
paths[1] := paths[1] shifted(-x2 + thick ,0);

pen_stroke(
    nib(thick_horizontal_nib)( 0,1)
)(paths[0])(strokes[0]);
pen_stroke(
    nib(thick_vertical_nib)( 0,1)
)(paths[1])(strokes[1]);
endglyph;
