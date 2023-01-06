input glyph;
beginglyph;
z0=(mw/10, X);
z1=(x0, 0);
p:=0;
paths[0] = z0--z1;


pen_stroke(
    nib(middle_down_nib)(0,1)
)(paths[0])(strokes[0]);

clearxy;
p:=p+1;
serif_width:=serif_width*1.25;
serif_height:=serif_height*1.25;
paths[p] := serif_top_slanted shifted point 0 of paths[0] ;
strokes[p] := serif_stroke_slanted(paths[p]);

% Reset serif width and height
serif_width:=serif_width/1.25;
serif_height:=serif_height/1.25;

p:=p+1;
paths[p] := serif_bottom_thick shifted (point infinity of paths[0]);
strokes[p] := serif_stroke(paths[p]);

lbearing:=2*lbearing;
rbearing:=2*rbearing;
endglyph;