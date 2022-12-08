class Bullet extends Floater
{
  Bullet(Spaceship ship){
    myCenterX = ship.getXship();
    myCenterY = ship.getYship();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getPdirect();
    accelerate(5);
    myColor = 255;
  }
  public void show(){
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double getBX(){
    return myCenterX;
  }
  public double getBY(){
    return myCenterY;
  }
}
