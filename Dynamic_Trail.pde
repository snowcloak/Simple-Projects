void setup() {
  // happens only once
  size(2560, 1440);
}

void draw(){
  fill(0,20); //semitransparent black
  noStroke();
  rect(0,0, width, height); //fake background
  
  fill(255,0,0);
  ellipse(mouseX, mouseY, 40, 40); //circle at mouse coordaintes
  //happens over and over again (loop)
  //prints a line of text
  println("x:" + mouseX +", "+ "y:" + mouseY);
   }
