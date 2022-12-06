input glyph;
beginglyph;
p:=0;
z0=(0, s);
z1=(0.05*x2, s-2/3thick);
z2=(x0 + sw/2.5, s/8);

paths[p] = z0--z1--z2 ;
pen_stroke(
     nib(end_nib scaled 3)(0)
     nib(thick_vertical_nib)(1,2)
     nib(thick_vertical_nib )(2)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0 = (0,-descent);
z1 = (x0+sw/6, y0+s/16);
z2=point infinity of paths[p-1] + (0.025sw, 0);
z3=(x2+sw/3, y4-2/3thick);
z4=(1.05*x3 , s);
paths[p] = z0{dir 0} .. z1 -- z3--z4 ;

pen_stroke(
     nib(thicknib)(0)
     nib(thinnib)(1)
     nib(thin_vertical_nib)(2,3)
     nib(end_nib scaled 3)(4)
)(paths[p])(strokes[p]);
endglyph;
