int canvasWidth = 1440;
int canvasHeight = 900;

int num1 = (100 * 5);
int num2 = (150 * 5);

int num3 = (80 * 3);
int num4 = (100 * 3);
int num5 = (120 * 3);
int num6 = (150 * 3);
int opdracht = 0;
//int sec = second();
//int sec = millis()/1000;
int countdown = 0;
int temp = 0;
int cooldown; 
int startTime, stopTime;
boolean running = false;
boolean setCounter = false;


void setup(){
size(1440,900);
background(255,255,255);
}

void draw(){
  //noStroke();
background(255,255,255);

  textSize(45);

  switch(opdracht){
    case 1:
      opdrachtDriehoeken();
      break;
    case 2:
      opdrachtEnvelop();
      break;
    case 3:
      opdrachtLijnen();
      break;
    case 4:
      opdrachtNederlandVlag();
      break;
  }



  if(key ==  '1'){
    opdracht = 1;
  }
  if(key ==  '2'){
    opdracht = 2;
  }
  if(key ==  '3'){
    opdracht = 3;
  }
  if(key ==  '4'){
    opdracht = 4;
  }

  textSize(25);
  fill(0,0,0);
  text("1 voor driehoeken\n 2 voor envelop \n 3 voor lijnen\n 4 voor Nederlandse Vlag",canvasWidth - 295,90);

  //line(num1,num1,num2,num2);
  //stroke(30,200,20);
  //line(num2,num1,num1,num2);
  //stroke(30,20,200);
  //line(num3,num1,num3,num2);
}

void keyPressed(){
      if(keyPressed){
      //delay(50);
      if(keyCode ==  UP) countdown += 2;
      if(keyCode ==  DOWN) countdown -= 2;
      if(countdown <= 1) countdown = 1;
      
      }
}


void opdrachtDriehoeken(){
  textSize(45);
  strokeWeight(2);
  stroke(200,10,20);
  //triangle(100,100,150,150,100,150);
  fill(120,0,190);
  triangle(num1,num1,num2,num2,num1,num2);
  textSize(45);
  fill(0,0,0);
  text("Rechhoekige driehoek",(num2 - 240),(num2 + 40));


  fill(120,0,190);
  strokeWeight(2);
  stroke(10,200,20);
  triangle(num4,num4,num3,num6,num5,num6);
  fill(0,0,0);
  textSize(25);
  text("Gelijke benige driehoek",(num6 - 240),(num6 + 40));
}

void opdrachtEnvelop(){
  strokeWeight(2);
  stroke(10,200,20);
  fill(0,0,0);
  int rectX = 100 * 3;
  int rectY = 90 * 3;
  int rectWidth = 400 * 2;
  int rectHeight = 100 * 3;

  rect(rectX,rectY,rectWidth,rectHeight);
  triangle(rectX,rectY,rectX + rectWidth,rectY,rectX + (rectWidth/2),rectY + (rectHeight/2));
}

void opdrachtLijnen(){
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

void opdrachtNederlandVlag(){
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
