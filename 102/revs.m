function x = revs(a,b)
% BROKEN %
if(a > 0)
    x = atan(b/a)/(2*pi);
else
    x = .5 + atan(b/a)/(2*pi);
end

if(x<0), x = x+1; end;

end