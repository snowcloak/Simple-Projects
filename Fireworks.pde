int population = 15;

void setup(){
  
size(500,500);
smooth();
noStroke();
}

void draw(){
  
  background(0);
//populations
for (int i = 0; i < population; i++){
 //random numbers 0 to width
  float x = random(width);
 //random numbers 0 to height 
 float y = random(height);
 
 fill(random(255), random(255), random (255));
 
 ellipse (x,y,20,20); //circle
 stroke(255);
 //line(width/2, height,x,y);
}
}