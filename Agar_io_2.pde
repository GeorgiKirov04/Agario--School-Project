
//xor - izklkuchvashto ili
//int x = 100;
//int y = 150;
//int w = 200;
//int h = 50;
//int x2 = 400;
//int y2 = 300;
//int w2 = 200;
//int h2 = 50;


void setup(){
  size(1300, 700);
}
//как да запълнем квадрат
//void draw(){
  //boolean isOverButton =//(mouseX > x ) &&
                        //(mouseX < (x + w)) &&
                        //(mouseY > y) &&
                        //(mouseY < y+h); 
  //boolean isOverButton2 =(mouseX > x2) &&
                         //(mouseX < (x2 + w2)) &&
                         //(mouseY > y2) &&
                         //(mouseY < y2+h2); 
  //if ((isOverButton || isOverButton2) && mousePressed) {
  //background(255, 0, 0);
  //} else {
  //background(0, 0, 255);
  //}
   //rect(x, y, w, h);
   //rect(x2, y2, w2, h2);
//}

//Как кда запълваме бутон
//float d = sqrt((x - mouseX)*(x - mouseX) + (y - mouseY)*(y - mouseY)); pitagorova teorema raboti vmest float d = dist(x, y, mouseX, mouseY);
int x = 150;
int y = 150;
int r = 20;
int x2= 300;
int y2 = 300;
int r2 = 30;
int h = 0;
void draw(){
  background(0, 0, 0);
  fill(0);
  float d = dist(x, y, mouseX, mouseY);
  if(x2<=r2){
    x2=r2;
  }
  if(x2>=width-r2){
    x2=width-r2;
  }
  if(y2>=height-r2){
    y2=height-r2;
  }
  if(y2<=r2){
    y2=r2;
  }
  if(keyPressed){    
    if(key == 'w'){
      y2 -= 6; 
    } else if(key == 's'){
      y2 += 6;
    } else if(key == 'a'){
      x2 -= 6;
    } else if(key == 'd'){
      x2 += 6;
    }
  }
  if(dist(x, y, x2, y2) < (r + r2)){
    x = (int)random(0, 1300);
    y = (int)random(0,700); 
    r2 = r2 + 5;
    random(200, 200);
  } 
  fill(255, 0, 0);
    ellipse(x, y, 2*r, 2*r);
    fill(0, 255, 0);
  ellipse(x2, y2, 2*r2, 2*r2);
}
