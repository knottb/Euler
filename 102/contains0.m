function x = contains0(a,b,c)

area = triArea(a,b,c);
a1 = triArea(a,b,[0 0]);
a2 = triArea(a,c,[0 0]);
a3 = triArea(b,c,[0 0]);

x = 0;
if(area == a1+a2+a3), x = 1; end;


%{
an1 = revs(a(1),a(2));
an2 = revs(b(1),b(2));
an3 = revs(c(1),c(2));

k = [an1,an2,an3];

x = 0;

mx = max(k);
mn = min(k);
md = k(k~=mn & k~=mx);

if(mx-mn < .5), return; end;
if(mx-md > .5), return; end;

x = 1;
%}
end
