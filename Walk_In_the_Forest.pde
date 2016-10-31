//variables
float thickness = 1.5;
int ground = 400;

void setup(){
  size(500,500);
  smooth();
  frameRate(2);
}

void draw(){
  background(0,191,255);
  fill(0,255,0);
  rect(0, ground, width, height);
  draw_clouds();
  make_rain();
  draw_grass();
  draw_trees();
}


//functions
//grass
void draw_grass(){
 noStroke();
 for (int i = 0; i < width; i+=7){
  stroke(0,255,0);
  strokeWeight(thickness);
  line(i, ground, i, 3*height/4);
}
}

//trees
void draw_trees(){
 noStroke();
 for (int i = 5; i < width; i+=25){
 float high = random(height/3, ground-100);
 float trunk = random(10,15);
 fill(192, 64, 0); //bark brown
 rect(i, high, trunk, ground-high); //tree trunk
 /*if (!mousePressed){
 fill(0,255,127); //leaf colors
 ellipse(i + 10, high, random(50,125), random(25,100)); //tree leaves
 }*/
 fill(random(255),random(255),random(255)); //leaf colors
 ellipse(i + 10, high, random(50,125), random(25,100)); //tree leaves
  }
  }

//rain
void make_rain(){
 stroke(0,0,255);
 if (mousePressed){
 for (int i = 0; i < 500; i+=1){
 float slope = random(2,10); //slopes
 float x = random(width);
 float y = random(ground);
 line(x,y, x + slope, y + slope); //raindrops
}
}
}

//clouds
void draw_clouds(){
for (int i = 0; i < 20; i++){
noStroke();
fill(255);
if (mousePressed){
fill(192,192,192); //grey
}
float x = random(width);
float y = random(height/3);
ellipse(x, y, random(50,75), random(20, 30)); //clouds

stroke(255,255,0);
if (mousePressed){
float slope = random(2,10); //slopes
line(x,y, x + slope, y + slope); //thundebolts
line(x + slope, y + slope, x - slope, y + 2*slope);
}
}
}

/*//forest fire
void fire(){
  for (int i = 0; i <5; i++){
  float size = random(20);
  float x = random(500);
  float y = random(height/2, 400);
  
  fill(255,255,50);
  ellipse(x,y,size+10,size+10);
    
  fill(255,153,50);
  ellipse(x,y,size+10,size+10);
    
  fill(255,51,50);
  ellipse(x,y,size+10,size+10);
}
  if (mousePressed){
  }
}
*/

