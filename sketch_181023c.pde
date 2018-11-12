int dice=6;
int d=60;

void setup(){
  size(700,800);
}



void draw(){
 background(#001C6C);
  if (mousePressed){
    dice = (int)random(1,7);
  }
  println(dice);

 if (dice ==1 ){
   ellipse(width/2,height/2,d,d);
  textSize(100); 
 text(dice,400,400);
 
 }else if(dice== 2){
   ellipse(100,100,d,d);
   ellipse(width-100,height -100,d,d);
  }else if (dice ==3){
   ellipse(350,350,d,d);
  ellipse(350,d,d,d);
    ellipse(width-350,height-150,60,d);
 }else if(dice==4){
    ellipse(150,700,d,d);
    ellipse(150,d,d,d);
    ellipse(550,700,d,d);
     ellipse(width-150,height-740,60,d);

 }
}
