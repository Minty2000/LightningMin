![](JeffVEr2.0.JPG) 
PImage img;
int startX = 250;
int startY = 500;
int endX = 250 ;
int endY = 500 ;
int start2X = 0;
int start2Y = 200;
int end2X =0;
int end2Y = 200;
int half = ((int)(Math.random()*2));
boolean fact= true;
int randomNum = (int)(Math.random()*10);

void setup() {
  size (500, 500);
  strokeWeight(15);
  background(0,0,0);
  img = loadImage("JeffVer2.0.JPG");
}

void draw() {
  fill(0,0,0,10);
  rect (0,0,500,500);
  

  while (endX <325) {
    botomUp();
    topbottom();
  }
  if (fact == true ){
    
    smile();
    if (randomNum == 4){
      image(img,90,90);
    }
    fact = false;
    }
  }
void smile(){

    fill(121,24,46);
    ellipse(250,250,300,300);
     if (half == 0){
      fill(0,0,0);
      half = 1;
      stroke(35,234,23);
      noFill();
      arc(250,250,230,230,0,PI);
  }  else {
      fill (255,255,255);
      half = 0;
      stroke(224,21,34);
      noFill();
      arc(250,350,150,150,PI,TWO_PI);
  }
    fill(0,255,0);//black
    ellipse(250-50,190,30,60);
    ellipse(250+50,190,30,60);
    System. out. println(randomNum);
}
void topbottom(){
    stroke((int)(Math.random()*256));
    end2Y = start2Y - ((int)(Math.random()* 19)- 9);
    end2X = start2X + ((int)(Math.random()*20));
    line(start2X, start2Y, end2X, end2Y);
    start2X = end2X;
    start2Y = end2Y;
}
 void botomUp(){
   stroke((int)(Math.random()*256),214.,124);
    endY = startY - ((int)(Math.random()*10));
    endX = startX + ((int)(Math.random()* 19)- 9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
 }
 
void mousePressed() {
   startX = 250;
   startY = 500;
   endX = 250 ;
   endY = 500 ;
   fact =true;
   start2X = 0;
   start2Y = 200;
   end2X =0;
   end2Y = 200;
   randomNum = (int)(Math.random()*10);
}
