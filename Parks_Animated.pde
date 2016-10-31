void setup(){
//screen size
size(500,500);
}

float birdX = 0;
float birdY = 150;
float wingY = 120;
float wingV = 1;
float birdV = 1.5;
float cloudV1 = 1;
float cloudV2 = .5;
float cloudX1 = 100;
float cloudX2 = 230;
float sunX = 0;
float sunY = 0;
float sunV = 1;
float moonV = 0;
void draw(){
smooth();
noStroke();

//sun
if (sunV == 1){
//sky
fill(135,206,235);
rect(0,0,width,height);
fill(255,255,0);
ellipse(sunX,sunY,150,150);
sunX += sunV;
sunY += sunV;
}
if (sunY > 500){
 moonV = 1;
 sunV = 0;
 sunX = 0;
 sunY = 0;
}

//moon
if (moonV == 1){
fill(25,25,112);
rect(0,0,width,height);
fill(255,255,255);
ellipse(sunX,sunY,100,100);
sunX += moonV;
sunY += moonV;
}

if (sunY > 500){
 moonV = 0;
 sunV = 1;
 sunX = 0;
 sunY = 0;
}

//ground-grass
fill(124,252,0);
rect(0, 400, 500, 250);

//tree
fill(192, 64, 0);
rect(100, 250, 20, 150); //tree trunk
fill(34,139,34);
ellipse(110, 250, 125, 100); //tree leaves

//lower cloud
fill(255,255,255);
ellipse(mouseX, mouseY, 75, 30);
fill(255,255,255);
ellipse(mouseX, mouseY, 55, 30);
//cloud movement
cloudX1 += cloudV1;
if(cloudX1 + 70 > width){
  cloudV1 *= -1;
}
if(cloudX1 - 70 < 0){
  cloudV1 *= -1;
}


//upper cloud
fill(255,255,255);
ellipse(cloudX2, 70, 75, 30);
fill(255,255,255);
ellipse(cloudX2 + 40, 70, 70, 30);
//cloud movement
cloudX2 += cloudV2;
if(cloudX2 + 70 > width){
  cloudV2 *= -1;
}
if(cloudX2 - 70 < 0){
  cloudV2 *= -1;
}

//bird
//left flight
if (birdV > 0){
fill(255,165,0);
triangle(birdX + 25, birdY - 5, birdX + 25, birdY + 5, birdX + 35,birdY); //bird beak
fill(0,191,255);
ellipse(birdX + 20, birdY, 20,20); //bird head
ellipse(birdX, birdY, 33,20); //bird body
birdX += birdV;
if (birdX + 40 > width){
  birdV *= -1;
}
fill(0,191,255);
triangle(birdX - 10, birdY, birdX + 10, birdY, birdX - 10, wingY); //bird wing
//wing flap
 wingY += wingV;
if(wingY > birdY) {
  wingV *= -1; 
 }
 if (wingY == 120){
  wingV *= -1; 
 }
 
fill(0);
ellipse(birdX + 20, birdY - 5, 5, 5); //bird eye
}

//right flight
if (birdV < 0){
fill(255,165,0);
triangle(birdX - 25, birdY - 5, birdX - 25, birdY + 5, birdX - 35,birdY); //bird beak
fill(0,191,255);
ellipse(birdX - 20, birdY, 20,20); //bird head
ellipse(birdX, birdY, 33,20); //bird body
//bird flight or movement
birdX += birdV;
fill(0,191,255);
if (birdX - 40 < 0){
  birdV *= -1;
}
triangle(birdX + 10, birdY, birdX - 10, birdY, birdX + 10, wingY); //bird wing
//wing flap
 wingY += wingV;
if(wingY > birdY) {
  wingV *= -1; 
 }
 if (wingY == 120){
  wingV *= -1; 
 }
fill(0);
ellipse(birdX - 20, birdY - 5, 5, 5); //bird eye
}

//swings
stroke(0);
line(150, 400, 150, 300); //right bar
line(350, 400, 350, 300); //left bar
line(150, 300, 350, 300); //top bar

//left swing
line(175, 300, 175, 380); //right string
line(225, 300, 225, 380); //left string
fill(160,82,45);
rect(175, 380, 50, 5); //swing seat

//right swing
stroke(0);
line(275, 300, 275, 380); //right string
line(325, 300, 325, 380); //left string
fill(160,82,45);
rect(275, 380, 50, 5); //swing seat

//bench
fill(205,133,63);
rect(400, 385, 60, 5); //seat
rect(400, 365, 60, 10); //back
fill(0);
rect(420, 375, 5, 10); //support
rect(440, 375, 5, 10);
rect(410, 390, 5, 10); //legs
rect(450, 390, 5, 10);
}