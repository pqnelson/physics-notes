numeric u;
u:=1pc;

beginfig(0)
  path p;
  p := (0,0)..(4u, 6u)..(6u, 4u);

  numeric ta; ta := 0.6;
  pair a; a := point ta of p;
  
  path tangent; tangent := (-4u, 0)--(4u, 0);
  tangent := tangent rotated (angle direction ta of p) shifted a;
  
  draw tangent withcolor 0.5[black,white];
  
  z[0] = point 0.5 of tangent; 
  z[1] = point 1.0 of tangent;
  z[2] = z[1] - z[0];
  numeric m; m := -1*(xpart z[2])/(ypart z[2]);

  path normal; normal := (z[0] + (-2u, -2u*m)) -- (z[0] + (2u, 2u*m));
  
  draw normal withcolor 0.5[black,white];

  path velocity; 
  velocity = (point 0.7 of tangent)--(point 0.9 of tangent);
  drawarrow velocity;
  path parallelAcceleration;
  parallelAcceleration = (point 0.5 of tangent)--(point 0.7 of tangent);
  drawarrow parallelAcceleration;

  path perpAcceleration;
  perpAcceleration = (point 0.5 of normal)--(point 0.85 of normal);
  drawarrow perpAcceleration;

  path acceleration;
  z[3] = point 1.0 of perpAcceleration;
  z[4] = point 1.0 of parallelAcceleration;
  z[5] = (x[3]+x[4]-x[0], y[3]+y[4]-y[0]);
  acceleration = (point 0.5 of normal)--z[5];
  drawarrow acceleration;

  drawarrow p;

  z[6] = point 0.0 of normal;

  label.top(btex ${\scriptstyle {\rm normal\ at} P}$ etex, z[6]);
  label.lft(btex $P$ etex, z[0]);
  label(btex $\bullet$ etex, z[0]);
  label.llft(btex $\vec{a}_{\perp}$ etex, point 1.0 of perpAcceleration);
  label.rt(btex $\vec{a}$ etex, point 1.0 of acceleration);
  label.ulft(btex $\vec{a}_{\parallel}$ etex, point 1.0 of parallelAcceleration);
  label.ulft(btex $\vec{v}$ etex, point 1.0 of velocity);
  label.rt(btex ${\scriptstyle\rm path}$ etex, (6u, 4u));
endfig;

beginfig(1)
  path p[];
  numeric t[];
  z[0] = (0,0);
  z[1] = (6u,4u);
  z[2] = (7u,0);
  p[0] = z[0]--z[1];
  p[1] = z[0]--z[2];
  p[2] = z[1]--z[2];
  p[3] = halfcircle scaled 1.5u;
  t[0] = xpart (p3 intersectiontimes p0);
  t[1] = xpart (p3 intersectiontimes p1);
  p[4] = subpath (t0, t1) of p3;

  drawarrow p0;
  drawarrow p1;
  drawarrow p2;
  draw p4;

  label.rt(btex $\theta$ etex, point 0.2 of p4);
  label.rt(btex $\Delta\vec{v}$ etex, point 0.5 of p2);
  label.ulft(btex $\vec{v}_{1}$ etex, point 0.5 of p0);
  label.bot(btex $\vec{v}_{2}$ etex, point 0.5 of p1);
endfig;

beginfig(2)
  path p[];
  numeric dt; dt:=2;
  p[0] = (-3u, 3u)--(0, 3u)--(0,0)--(3u,0);
  
  draw (0, 3u-dt)--(-6,3u-dt-6) withcolor 0.8white;
  draw (dt, 0)--(dt-6,-6) withcolor 0.8white;
  for i = 2 upto 1+(3u/dt):
    draw (dt*i-3u, 3u)--(dt*i-3u-6,3u-6) withcolor 0.8white;
    draw (0,3u-dt*i)--(-6,3u-dt*i-6) withcolor 0.8white;
    draw (dt*i, 0)--(dt*i-6,-6) withcolor 0.8white;
  endfor;
  draw p0;

  drawarrow (0,3u)--(2u,3u);

  label(btex $\bullet$ etex, (0, 3u));
  label.top(btex $\vec{v}_{0}$ etex, (1.5u,3u));
  label(btex $\underbrace{\hbox to 3pc{}}$ etex, (0,0)) rotated 90
  shifted (2.5u,1.5u);
  label.rt(btex $h$ etex, (2.5u, 1.5u));
endfig;


end;
