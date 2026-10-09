int opdracht = 0;
int leeftijd = 18;

int grijzeLicht = 10;
int GroenLicht = 40;
int Groen1 = 3;
int Groen3 = 72;
int OranjeLicht1 = 40;
int OranjeLicht2 = 40;
int RodeLicht = 40;
int licht = 1;

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
  text("1 check leeftijd\n 2 voor operators \n 3 voor cirkelofVierkant \n",0 + 60,120);

    switch(opdracht){
    case 1:
      onderLeeftijd();
      break;
    case 2:
      stopLicht();
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

void onderLeeftijd(){
    text(leeftijd +" uw leeftijd\n",width/2,height/2);
  if(leeftijd < 2){
    text("baby \n", width - 200,120);
  }
  else if(leeftijd < 4){
    text("kleuter \n", width - 200,120);
  }
  else if(leeftijd < 12){
    text("kind \n", width - 200,120);
  }
  else if(leeftijd <  20){
    text("tiener \n", width - 200,120);
  }
  else if(leeftijd < 25){
    text("adoloscent \n", width - 200,120);
  }
  else if(leeftijd >= 25){
    text("volwasse \n", width - 200,120);
  }
  if(leeftijd < 0){
    leeftijd = 0;
  }
}

void stopLicht(){
  fill(90,90,90);
  rect(550,150,300,500);

  fill(Groen1,GroenLicht,Groen3);
  ellipse(700,250,120,120);

  fill(OranjeLicht1,OranjeLicht2,40);
  ellipse(700,400,120,120);

  fill(RodeLicht,40,40);
  ellipse(700,550,120,120);

  if(licht == 1){
      Groen1 = 3;
      Groen3 = 72;
      GroenLicht += 2;
      if(GroenLicht >= 122 && licht == 1){
        GroenLicht = 0;
        licht = 2;
      }
  }
  else if(licht == 2){
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
  }
  else if(licht == 3){
      RodeLicht += 3;
      if(RodeLicht >= 255 && licht == 3){
        RodeLicht = 0;
        licht = 1;
      }
  }

}



void keyPressed(){
  if(opdracht == 1){
  if(keyCode ==  UP){
    leeftijd += 1;
  }
  if(keyCode ==  DOWN){
    leeftijd -= 1;
  }
  }
}
