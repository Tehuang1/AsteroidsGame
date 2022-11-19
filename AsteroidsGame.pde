Spaceship ship = new Spaceship();
Star[] sky = new Star[200];
boolean wPressed = false;
boolean aPressed = false;
boolean sPressed = false;
boolean dPressed = false;
public void setup() 
{
  size(800,800);
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(20);
  ship.show();
  ship.move();
  for(int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  if(wPressed == true){
    ship.accelerate(.1);
  }
  if(aPressed == true){
    ship.turn(-5);
  }
  if(sPressed == true){
    ship.accelerate(-.1);
  }
  if(dPressed == true){
    ship.turn(5);
  }
}
public void keyPressed(){
  if(key == 'w'){
    wPressed = true;
  }
  else if(key == 'a'){
    aPressed = true;
  }
  else if(key == 's'){
    sPressed = true;
  }
  else if(key == 'd'){
    dPressed = true;
  }
  if(key == 'h'){
    ship.hyperspace();
  }
}

void keyReleased(){
    if(key == 'w'){
    wPressed = false;
  }
  else if(key == 'a'){
    aPressed = false;
  }
  else if(key == 's'){
    sPressed = false;
  }
  else if(key == 'd'){
    dPressed = false;
  }
}
