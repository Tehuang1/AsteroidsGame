Spaceship ship = new Spaceship();
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Bullet> bullet = new ArrayList <Bullet>();
Star[] sky = new Star[200];
boolean wPressed = false;
boolean aPressed = false;
boolean sPressed = false;
boolean dPressed = false;
boolean gameOver = false;
int count = 0;
int health = 150;
int score = 0;
public void setup() 
{
  size(800,800);
  for(int i = 0; i < sky.length; i++){
    sky[i] = new Star();
  }
  for(int i = 0; i < 30; i++){
    rock.add(new Asteroid());
  }
}
public void draw() 
{
  if(gameOver == false){
  background(20);
  for(int i = 0; i < sky.length; i++){
    sky[i].show();
  }
  if (mousePressed == true){
    count++;
    if(count % 15 == 0){
      bullet.add(new Bullet(ship));
      count = 0;
    }
  }
  for(int i = 0; i < bullet.size(); i++){
    if(bullet.get(i).getBX() > 799 || bullet.get(i).getBX() < 1){
      bullet.remove(i);
      break;
    }
    if(bullet.get(i).getBY() > 799 || bullet.get(i).getBY() < 1){
      bullet.remove(i);
      break;
    }
    fill(255,0,0);
    bullet.get(i).show();
    bullet.get(i).move();
    for(int a = 0; a < rock.size(); a++){
    float d2 = dist((float)(bullet.get(i).getBX()), (float)(bullet.get(i).getBY()), (float)(rock.get(a).getX()), (float)(rock.get(a).getY()));
    if(d2 < 10){
      bullet.remove(i);
      score = score + 10;
      rock.remove(a);
      rock.add(new Asteroid());
      break;
      }
    }
  }
  for(int i = 0; i < rock.size(); i++){
  rock.get(i).show();
  rock.get(i).move();
  float d = dist((float)(ship.getXship()), (float)(ship.getYship()), (float)(rock.get(i).getX()), (float)(rock.get(i).getY()));
  if(d < 12){
    rock.remove(i);
    rock.add(new Asteroid());
    health = health - 25;
    if(health == 0)
      gameOver = true;
    }
  }
  ship.show();
  ship.move();
  if(wPressed == true){
    ship.accelerate(.08);
  }
  if(aPressed == true){
    ship.turn(-5);
  }
  if(sPressed == true){
    ship.accelerate(-.08);
  }
  if(dPressed == true){
    ship.turn(5);
  }
  strokeWeight(3);
  stroke(255);
  fill(100,100,100);
  rect(27,27,154,24);
  noStroke();
  fill(0,200,0);
  rect(30,30,health,20);
  strokeWeight(2);
  stroke(255);
  textSize(20);
  text("Score: ", 670, 50);
  text(score, 730, 50);
  }
  else {
    background(0);
    fill(255);
    textSize(40);
    textAlign(CENTER, BOTTOM);
    text("GAME OVER", 400,400);
    text("Press r to restart", 400, 450);
    text("Score: ", 350, 500);
    text(score, 450, 500);
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
  if(gameOver == true){
    if(key == 'r'){
      gameOver = false;
      health = 150;
      count = 0;
      score = 0;
      ship = new Spaceship();
      rock = new ArrayList <Asteroid>();
      bullet = new ArrayList <Bullet>();
      for(int i = 0; i < sky.length; i++){
        sky[i] = new Star();
      }
      for(int i = 0; i < 30; i++){
        rock.add(new Asteroid());
      }
    }
  }
}
