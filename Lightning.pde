int startX = 250;
int startY = 500;
int endX = 250 ;
int endY = 500 ;
void setup() {
  size (500, 500);
  strokeWeight(5);
  
}

void draw() {
  fill(0,0,0,20);
  rect (0,0,500,500);
  while (endX <1000) {
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    endY = startY - ((int)(Math.random()*5));
    endX = startX + ((int)(Math.random()* 19)- 9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
    smile();
  }
}
void smile(){
    fill(255,255,00); //yellow
    ellipse(200,200,300,300);
    arc(200,200,230,230,radians(30),radians(150));
    fill(0);//black
    ellipse(200-50,140,30,60);
    ellipse(200+50,140,30,60);
}
void mousePressed() {
   startX = 250;
   startY = 500;
   endX = 250 ;
   endY =500 ;
}
