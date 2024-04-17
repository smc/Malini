input glyph;
beginglyph;
input ./glyphs/include/ബ;

anchor( "vc", (xpart(point 5 of paths[0]),0));
anchor( "bottom", (xpart(point 1 of paths[3]),0));
anchor( "right", (xpart point infinity of paths[3] - u_drop_sign_radius,u_drop_sign_vshift) );
endglyph;
