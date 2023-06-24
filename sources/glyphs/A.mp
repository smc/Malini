input glyph;
beginglyph;

z0=(0, 0);
z1=(x0 + Xw/2.5, X);
paths[p] = z0--z1 ;
pen_stroke(
    nib(thin_nib scaled 1.25)(0,1)
)(paths[p])(strokes[p]);

% Right slant
p:=p+1;
clearxy;
z0=(xpart(point infinity of paths[p-1]),X-thick*sind(45)/2)  ;
z1=(x0+Xw/2.5, 0);
paths[p] = z0--z1 ;

pen_stroke(
    nib(thick_nib)(1)
    cut(thick_nib, 45)(0)
)(paths[p])(strokes[p]);

% Cross bar
clearxy;
p:=p+1;
z0 = point 0.4 of paths[p-2] ;
z1 = (xpart point 0.65 of paths[p-1], y0) ;
paths[p]:= z0--z1 ;
pen_stroke(
    nib(top_nib)(0)
    cut(top_nib, -70)(1)
)(paths[p])(strokes[p]);


p:=p+1;
paths[p] := serif_bottom_thin shifted (xpart point 0 of paths[0] + serif_height/2, 0);
strokes[p] := serif_stroke_bottom_thin(paths[p]);
strokes[p]:= point 2.875 of strokes[0]{dir -115}..{left}(subpath (1,4) of strokes[p]){left}..{dir 65}point 0.1 of strokes[0]--cycle;

p:=p+1;
paths[p] := serif_bottom_thick shifted (xpart point infinity of paths[1]-thin/2,0);
strokes[p] := serif_stroke_bottom(paths[p]);
strokes[p]:= point 0.875 of strokes[1]{dir -65}..{left}(subpath (1,4) of strokes[p]){left}..{dir 115}point 2.1 of strokes[1]--cycle;

lbearing:=serif_width-lbearing;
anchor( "top", (xpart(point 1 of paths[0]), 1.2X));
endglyph;
