numeric u; u:=1pc;

beginfig(0)
  numeric del;
  path p[];
  del = 3u;
  p[0] = (-u-del,0)
    for i=1 upto del-ahlength:
    --(i-del-u,2*sind(78*i))
  endfor;
  p[1] = fullcircle scaled 2u;
  
  drawarrow p0--(-u,0);
  draw p[1];
  label(btex ${}^{55}\rm Cs$ etex, (0,0));
  label(btex $\bullet$ etex, point 0.125*length(p1) of p1);
endfig;


end;
