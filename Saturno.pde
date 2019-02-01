PImage Saturno;
int[] craSat = {170,60,50}; //El "craneo de saturno" cordenas y tamaño base de la cabeza
int[] corSat = {180,200,400}; // El "corazon de saturno" cordenas y tamaño base del pecho
int[] prnNep = {270,348,55};

void setup(){
  size(573,680);
  Saturno=loadImage("Saturno_devorando_a_su_hijo.jpg");
}

void draw(){
  image(Saturno,0,-100);
  
  noStroke();
  
  corazonSaturno();
  cbAbjSaturno();
  craneoSaturno();
  cbArbSaturno();
  brzDSaturno();
  
  neptuno();
  
  ManDSaturno();
  brzISaturno();
}  

void corazonSaturno(){
  fill(219,153,86);
  
  // Tronco
  ellipseMode(CORNER);
  ellipse(corSat[0],corSat[1],corSat[2],corSat[2]-170);
  ellipse(corSat[0]+120,corSat[1]+100,corSat[2]-80,corSat[2]-180);
  rectMode(CORNER);
  rect(corSat[0]+350,corSat[1]+30,corSat[2]-340,corSat[2]-340);
  
  // Hombro_Izq
  ellipseMode(CORNERS);
  ellipse(corSat[0]+180,corSat[1]+100,corSat[0]+400,corSat[1]-90);
  ellipse(corSat[0]+210,corSat[1]-100,corSat[0]+355,corSat[1]-30);
  ellipseMode(CORNER);
  ellipse(corSat[0]+160,corSat[1]-72,corSat[2]-290,corSat[2]-300);
  
  // Hombre_Drc
  ellipseMode(CORNER);
  ellipse(corSat[0]-22,corSat[1]+80,corSat[2]-300,corSat[2]-320);
  quad(corSat[0]-22,corSat[1]+120,corSat[0]-95,corSat[1]+205,corSat[0]+75,corSat[1]+205,corSat[0]+75,corSat[1]+120);
}

void cbAbjSaturno(){
  fill(200);
  
  beginShape();
  vertex(264,68);
  vertex(268,232);
  bezierVertex(270,240,260,280,220,310);
  vertex(228,295);
  vertex(200,315);
  bezierVertex(208,310,202,298,200,290);
  vertex(180,310);
  bezierVertex(189,300,200,250,190,240);
  bezierVertex(194,255,188,270,160,290);
  bezierVertex(178,280,175,250,168,240);
  vertex(150,260);
  bezierVertex(175,230,175,150,115,215);
  vertex(120,185);
  bezierVertex(60,5,285,15,300,60);
  vertex(264,68);
  endShape();
  
}

void craneoSaturno(){
  // Cabeza
  fill(219,153,86);
  ellipseMode(CORNER);
  ellipse(craSat[0],craSat[1],craSat[2],craSat[2]);
  ellipse((craSat[0]+25),(craSat[1]-10),(craSat[2]+18),(craSat[2])+18);
  ellipse(craSat[0],craSat[1]+10,craSat[2],craSat[2]+25);
  ellipse((craSat[0]+12),(craSat[1]+20),(craSat[2]+60),(craSat[2])+70);
  
  // Ojos
  ellipseMode(CORNERS);
  fill(200);
  ellipse(craSat[0]+5,craSat[1]+50,craSat[0]+30,craSat[1]+32);
  ellipse(craSat[0]+49,craSat[1]+32,craSat[0]+72,craSat[1]+16);
  
  //Pupilas
  fill(50);
  ellipseMode(CENTER);
  ellipse(craSat[0]+16,craSat[1]+40,craSat[2]-40,craSat[2]-40);
  ellipse(craSat[0]+60,craSat[1]+26,craSat[2]-38,craSat[2]-40);
  
  // Nariz
  fill(219,153,86);
  ellipseMode(CORNER);
  ellipse(craSat[0]+20,craSat[1]+38,craSat[2]-18,craSat[2]-18);
  
  // Fosas nasales
  fill(50);
  ellipseMode(CORNERS);
  ellipse(craSat[0]+25,craSat[1]+58,craSat[0]+35,craSat[1]+65);
  ellipse(craSat[0]+38,craSat[1]+53,craSat[0]+50,craSat[1]+58);
  
  // Boca
  ellipseMode(CORNER);
  ellipse(craSat[0]+25,craSat[1]+70,craSat[2]+5,craSat[2]);
  ellipseMode(CORNERS);
  ellipse(craSat[0]+30,craSat[1]+68,craSat[0]+82,craSat[1]+115);
}

void cbArbSaturno() {
  fill(200);
  
  beginShape();
  vertex(300,60);
  bezierVertex(318,70,350,110,352,120);
  vertex(345,120);
  bezierVertex(350,130,420,190,405,215);
  vertex(402,205);
  bezierVertex(400,225,400,280,410,300);
  vertex(380,330);
  vertex(260,190);
  bezierVertex(280,170,270,88,264,68);
  endShape();
}

void brzDSaturno(){
  fill(230,165,94);
  
  beginShape();
  vertex(110,388);
  bezierVertex(140,368,270,390,285,380);
  vertex(298,410);
  bezierVertex(240,410,150,500,115,490);
  bezierVertex(80,484,68,405,99,388);
  endShape();
}

void ManDSaturno(){
  fill(230,165,90);
  
  beginShape();
  vertex(195,380);
  bezierVertex(260,345,230,350,258,332); // Antebrazo_Arb
  
  // Nudillos
  bezierVertex(255,322,255,322,258,320);
  bezierVertex(254,316,248,295,262,290);
  bezierVertex(265,290,258,275,278,280);
  
  //Dedos
  bezierVertex(285,285,308,280,292,305);
  vertex(308,322);
  bezierVertex(300,325,302,352,285,356);
  
  bezierVertex(270,365,268,380,270,402); // Antebrazo_Abj
  vertex(195,380);
  endShape();
}

void neptuno(){
  fill(240,180,120);
  
  // Pierna_Izq
  ellipseMode(CORNER);
  ellipse(prnNep[0]-2,prnNep[1],prnNep[2]+5,prnNep[2]+25);
  
  // Pierna_Drc
  ellipseMode(CORNER);
  ellipse(prnNep[0]+44,prnNep[1]+15,prnNep[2],prnNep[2]+18);
}

void brzISaturno(){
  fill(240,168,95);
  
  beginShape();
  vertex(573,282);
  bezierVertex(540,320,470,314,422,308); // Antebrazo_Arb
  bezierVertex(410,290,368,285,370,272); // Muñeca_Arb
  bezierVertex(362,265,360,286,365,292); // Nudillos
  bezierVertex(340,285,340,294,305,296); // Dedods
  
  //Dedos
  bezierVertex(292,298,298,310,302,318); // Indice
  bezierVertex(285,320,290,338,310,340); // Corazon
  bezierVertex(305,342,300,365,318,368); // Anular e indice
  
  bezierVertex(328,380,390,360,405,355); // Muñeca_Abj
  bezierVertex(425,350,550,388,573,385); // Antebrazo_Abj
  endShape();
}
