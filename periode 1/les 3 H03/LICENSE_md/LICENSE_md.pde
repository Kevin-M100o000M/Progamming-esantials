
void setup(){
size(1440,900);
background(255,255,255);
}

void draw(){
  //fill(180,10,10);
  //noStroke();
  //rect(90,90,40,70);
  strokeWeight(10);
  int num1 = (30 * 7);
  int num2 = (60 * 7);
  int num3 = (45 * 7);
  stroke(200,10,20);
  line(num1,num1,num2,num2);
  stroke(30,200,20);
  line(num2,num1,num1,num2);
  stroke(30,20,200);
  line(num3,num1,num3,num2);
}
