class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 10;
      xCorners = new int[]{-17,-10,-10,2,13,2,-10,-10,-17,-14};   
      yCorners = new int[]{5,2,8,2,0,-2,-8,-2,-5,0};   
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
    public double getXspeed(){
    return myXspeed;
    }
    public double getYspeed(){
    return myYspeed;
    }
    public double getPdirect(){
    return myPointDirection;
    }
}
