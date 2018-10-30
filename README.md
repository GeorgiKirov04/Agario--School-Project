# Shcool-Project
int xpos = 0;
int ypos = 0;//променлива
int xpos1 = 0;
int ypos1 = 0;

void setup (){
  size (1500,800);//размер
  xpos = 0;
  xpos1 = 1300;
 
}


void draw (){
  background (255,0,0);
  if(keyPressed && key == 'a' ){//бутони за местене на човечето
    xpos-= 4;
  }else if (keyPressed && key == 'd'){
    xpos += 4;
  
  }else if (keyPressed && key == 's'){
    ypos+= 4; //мести позицията 
  }else if (keyPressed && key == 'w'){
    ypos -= 4;
   }else if(keyPressed && keyCode == LEFT ){//бутони за местене на човечето
    xpos1-= 4;
  }else if (keyPressed && keyCode == RIGHT){
    xpos1 += 4;
  
  }else if (keyPressed && keyCode == DOWN){
    ypos1+= 4; //мести позицията 
  }else if (keyPressed && keyCode == UP){
    ypos1 -= 4;
  
  }
  
  drawHuman(xpos,ypos);
  drawHuman2(xpos1,ypos1);
  
  
}
void drawHuman(int x, int y){
rectMode(CENTER);
rect(100 + x,100 + y,20,100);
ellipse(100+ x,70 + y,60,60);
ellipse(81+ x,70 + y,16,15); 
ellipse(119+ x,70 + y,16,15);
ellipse(81+ x,70 + y,5,10);
ellipse(119+ x,70 + y,5,10);
line(90+ x,80+ y,100 + x,80+ y);
line(90+ x,150 + y,90+ x,170+ y);
line(110+ x,150 + y,110+ x,170+ y);
line(90+ x,110 + y,120+ x,120+ y);
line(110+ x,110 + y,140+ x,120+ y);
rect(120+ x,120 + y,10,20);
rect(140+ x,120 + y,10,20);
rect(145+ x,105 + y,60,15);
rect(185+ x,105 + y,20,5);
}
void drawHuman2(int x, int y){
  rectMode(CENTER);
rect(100+ x,100+ y,20,100);
ellipse(100+ x,70+ y,60,60);
ellipse(81+ x,70+ y,16,15); 
ellipse(119+ x,70+ y,16,15);
ellipse(81+ x,70+ y,5,10);
ellipse(119+ x,70+ y,5,10);
line(90+ x,80+ y,100+ x,80+ y);
line(90+ x,150+ y,90+ x,170+ y);
line(110+ x,150+ y,110+ x,170+ y);
line(90+ x,110+ y,60+ x,120+ y);
line(110+ x,110+ y,80+ x,120+ y);
rect(60+ x,120+ y,10,20);
rect(80+ x,120+ y,10,20);
rect(65+ x,105+ y,60,15);
rect(25+ x,105+ y,20,5);
}

