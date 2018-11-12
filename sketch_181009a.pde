float xr = width;
float yr = 0;
float wr = 30;
float hrup = 100;
float hrdown = 100;
float xspeed = 5;
float birdx = 100;
float birdy = 300;
float birdw = 50;
float birdh = 40;
float gap;
PImage bird;
int score = 0;
boolean gameOver = false;

void setup(){
  size(1400,700);
  bird = loadImage("bird.png");
  xr = width;
}


void draw(){
  if(birdx>0);
  birdx=0;
  background(0,0,255);
  if(xr < -wr){
    score=score+1;
;    if(xspeed < 20){
      xspeed++;    
    }
    xr = width;
    hrup = random(200,350);
    hrdown = random(200,300);

}
  if (keyPressed && key == ' '){
     birdy=birdy-5;
  } else {
    birdy=birdy+5;
  }
  image(bird,birdx,birdy,birdw,birdh);
  fill(#2CF563);
  rect(xr,yr,wr,hrup);
  fill(#2CF563);
  rect(xr,height-hrdown,wr,hrdown);
  xr -= xspeed;
 
 boolean collisionUp = (birdx + birdw) > xr && (birdy < hrup) && (xr - wr) < birdx;
  println(collisionUp);
  if(collisionUp){
    background(0,0,0);
    textSize(67);
    fill(255,255,255);
    text("Game Over",200,300);
    text(score,100,100);
  }
  text(score,500,100);
  textSize(67);
    
 boolean collisionDown = (xr+wr>birdx) && (xr<birdw+birdx) && (birdy+birdh>height-hrdown);
  println(collisionDown);
  if(collisionDown){
    background(0,0,0);
    textSize(67);
    fill(255,255,255);
    text(score,100,100);
  }
  text(score,500,100);
  textSize(67);
   if (gameOver){
     print("Gameover" + gameOver);

    background(0);
    text("Press 'r' to restart",400,450);
    text("Game Over",500,300);
    if(keyPressed && key == 'r'){
      gameOver = false;
      score = 0;
      birdx = 300;
      birdy = 300;
    } 
    } else {
      gameOver = collisionUp || collisionDown;
       print("Game Over" + gameOver);
      
    }
    
  }
