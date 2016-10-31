void setup(){
  size(500,500);
  smooth();
}

void draw(){
  background(0);
  drawstar(random(100), random(width), random(height)); //call drawstar
}

  //function definition
  void drawstar(float size, float x, float y){
    noStroke();
    // draw 2 semi-trans ellipses to look like star beams
  fill(255, 100, 200, 65);
  ellipse(x, y, size*5, size);  // draw it at x, y, using size var, too
  ellipse(x, y, size, size*5);
  
  // draw the star body itself, less transparent
  fill(255, 160);
  ellipse(x, y, size, size);
  
  // now draw a corona
  noFill();
  strokeWeight(4);
  stroke(100,100,255,45);
  ellipse(x,y,size*9,size*9);
  }
