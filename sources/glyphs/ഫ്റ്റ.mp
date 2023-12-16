input glyph;
beginglyph;
paths[p] := pa_mouth;
strokes[p] := pa_mouth_stroke(paths[p]);

p:=p+1;
clearxy;
z0=  (0,0);
z1=(x0 + 1.4mw, y0);

paths[p]:= z0--z1 ;
paths[p]:= paths[p] shifted ( xpart(point infinity of paths[p-1])+thick/4, thick*thin_horizontal_nib_scale/2 );

pen_stroke(
    cut(thin_horizontal_nib, 30)(0)
    cut(thin_horizontal_nib, 135)(1)
)(paths[p])(strokes[p]);
strokes[p]:= (xpart point infinity of strokes[p-1], ypart(point 0 of strokes[p])) -- subpath( 1, 3) of strokes[p]--cycle;

p:=p+1;
clearxy;
z0=(xpart(point 1 of strokes[p-1])-thick/2, thick*tand(20)/2);
z1=(x0, (y0+y2)/2);
z2=((x1+x3)/2, m-overshoot);
z3=(x4, y1);
z4=(x0 - mw*0.75, ypart(point infinity of paths[p-1]));
paths[p]:= z0---z1..z2..z3---z4 ;
pen_stroke(
    cut(thick_vertical_nib, -20)(0)
    nib(middle_down_nib)(1)
    nib(top_nib)(2)
    nib(middle_up_nib)(3,4)
)(paths[p])(strokes[p]);

% Clean joint
strokes[p] :=  subpath(0,  8) of strokes[p]
    -- (xpart point 8 of strokes[p], ypart  point 2 of strokes[p-1])
    -- cycle;

p:=p+1;
% Ra
input ./glyphs/include/റ;
xshift = 0.5mw;
yshift = -1.05m;
paths[p] := paths[p] shifted (xshift,yshift  ) xscaled 0.7 yscaled 0.7;
strokes[p] := strokes[p] shifted (xshift, yshift ) xscaled 0.7 yscaled 0.7;
p:=p+1;
paths[p] := paths[p-1] shifted (0.8mw, 0);
strokes[p] := strokes[p-1] shifted (0.8mw, 0);

rbearing:=0;

anchor( "vc", (xpart(point 2 of paths[0]),0));


endglyph;
