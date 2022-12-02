class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 3;
      xCorners = new int[]{-10,-10,10};   
      yCorners = new int[]{6,-6,0};   
      myColor = 255;   
      myCenterX = 400;
      myCenterY = 400; 
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    public void hyperspace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random()*800);
      myCenterY = (int)(Math.random()*800);
      myPointDirection = (Math.random()*360);
    }
    public double getXship(){
    return myCenterX;
    }
    public double getYship(){
    return myCenterY;
    }
}

