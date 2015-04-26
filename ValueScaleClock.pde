String hours = "hours";
String minutes = "minutes";
String seconds = "seconds"; 

void setup(){
  size(600,600);
  smooth();
}

void draw(){
  background(255);
  int s = second();  // Values from 0 - 59
  int m = minute();  // Values from 0 - 59
  int h = hour();    // Values from 0 - 23
  drawEllipse(300, 300, 500, 500, h, hours); //hour ellipse
  drawEllipse(300, 300, 250, 250, m, minutes); //minute ellipse
  drawEllipse(300, 300, 75, 75, s, seconds); //second ellipse
}

void drawEllipse(float x, float y, float w, float h, float c, String string){ 
  switch(string) {
    case "hours":
      c = c * 11.087; 
      fill(c,c,c);
      break;
    case "minutes":
      c = c * 4.322;
      fill(c,c,c);
      break;
    case "seconds":
      c = c * 4.322;
      fill(c,c,c);
      break;
  }
  noStroke();
  ellipse(x,y,w,h);
}


