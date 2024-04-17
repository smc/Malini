input glyph;
beginglyph;

input ./glyphs/include/ഷ.mp;

anchor( "vc", point 0.5 of paths[1]);

anchor( "right", (xpart point infinity of paths[1] - u_drop_sign_radius,u_drop_sign_vshift) );

endglyph;
