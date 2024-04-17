input glyph;
beginglyph;
z0= (thick/2, X-serif_height/2);
z1=( x0, 0);

paths[p] = z0--z1 ;
pen_stroke(
    nib(thin_vertical_nib)(0,1)
)(paths[p])(strokes[p]);

% strokes[p] := top_left_straight_serif(strokes[p], 0);
strokes[p] := bottom_serif(strokes[p], 1);

% Diagonal stroke
p:=p+1;
clearxy;
z0 = (xpart point 0 of paths[0]+thin/2, X );
z1 = (x0 + 2/3*Xw, thick*1.25/2);
paths[p] = z0--z1;
pen_stroke(
    cut(thick_nib rotated 45, 0)(0)
    cut(thick_nib rotated 45, 80)(1)
)(paths[p])(strokes[p]);

strokes[p] := top_left_straight_serif_MN(strokes[p], 0);

p:=p+1;
clearxy;
z0 = ((xpart point 3 of strokes[1])+ thin/2, ypart point 3 of strokes[1]);
z1 = (x0, X);
paths[p] = z1--z0;
pen_stroke(
    cut(thin_vertical_nib, 0)(0)
    nib(thin_vertical_nib)(1)
)(paths[p])(strokes[p]);
strokes[p] := top_serif(strokes[p], 0);


% hanging tail
clearxy;
p:=p+1;
z0=point 1 of paths[2];
z1=(x0-X/3, -descent*0.8);
paths[p]=z0{down}..{dir 160}z1;
pen_stroke(
    nib(thin_vertical_nib rotated terminalangle 0 of paths[3])(0)
    nib(thicknib rotated terminalangle infinity of paths[3])(infinity)
)(paths[3])(strokes[3]);



endglyph;
