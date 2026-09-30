float getal = 23.40340;
int score = 0;
int opdracht = 0;

void setup(){
size(1440,900);
background(255,255,255);
}

void draw(){
  background(0,0,0);

  fill(255,255,255);
  textSize(45);
  text("Opdracht: " + opdracht + "\n",0 + 60,60);
  textSize(30);
  text("1 voor Afgeronde getal\n 2 voor korteNotatie \n 3 voor secondenOpdracht \n 4 voor gemideldeOpdracht \n",0 + 60,120);

    switch(opdracht){
    case 1:
      rondAfGetal();
      break;
    case 2:
      korteNotatie();
      break;
    case 3:
      secondenOpdracht();
      break;
    case 4:
      gemideldeOpdracht();
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

void gemideldeOpdracht(){
  float num1 = 64.05;
  float num2 = 32.025;
  float num3 = 16.256;
  float num4 = 8;
  float sumOfNum = (num1 + num2 + num3 + num4)/4;

  text("float num1 = 64.05;\nfloat num2 = 32.025;\nfloat num3 = 16.256;\nfloat num4 = 8;\nfloat sumOfNum = (num1 + num2 + num3 + num4)/4;",width/8,height/2);

  text("Sum of die NUM: " + sumOfNum + "\n",width/2,height/2);
}

void secondenOpdracht(){
  float numSec = 40000;
  float numMin = numSec / 60;
  float numHour = numMin / 60;
  float numDay = numHour / 24;
  float numYears = numDay / 365;
  float minNum = 30;


  text("float numSec = 40000;\nfloat numMin = numSec / 60;\nfloat numHour = numMin / 60;\nfloat numDay = numHour / 24;\nfloat numYears = numDay / 365;\nfloat minNum = 30;", width/8, height/2 -minNum);

  fill(240,0,0);
  text("Seconden: " + numSec + "\n",width/2,(height/2 - minNum));
  minNum -= 30;
  fill(240,240,0);
  text("Minuten: " + numMin + "\n",width/2,(height/2 - minNum));
  minNum -= 30;
  fill(0,240,0);
  text("Uren: " + numHour + "\n",width/2,(height/2 - minNum));
  minNum -= 30;
  fill(0,240,240);
  text("Dagen: " + numDay + "\n",width/2,(height/2 - minNum));
  minNum -= 30;
  fill(127,41,250);
  text("Jaren: " + numYears + "\n",width/2,(height/2 - minNum));

}


void korteNotatie(){
  textSize(25);
  score =  10;
  int i = 1;
  score += 10;
  text(score + "\n",width/2,(height/2 - 30) + i);
  i += 30;

  score -= 5;
  text(score + "\n",width/2,(height/2 - 30) + i );
  i += 30;

  score *= 0.2;
  text(score + "\n",width/2,(height/2 - 30) + i );
  i += 30;

  score += 200;
  text(score + "\n",width/2,(height/2 - 30) + i );
  i += 30;

  score /= 3;
  text(score + "\n",width/2,(height/2 - 30) + i );
  i += 30;

  textSize(18);
  text("score += 10;\ntext(score + '\n',width/2,(height/2 - 30) + i);\ni += 30;\nscore -= 5;\ntext(score + '\n',width/2,(height/2 - 30) + i );\ni += 30;\nscore *= 0.2;\ntext(score + '\n',width/2,(height/2 - 30) + i );\ni += 30;\nscore += 200;\ntext(score + '\n',width/2,(height/2 - 30) + i );\ni += 30;\nscore /= 3;\ntext(score + '\n',width/2,(height/2 - 30) + i );\ni += 30;",width/8,height/2  -30 );
}

void rondAfGetal(){
  fill(255,255,255);
  getal = getal * 10;
  getal = (int) getal;
  getal = getal / 10;
  textSize(55);
  text(getal + "\n",width - 495,120);
}
