input glyph;
beginglyph;
input ./glyphs/include/ണ;
for i=0 upto p:
    paths[i] := paths[i] shifted (mw/3, 0);
    strokes[i] := strokes[i] shifted (mw/3, 0);
endfor;

% Third arch

clearxy;
z0 = point infinity of paths[p-1] + (thick/2-thin/2, thin/2);
z1 = ( x0, 0.6m);
z2 = ( x1 + mw/2.2, m - overshoot); % top
z3 = ( x2 + mw/3, y4 + m/8);
z4 = ( x3 - mw/5, y5 + m/6);
z5 = ( x4 - mw/5, m/2);
z6 = ( x5 + mw/4, y5 - m/6);
z7 = ( x6 + mw/4, 0);
z8 = (x7 - mw/2, -descent*0.8);
z9 = (xpart(point 2.5 of paths[p-3]), y8);
z10= (xpart(point 0 of paths[p-3]) - mw/3, m/2);
z11= (x10 + mw/6, m);

paths[p] := z0---z1..z2{right}..z3{dir -80}..z4{dir 170}..z5..z6{right}..z7{down}..z8{dir 190}..{dir 170}z9..z10..z11 ;
pen_stroke(
    cut(thin_vertical_nib, -45)(0)
    nib(thin_vertical_nib)(1)
    nib(top_nib)(2)
    nib(middle_down_nib)(3,5, 7)
    nib(top_nib)(4, 6)
    nib(down_nib)(8,9)
    nib(middle_up_nib)(10)
    nib(end_nib rotated terminalangle 11 of paths[p])(11)
)(paths[p])(strokes[p]);

anchor( "vc", point 1 of paths[1]);
anchor( "right", point 7.5 of paths[p]);

endglyph;
