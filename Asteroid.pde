class Asteroid extends Floater
{
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*20-10);
    corners = 6;
    xCorners = new int[]{-9,7,12,8,-5,-12};
    yCorners = new int[]{-10,-9,2,10,8,0};
    myColor = (int)(Math.random()*100+100);
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myXspeed = (int)(Math.random()*5+1);
    myYspeed = (int)(Math.random()*5);
    myPointDirection = (int)(Math.random()*360);
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
