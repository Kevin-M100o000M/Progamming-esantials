int grijzeLicht = 10;
int GroenLicht = 40;
int Groen1 = 3;
int Groen3 = 72;
int OranjeLicht1 = 40;
int OranjeLicht2 = 40;
int RodeLicht = 40;
int licht = 1;
//int sec = (millis() / 1000);
int oogWidth = 75;
int oogHeight = 100;
int oogPos = 0;
float gezichtX = 720;
float gezichtY = 450;
int gezichtSize = 400;
int gezichtPos = 0;
int opdracht = 0;


void setup(){
size(1440,900);
background(255,255,255);
}

void draw(){
  //noStroke();
  background(255,255,255);
  //int sec = second();
  //int sec = millis() / 1000;
  //sec -= 1;
    switch(opdracht){
    case 1:
      stopLicht();
      break;
    case 2:
      gezicht();
      break;
  }


  if(key ==  '1'){
    opdracht = 1;
  }
  if(key ==  '2'){
    opdracht = 2;
  }

  
  textSize(25);
  fill(0,0,0);
  text("1 voor stoplicht\n 2 voor gezicht \n",width - 295,90);

}

void stopLicht(){
  fill(0,0,0);
  rect(550,150,300,500);

  fill(Groen1,GroenLicht,Groen3);
  ellipse(700,250,120,120);

  fill(OranjeLicht1,OranjeLicht2,40);
  ellipse(700,400,120,120);

  fill(RodeLicht,40,40);
  ellipse(700,550,120,120);

  switch(licht){
    case 1:
      Groen1 = 3;
      Groen3 = 72;
      GroenLicht += 2;
      if(GroenLicht >= 122 && licht == 1){
        GroenLicht = 0;
        licht = 2;
      }
      break;
    case 2:
      Groen1 = 40;
      Groen3 = 40;
      OranjeLicht1 += 3;
      OranjeLicht2 += 2;
      if(OranjeLicht2 >= 125){
        OranjeLicht2 = 125;
      }
      if(OranjeLicht1 >= 255){
        OranjeLicht2 = 40;
        OranjeLicht1 = 40;
        licht = 3;
      }
      break;
    case 3:
      RodeLicht += 3;
      if(RodeLicht >= 255 && licht == 3){
        RodeLicht = 0;
        licht = 1;
      }
      break;
  }
}


void gezicht(){

  fill(0,0,0);
  ellipse(gezichtX,gezichtY,gezichtSize,gezichtSize);

  fill(255,255,255);
  strokeWeight(2);

  switch(oogPos){
    case 1:
    oogWidth = 55;
    oogHeight = 100;
      break;
    case 3:
    fill(0,0,0);
    oogWidth = 30;
    oogHeight = 70;
      break;
    //case 5:
    //fill(0,0,0);
    //oogWidth = 25;
    //oogHeight = 70;
    //  break;
    case 7:
    fill(0,0,0);
    oogWidth = 15;
    oogHeight = 60;
      break;
    case 12:
    fill(255,255,255);
    oogWidth = 5;
    oogHeight = 90;
      break;
  }

  if(oogPos > 12) oogPos = 0;
  oogPos++;

  ellipse(width/2.2,height/2.5,oogWidth,oogHeight);
  ellipse(width/1.8,height/2.5,oogWidth,oogHeight);


  fill(255,255,255);
  arc(width/2.2,height/3,63,20, PI-QUARTER_PI/2, PI*2+QUARTER_PI/2,PIE);
  arc(width/1.8,height/3,63,20, PI-QUARTER_PI/2, PI*2+QUARTER_PI/2,PIE);
  arc(width/2,height/1.8,220,160, 0, PI,CHORD);
}
