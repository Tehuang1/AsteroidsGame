Wiggler hughey, dewey;
public void setup()
{
  size(300,300);
  hughey = new Wiggler();
  dewey = new Wiggler();
  hughey.myY = 100;
  dewey.myY = 200;
}
public void draw()
{
  background(197);
  hughey.wiggle();
  dewey.wiggle();
  line(hughey.myX,hughey.myY,dewey.myX,dewey.myY);
}
