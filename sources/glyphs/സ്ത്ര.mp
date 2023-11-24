input glyph;
beginglyph;
input ./glyphs/include/സ;

for i=0 upto p:
    paths[i] := paths[i] shifted (mw/3, 0);
    strokes[i] := strokes[i] shifted (mw/3, 0);
endfor;

p:=p+1;
clearxy;
%  ത്ര
input ./glyphs/include/ത;
paths[p] := paths[p] shifted (2.2mw, -m) scaled 0.6;
clearxy;
z0 = (xpart point 6  of paths[p], -1.5*descent); % ra sign starts
z9 = (xpart point 3 of paths[0],  y0); % ra sign starts
z10 = (0, m/2);
z11 = (x10 + mw/8, m);

paths[p] := (subpath(0, 6.75) of paths[p]) .. z0---z9 ..z10{up}..z11;

pen_stroke(
    nib(start_up_nib scaled 0.8 rotated terminalangle 0 of paths[p])(0)
    nib(top_nib scaled 0.8)(2,6)
    nib(middle_down_nib scaled 0.8)(3, 7)
    nib(down_nib scaled 0.8)(4)
    nib(middle_up_nib scaled 0.8)(1,5)
    nib(down_nib scaled 0.8)(8,9)
    nib(middle_up_nib)(10)
    nib(end_nib rotated terminalangle infinity of paths[p])(11)
)(paths[p])(strokes[p]);


anchor( "vc", (xpart point infinity of paths[0],0));

endglyph;
