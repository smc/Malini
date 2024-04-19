input glyph;
beginglyph;

input ./glyphs/include/പ;

xshift := 0.35mw;
yshift := -0.75m;

for i=1 upto 3:
  p:=p+1;
  paths[p] := paths[p-3] shifted (xshift, yshift) xscaled 0.8 yscaled 0.75;
  strokes[p] := strokes[p-3] shifted (xshift, yshift) xscaled 0.8 yscaled 0.75;
endfor;


xoffset = xpart point 0 of strokes[p]- xpart point 0 of strokes[p-3];
strokes[p] := strokes[p] shifted (-xoffset, 0);

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", point 1 of paths[4]);
anchor( "right", (point 0 of paths[p] - (u_drop_sign_radius, 0)));

endglyph;
