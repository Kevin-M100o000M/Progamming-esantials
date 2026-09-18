String text = "groen";
String text2 = "groen2";
float r = random(0,255);
float g = random(0,255);
float b = random(0,255);

void setup(){
size(800,400);
background(255,255,255);
}


void draw(){

textSize(45);
fill(22,144,99);
text(text,90,300);

fill(r,g,b);
text(text,90,340);

r = random(0,255);
g = random(0,255);
b = random(0,255);
delay(100);

}

//setup();
//draw();
