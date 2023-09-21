int startX = 250;
int startY = 500;
int endX = 250 ;
int endY = 500 ;
int half = ((int)(Math.random()*2));
void setup() {
  size (500, 500);
  strokeWeight(5);
  background((int)(Math.random()*256));
}

void draw() {
  fill(0,0,0,20);
  rect (0,0,500,500);
  while (endX <300) {

    bottomUp();
    smile();
  }
  }
void smile(){

     if (half == 0){
      fill(0,0,0);
      half = 1;
  }  else {
      fill (255,255,255);
      half = 0;
  }
    ellipse(250,250,300,300);
    arc(250,250,230,230,radians(30),radians(150));
    fill(255,0,0);//black
    ellipse(250-50,190,30,60);
    ellipse(250+50,190,30,60);
}
 void bottomUp(){
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    endY = startY - ((int)(Math.random()*5));
    endX = startX + ((int)(Math.random()* 19)- 9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
 }
void mousePressed() {
   startX = 250;
   startY = 500;
   endX = 250 ;
   endY =500 ;
}
