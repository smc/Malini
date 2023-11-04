input ./config/Regular;

thick := 0.8u;
contrast := 1/3;
% Use tigher spacing in large sizes
% Ref https://www.typotheque.com/articles/size-specific_spacing_of_fonts
lbearing :=     0.4u;        % Default left bearing
rbearing :=     0.4u;        % Default right bearing

% Reduce serif height slightly
serif_height := 1/3thick;
serif_width :=  thick/2 + serif_height*2;