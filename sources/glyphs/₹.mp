input glyph;

% Reference: http://www.idc.iitb.ac.in/events/Indian_Rupee_Symbol.pdf
beginglyph;
z0 = (mw/4, X-thin/2*1.5*sind(70) );
z1 = (x0 + mw/3, y0 - X/4);
z2 = (x1 - mw/2, 0.45X);

paths[p] = z0{right}..z1..{left}z2;
pen_stroke(
    nib(top_nib)(0,2)
    nib(middle_down_nib)(1)
    cut(down_nib, 90)(3)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = (0, ypart point 0 of paths[p-1]);
z1 = (xpart point 1 of paths[p-1]+mw/3, y0);
paths[p] = z0--z1;
pen_stroke(
    cut(top_nib, 60)(0,1)
)(paths[p])(strokes[p]);

clearxy;
p:=p+1;
z0 = (0,  s+thin/2*1.5*sind(70));
z1 = (xpart point 1 of paths[p-1],y0);
paths[p] = z0--z1;
pen_stroke(
  cut(top_nib, 60)(0,1)
)(paths[2])(strokes[2]);

clearxy;
p:=p+1;
z0=(xpart point infinity of paths[0] + thick/2, ypart point 2.5 of strokes[0]);
z1=(xpart point 1 of paths[0]+thick/2, 0);
paths[p] = z0--z1;
pen_stroke(
   cut(thick_nib scaled 0.9 rotated terminalangle 0 of paths[p], 45)(0)
   cut(thick_nib scaled 0.9 rotated terminalangle 1 of paths[p] , 0)(1)
)(paths[p])(strokes[p]);

strokes[p] :=  strokes[p] shifted (
  (xpart point 3 of strokes[0] - xpart point 0 of strokes[p]),
  (ypart point 3 of strokes[0] - ypart point 0 of strokes[p]));

endglyph;