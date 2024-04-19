input glyph;
beginglyph;
z0=(0, s);
z1=(x0 + sw/2, thick/4);
paths[p] = z0--z1 ;
pen_stroke(
     nib(thick_nib)(0)
     cut(thick_nib, 60+slant)(1)
)(paths[p])(strokes[p]);

% Right slant
p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]) + sw/2.5, s);
z1=(xpart(point infinity of paths[p-1]) - sw/4.75, -descent*0.9)  ;
z2=(x1 - sw/4, y1);
paths[p] = z0--z1{dir -120}..{dir 120}z2 ;
pen_stroke(
     nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

strokes[0] := top_left_slanted_serif(strokes[0], 0);
strokes[1] := top_right_slanted_serif(strokes[1], 0);

lbearing:=sw/3*0.2;
rbearing:=sw/3*0.2;
anchor( "top", (xpart(point 1 of paths[0]), 1.2s));
endglyph;
