int opdracht = 0;
String string1 = "string1";
String string2 = "string2";
String string3 = "string3";
String string4 = string1 + "" + string2  + "" + string3 + "" + "string4";

float gewicht = 10;
float lengte = 1;
float bmi = gewicht / (lengte*lengte);

float tempMouse = 0;

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
      opdrachtStringsAanElkaar();
      break;
    case 2:
      watLangZeg();
      break;
    case 3:
      BMI();
      break;
    case 4:
      //opdrachtDriehoeken();
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
  text("1 Stringen Aan elkaar\n 2 Wat Lang Zeg\n 3 BMI\n Gezichten op reis",width - 295,90);
  text(opdracht,width - 595,90);
}

void opdrachtStringsAanElkaar(){
  fill(mouseX, mouseY, 0);
  text(string4, mouseX - (45 * 7), mouseY);
  //tempMouse = mouseX/mouseY;
}

void watLangZeg(){
  int wat = 30;
  String strong = "??? me confus";
  textSize(50);
  text(wat + " " + strong,width/2 - 150,height/2);
}

void BMI(){
  fill(0);
  textSize(25);
  text("ARROW UP is +0.1", 30, 30);
  text("ARROW DOWN is -0.1" , 30, 60);
  text("ARROW LEFT is +0.01" , 30, 90);
  text("ARROW RIGHT is -0.01", 30, 120);
  gewicht = mouseX/4;
  if(lengte <= 0.5) lengte = 0.5;
  if(lengte >= 2.5) lengte = 2.5;
  bmi = gewicht / (lengte*lengte);
  textSize(40);
    text("bmi" + " " + bmi, mouseX -7, mouseY);
    text("lengte" + " " + lengte, mouseX - 7, mouseY + 50);
    text("gewicht" + " " + gewicht, mouseX -7, mouseY - 50);
}

void keyPressed(){
  if(keyCode ==  UP){
    lengte += 0.10;
  }
  if(keyCode ==  DOWN){
    lengte -= 0.10;
  }
  if(keyCode ==  RIGHT){
    lengte += 0.01;
  }
  if(keyCode ==  LEFT){
    lengte -= 0.01;
  }
}
