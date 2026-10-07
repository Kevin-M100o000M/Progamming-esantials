int score = 0;
int opdracht = 0;
int leeftijd = 18;
int konijn = 30;
boolean help = true;

int X = width/2;
int Y = height/2;
int widthRect = 50;
int heightRect = 50;
int sizeModifier = 10;

void setup(){
size(1440,900);
background(255,255,255);

X = width/2;
Y = height/2;
}

void draw(){
  background(0,0,0);

  fill(255,255,255);
  textSize(45);
  text("Opdracht: " + opdracht + "\n",0 + 60,60);
  textSize(30);
  text("1 check leeftijd\n 2 voor operators \n 3 voor cirkelofVierkant \n",0 + 60,120);

    switch(opdracht){
    case 1:
      checkLeeftijd();
      break;
    case 2:
      operators();
      break;
    case 3:
      cirkelOfVierkant();
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


}

void checkLeeftijd(){
  if(leeftijd >= 18){
    textSize(30);
    text("leeftijd is 18 of hoger\n",width/2,520);
  }
  else{
    textSize(30);
    text("leeftijd is lager dan 18\n",width/2,520);
  }
}

void operators(){
  int spacing = 0;
  text("Konijn: " + konijn + "\n",width/4,520);
  text("Leeftijd: " + leeftijd + "\n",width/4,720);
  text(">>>>>> TEKST <<<<<\n",width/2 - 60,520);

  spacing += 50;

  if(konijn == leeftijd){
    textSize(30);
    text("leeftijd is zelfde waarde als konijn\n",width/2,520 + spacing);
    fill(255,0,0);
    spacing += 50;
  }


  if(konijn >= 4){
    textSize(30);
    fill(255,0,0);
    text("konijn is hoger dan 4\n",width/2,520 + spacing);
    spacing += 50;
  }


  if(konijn < 2000 && konijn >= 40){
    textSize(30);
    fill(255,0,0);
    text("hoger dan 39 kleiner dan 2000 \n",width/2,520 + spacing);
    spacing += 50;
  }


  if(konijn != 0 || konijn < 10){
    textSize(30);
    fill(255,0,0);
    text("Konijn is niet nul en kleiner dan 10\n",width/2,520 + spacing);
  }
}

void cirkelOfVierkant(){

  textSize(45);
  text("Vierkant: " + help + "\n",50,height/2 - 140);
  text("Modifier: " + sizeModifier + "\n",50,height/2 - 190);
  textSize(25);
  text("f = false g = true\nw is plus modifier s is min\npijljtje om hoog plus heigt omlaag andersom en links rechts width\n",50,height/2 + 200);

  if(help == true){
    rect(X - widthRect/2, Y - heightRect/2, widthRect, heightRect);
  }
  else{
    ellipse(X, Y, widthRect, heightRect);
  }
}

void keyPressed(){
  if(opdracht == 2){
  if(keyCode ==  UP){
    konijn += 1;
  }
  if(keyCode ==  DOWN){
    konijn -= 1;
  }
  }

  if(opdracht == 3){

  if(keyCode ==  UP){
      heightRect += sizeModifier;
  }
  if(keyCode ==  DOWN){
      heightRect -= sizeModifier;
  }

  if(keyCode ==  RIGHT){
      widthRect += sizeModifier;
  }
  if(keyCode ==  LEFT){
      widthRect -= sizeModifier;
  }

  if(key ==  'w'){
      sizeModifier += 1;
    }
  if(key ==  's'){
      sizeModifier -= 1;
    }

  if(key ==  'f'){
      help = false;
    }
  if(key ==  'g'){
      help = true;
    }
  }
}

