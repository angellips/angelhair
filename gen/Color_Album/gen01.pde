FloatList rPastel;

void setup() {

  // set image size and remove borders on rect-gen

  size(1400, 1400);
  noStroke();

  // create pastel array and shuffle to randomize 246+ RGB value

  rPastel = new FloatList();
  rPastel.append(random(161, 245));
  rPastel.append(random(161, 245));
  rPastel.append(random(246, 255));
  rPastel.shuffle();

  //console check of shuffle; can be commented out

  println(rPastel);
  noLoop();
}

void draw() {

  //get variables from shuffled rPastel

  float a = rPastel.get(0);
  float b = rPastel.get(1);
  float c = rPastel.get(2);

  //background-gen

  background(a, b, c);

  //set blend mode

  blendMode(LIGHTEST);

  //randomize opacity and width/height into arrays 

  float[] rOpac = {random(1, 235), random(75, 100)};
  float[] whRect = {random(0, 1100), random(0, 925)};
  
  //generate four rects

  fill(a, c, b, rOpac[1]);
  rect(whRect[1], 0, 700, whRect[0]);

  fill(b, a, c, rOpac[1]);
  rect(700, whRect[0], whRect[1], 700);

  fill(c, a, b, rOpac[1]);
  rect(whRect[1], 700, 700, whRect[0]);

  fill(b, c, a, rOpac[1]);
  rect(700, whRect[1], whRect[1], 700);
  
  //chaotically generate a randomized number of rects; need to write variables for rect() so it looks prettier

  for (int d = 0; d < random(2, 420); d++) {

    fill(a, c, b, rOpac[0]);
    rect(random(225, 1400), random(225, 1400), random(0, 300), random(0, 478));
  }

  for (int e = 0; e < random(1, 255); e++) {

    fill(b, a, c, rOpac[0]);
    rect(random(225, 1400), random(225, 1400), random(0, 300), random(0, 478));
  }

  for (int f = 0; f < random(1, 534); f++) {

    fill(c, a, b, rOpac[0]);
    rect(random(225, 1400), random(225, 1400), random(0, 300), random(0, 478));
  }

  for (int g = 0; g < random(10, 15); g++) {

    fill(b, c, a, rOpac[0]);
    rect(random(225, 1400), random(225, 1400), random(0, 300), random(0, 478));
  }

  saveFrame("image-#####.jpg");
}
