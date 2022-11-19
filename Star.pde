class Star //note that this class does NOT extend Floater
{
  private int myX, myY, mySize;
  public Star(){
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
    mySize = (int)(Math.random()*3+3);
  }
  public void show(){
    fill(255);
    mySize = (int)(Math.random()*3+3);
    ellipse(myX, myY, mySize, mySize);
  }
}

