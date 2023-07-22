input glyph;
beginglyph;

input ./glyphs/include/സ;

paths[2] := paths[0] shifted (0.56mw, -m) xscaled 0.8 yscaled 0.75 ;
strokes[2] := strokes[0] shifted (0.56mw, -m) xscaled 0.8 yscaled 0.75 ;
paths[3] := paths[1] shifted (0.56mw, -m) xscaled 0.8 yscaled 0.75;
strokes[3] := strokes[1] shifted (0.56mw, -m) xscaled 0.8 yscaled 0.75;

anchor( "vc", z3);
anchor( "right", (point 5 of paths[3]));
endglyph;
