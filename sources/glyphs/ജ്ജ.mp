input glyph;
beginglyph;
z0 =(x4, (y1 + y3)/2);
z1 =(x0 + mw/5, y3+0.4m);
z2=(x1 + mw/5, y0);
z3=(x2 - mw/5, m/2.5);
z4=(0, y0 );
z5=((x4 + x6)/2, m-overshoot);
z6=(x4 + mw*0.75, y2);
z7=(x6, y3);
paths[p]:=z0{up}..z1{right}..z2{down}..z3{left}..z4..z5..{down}z6--z7;
pen_stroke(
    nib(middle_up_nib)(0)
    nib(top_nib)(1)
    nib(top_nib)(5)
    nib(down_nib)(3)
    nib(middle_down_nib)(2)
    nib(middle_up_nib)(4)
    nib(thin_vertical_nib)(6)
    nib(thin_vertical_nib)(7)
)(paths[p])(strokes[p]);

p:=p+1;
clearxy;
z0=point infinity of paths[p-1] + (thick/2-thin/2, 0);
z1=(x0, m*0.6);
z2=((x1+x3)/2, m - overshoot); % Top of arch
x3-x1 = mw*0.7;
z3=(x3, (y2 + y4)/2);
z4=(x2, ypart(point 3 of paths[p-1]) - m/10);
z5=(xpart(point 1 of paths[p-1]), y4 - m/12);
z6=(xpart(point 0 of paths[p-1]), (y5+y7)/2);
z7=(x5, -m/12);
z8=(x3 + mw/4, y1);
paths[p] = z0---z1..z2..z3..z4..z5..z6..z7..{dir 60}z8 ;

pen_stroke(
   nib(thin_vertical_nib)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3)
    nib(down_nib)(4)
    nib(down_nib)(5)
    nib(down_nib rotated 70)(6)
    nib(down_nib)(7)
    nib(end_nib rotated terminalangle 8 of paths[p])(8)
)(paths[p])(strokes[p]);

% Bottom eye of ജ is not needed

% ജ
p:=p+1;
shift = xpart point infinity of paths[p-1];
input ./glyphs/include/ജ;
for i=p-2 upto p:
    paths[i] := paths[i] shifted (shift, 0);
    strokes[i] := strokes[i] shifted (shift, 0);
endfor;

endglyph;
