//variables
int thickness = 5;
int semitrans = 127;


size(500,500);
background(0);

smooth();

//vertical lines
for (int i = 0; i < width; i+=10){
  //contents of loop
  stroke(255,0,0,semitrans);
  strokeWeight(thickness);
  line(i, 0, i, height);
}

//horizontal lines
for (int i = 0; i < width; i+=10){
  //contents of loop
  stroke(0,0,255,semitrans);
  strokeWeight(thickness);
  line(0, i, width, i);
}


/*for (int i = 0; i < width; i+=10){
  //contents of loop
  stroke(255,0,0,semitrans);
  strokeWeight(thickness);
  line(0, i, i, height);
}*/



