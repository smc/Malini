input glyph;
beginglyph;

input ./glyphs/include/പ;

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", point 1 of paths[1]);
anchor( "right", (xpart point 1 of paths[1] - u_drop_sign_radius,u_drop_sign_vshift));

endglyph;
