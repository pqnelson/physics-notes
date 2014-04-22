numeric u; u := 1pc;

beginfig(0)
  numeric theta, f; theta=80;
  numeric b, h, H;
  path oFloor;
  path attic;
  H = 1.2u;
  h = 5.2H; b=1.9H;
  f = 0.10526; % .2/1.9
  
  z0 = (0,0);
  z1 = h*(cosd(theta),sind(theta));
  z2 = z1 + b*(cosd(170),sind(170));
  z3 = (-b/sind(theta),0);
  draw z0--z1--z2--z3--cycle withcolor 0.40white;
  oFloor = z1--z2;

  z4 = point (f*length(oFloor)) of oFloor;
  z5 = z4 + H*(cosd(theta),sind(theta));
  z6 = z5 + 1.5H*(cosd(170),sind(170));
  z7 = point (1-f)*length(oFloor) of oFloor;
  draw z4--z5--z6--z7 withcolor 0.40white;

  draw (4u,0)--(4u,8.5u); % dashed evenly;
  draw z3--(4u,0); % the ground
  
  z8 = point 0.5length(oFloor) of oFloor;
  z9 = (4u, ypart z8);

  draw z8--z9 dashed evenly; % withcolor 0.5white;
  label(btex $\bullet$ etex, z8);
  label(btex $\bullet$ etex, z9);
  label.rt(btex $y=56.0$ etex, z9);
  label.rt(btex $y=0$ etex, (4u,0));
endfig;
end;
  
