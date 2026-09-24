int num1 = 415;

void setup(){
size(1440,900);
background(255,255,255);
}

void draw(){
  fill(220,10,10);
  noStroke();
  rect(90,90,num1,100);
  fill(255,255,255);
  rect(90,190,num1,100);
  fill(10,10,220);
  rect(90,290,num1,100);
  stroke(0,0,0);
  strokeWeight(20);
  line(80,80,80,715);
}
