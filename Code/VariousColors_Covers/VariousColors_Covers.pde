size(3000, 3000);
background(255);
float a = random(999999999);  // random number for filename

for (int lineLoop = 0; lineLoop < 8; lineLoop++) {

  noStroke();
  fill(0);
  rect(random(0, 3000), random(0, 3000), random(0, 3000), random(2, 3)); //skinny horizontal
  rect(random(0, 3000), random(0, 3000), random(2, 3), random(0, 1700)); //skinny vertical
}

for (int rectVLoop = 0; rectVLoop < 3; rectVLoop++) {

  noFill();
  stroke(0);
  rect(random(0, 3000), random(0, 3000), random(2, 300), random(0, 1200)); //big vertical rect w/ no fill
}

for (int rectHLoop = 0; rectHLoop < 3; rectHLoop++) {

  noFill();
  stroke(0);
  rect(random(0, 3000), random(0, 3000), random(0, 1200), random(2, 300)); //big horizontal rect w/ no fill
}

  noStroke();
  
  fill(random(0, 255), random(0, 255), random(0, 255));
  circle(2977, 2977, 23);
  
  fill(random(0, 255), random(0, 255), random(0, 255));
  circle(2954, 2954, 23);


String filename = str(a)+".jpg";
saveFrame(filename);
