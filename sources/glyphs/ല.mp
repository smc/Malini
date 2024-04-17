input glyph;
beginglyph;

input ./glyphs/include/ല;

anchor( "vc", point 0.5 of paths[2]);
anchor( "bottom", point infinity of paths[p-1]);

anchor( "right", (xpart point infinity of paths[p] - u_drop_sign_radius, u_drop_sign_vshift));

endglyph;