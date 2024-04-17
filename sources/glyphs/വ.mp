input glyph;
beginglyph;

input ./glyphs/include/വ;

anchor( "vc", (xpart(point 2 of paths[0]),0));
anchor( "bottom", (xpart(point 1 of paths[2]),0));
anchor( "right", (xpart point infinity of paths[p-1] - u_drop_sign_radius,u_drop_sign_vshift) );

endglyph;
