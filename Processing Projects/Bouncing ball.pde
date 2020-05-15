float x = 400;
float y = 300;

float x_speed = 5;
float y_speed = 5;

void setup() {
  size(800,600);
  x = 400;
}

void draw(){
  
  background(0);
  noStroke();
  
  x += x_speed;
  y += y_speed;
  
  if(x > width || x < 0){
   x_speed = x_speed * -1;
   y_speed = y_speed * -1;
  }
  fill(random(255),0,random(255));
  ellipse(x,y,100,100);
}
