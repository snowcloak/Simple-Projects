void setup() {
  // happens only once
  size(500, 500);
}
float ballx = 0; // defined a variable mySize, as a float
float bally = 0;
float ballA = 2.5; //velocity
float ballB = 1.5;

void draw(){
  //background
  fill(230,230,250);
  rect(0,0,width, height);
  smooth();
  noStroke();
  //conditions per bounce
              if (ballA > 0 && ballB > 0){
                fill(255,255,0);
              }
              if (ballA < 0 && ballB < 0){
                fill(50,205,50);
              }
              if (ballA > 0 && ballB < 0){
                fill(65,105,225);
              }
              if (ballA < 0 && ballB > 0){
                fill(147,112,219);
              }
//ball              
 ellipse(ballx, bally, 50,50);
        ballx +=  ballA; //increasing x value
        bally +=  ballB; //increasing y value
 //ball hits right side
             if(ballx > width){
     ballA *= -1;     
 }
 //ball hits left
             if(ballx < 0){
     ballA *= -1;
 }
 //ball hits bottom
              if (bally > height){
   ballB *= -1;
 }
 //ball hits top
              if (bally < 0){
   ballB *= -1;
 }
}
