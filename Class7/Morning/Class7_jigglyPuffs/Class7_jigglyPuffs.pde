float a, b, c, d, x, y, e, f;
float add, wiggle, glow;
void setup() {
  size(1000, 600);
  add = 0.0;
  wiggle = 0.0;
  a = 463;
  b = 165;
  c = 563;
  d = 185;
  x = 41;
  y = 41;
  e = 450;
  f = 150;
  glow = 90;
}
void draw() {
  //Color fading background
  noStroke();
  background(255);

  for (int jY = 0; jY <height; jY+=200) {
    for (int jX = -300; jX < width; jX += 200) {
      pushMatrix();
      translate(jX, jY);
      jigglyPuff();
      popMatrix();
    }
  }

  //fill(#25A02E,20);
  //rect(0,0,1000,50);
  //fill(#25A02E,40);
  //rect(0,50,1000,50);
  //fill(#25A02E,60);
  //rect(0,100,1000,50);
  //fill(#25A02E,80);
  //rect(0,150,1000,50);
  //fill(#25A02E,100);
  //rect(0,200,1000,50);
  //fill(#25A02E,120);
  //rect(0,250,1000,50);
  //fill(#25A02E,140);
  //rect(0,300,1000,50);
  //fill(#25A02E,160);
  //rect(0,350,1000,50);
  //fill(#25A02E,180);
  //rect(0,400,1000,50);
  //fill(#25A02E,200);
  //rect(0,450,1000,50);
  //fill(#25A02E,220);
  //rect(0,500,1000,50);
  //fill(#25A02E,240);
  //rect(0,550,1000,50);
  ////Text box
  //noStroke();
  //fill(#676060);
  //rect(0,380,1000,220);
  //fill(#D33526);
  //rect(0,390,1000,200,20);
  //fill(#4C7C5F);
  //rect(10,394,980,192,50);
  ////Text 1st line
  //textSize(40);
  //fill(44);
  //text("What the … ?",47,462);
  //textSize(40);
  //fill(234);
  //text("What the … ?",45,460);
  ////Text 2nd line
  //textSize(40);
  //fill(44);
  //text("JIGGLYPUFF is evolving!",47,532);
  //textSize(40);
  //fill(234);
  //text("JIGGLYPUFF is evolving!",45,530);
  ////Text cover
  //fill(#4C7C5F);
  //rect(x,420,290,50);
  //if (x < 410){
  //x+=7;
  //}
  //rect(y,490,457,50);
  //if (x > 400 && y < 520){
  //y+=7;
  //// }
  //}
  ////staging
  //noStroke();
  //fill(#F7EDBB,glow);
  //ellipse(498,275,e,f);
  //glow = glow + 6*sin(0.6*add);
  //e = e + 2*sin(0.6*add);
  //f = f + 2*sin(0.6*add);
  //Jigglypuff feet
}
void jigglyPuff() {
  stroke(0);
  strokeWeight(2);
  fill(#FCD6EE);
  ellipse(433, 275, 74, 26);
  ellipse(538, 288, 74, 26);
  //Jigglypuff ears
  triangle(420, 60, 490, 90, 415, 150);
  triangle(630, 110, 520, 110, 580, 230);
  fill(20);
  triangle(430, 75, 480, 95, 425, 140);
  triangle(618, 120, 520, 120, 580, 205);
  //Jigglypuff hand 1
  fill(#FCD6EE);
  bezier(405, 185, 360, 201, 360, 201, 415, 220);
  //Jigglypuff body
  ellipse(500, 190, 200, 200);
  //Jigglypuff hand 2 + hand 1 cover
  noStroke();
  ellipse(400, 200, 15, 15);
  stroke(0);
  bezier(550, 260, 545, 305, 545, 305, 520, 276);
  //Jigglypuff eyes
  fill(250);
  ellipse(450, 180, 60, 60);
  ellipse(550, 200, 60, 60);
  fill(#227977);
  ellipse(454, 176, 48, 48);
  ellipse(554, 196, 48, 48);
  fill(255);
  ellipse(a, b, 20, 20);
  ellipse(c, d, 20, 20);
  a=a+0.3*sin(wiggle);
  b=b+0.3*sin(wiggle);
  c=c+0.3*sin(wiggle);
  d=d+0.3*sin(wiggle);
  wiggle+=0.4;
  strokeWeight(1);
  fill(#86D3B2);
  beginShape();
  vertex(468, 195);
  vertex(465, 192);
  vertex(462, 191);
  vertex(458, 188);
  vertex(456, 187);
  vertex(452, 186);
  vertex(450, 186);
  vertex(447, 185);
  vertex(443, 185);
  vertex(441, 185);
  vertex(438, 186);
  vertex(435, 187);
  vertex(436, 189);
  vertex(439, 193);
  vertex(442, 196);
  vertex(445, 198);
  vertex(448, 199);
  vertex(450, 200);
  vertex(452, 199);
  vertex(455, 199);
  vertex(458, 198);
  endShape();
  beginShape();
  vertex(570, 215);
  vertex(568, 213);
  vertex(565, 211);
  vertex(562, 210);
  vertex(560, 209);
  vertex(558, 209);
  vertex(556, 208);
  vertex(554, 208);
  vertex(552, 208);
  vertex(550, 208);
  vertex(547, 208);
  vertex(544, 209);
  vertex(542, 209);
  vertex(540, 210);
  vertex(537, 212);
  vertex(538, 215);
  vertex(540, 216);
  vertex(542, 218);
  vertex(545, 218);
  vertex(547, 219);
  vertex(550, 220);
  vertex(552, 221);
  vertex(555, 220);
  vertex(558, 219);
  vertex(560, 218);
  vertex(565, 217);
  vertex(570, 215);
  endShape();
  //Jigglypuff hair
  pushMatrix();
  translate(520, 130);
  rotate(radians(4*sin(add)));
  add+=0.2;
  fill(#FCD6EE);
  strokeWeight(2);
  ellipseMode(CENTER);
  ellipse(0, 0, 70, 110);
  noStroke();
  ellipse(-20, 0, 60, 60);
  stroke(0);
  bezier(10, 35, 0, 0, -40, 60, -50, 5);
  popMatrix();
  //Jigglypuff mouth
  bezier(473, 220, 483, 230, 490, 235, 510, 227);
}