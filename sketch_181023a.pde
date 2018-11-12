int step = 10;

void setup(){

  size(600,800);
}
void draw(){
  background(255,255,0);
  //line(0,0,width,0);
  //line(0,10,width,10);
  //line(0,20,width,20);
  //line(0,30,width,30);
  //line(0,40,width,40);
  //line(0,50,width,50);
  for(int y = 0; y <= 800; y +=step){
   line(0,y,width,y); 
  }
  for(int x = 0; x <= height; x +=step){
    line(x,0,x,height);
  }
  if(mousePressed){
    if(mouseButton == LEFT){
      step += 2;
    }else if (mouseButton == RIGHT){
      step -= 2;
    }
    if(step < 1){
      step = 1;

  }

  }
}
