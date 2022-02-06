// AL: generative-pastel-0.2a
// randomizes blendMode, R-G-B_blendMode for filename, loops as many times as designated.


// set image size and remove borders on rect-gen

size(1400, 1400);
noStroke();

// generate multiple images; defaulted at five images

for (int gLoop = 0; gLoop < 5; gLoop++) {

  // generation code

  FloatList rPastel;

  // create pastel array and shuffle to randomize 246+ RGB value

  rPastel = new FloatList();
  rPastel.append(random(161, 245));
  rPastel.append(random(161, 245));
  rPastel.append(random(246, 255));
  rPastel.shuffle();

  //console check of shuffle; can be commented out

  println(rPastel);

  FloatList rRect;
  {

    rRect = new FloatList();
    rRect.append(random(618, 700));
    rRect.append(random(0, 1100));
    rRect.append(random(0, 925));
    rRect.append(random(0, 97));
    rRect.shuffle();
    println(rRect);
  }

  FloatList cRect;
  {

    cRect = new FloatList();
    cRect.append(random(225, 1400));
    cRect.append(random(0, 300));
    cRect.append(random(0, 478));
    cRect.shuffle();
    println(cRect);
  }

  //get variables from shuffled rPastel

  float a = rPastel.get(0);
  float b = rPastel.get(1);
  float c = rPastel.get(2);

  //get variables from shuffled rRect

  float l = rRect.get(0);
  float m = rRect.get(1);
  float n = rRect.get(2);
  float o = rRect.get(3);

  //get variables from shuffled cRect

  float u = cRect.get(0);
  float v = cRect.get(1);
  float w = cRect.get(2);

  //background-gen

  background(a, b, c);

  //randomize blend mode via int values

  int[] bMode = {512, 1, 16, 8, 32, 64, 128, 256, 0, 1024, 2048};
  int index = int(random(bMode.length));
  println(bMode[index]);

  blendMode(bMode[index]);

  //randomize opacity and width/height into arrays

  float[] rOpac = {random(1, 235), random(75, 100)};

  //generate four rects

  fill(a, c, b, rOpac[1]);
  rect(l, m, n, o);

  fill(b, a, c, rOpac[1]);
  rect(m, o, l, n);

  fill(c, a, b, rOpac[1]);
  rect(n, l, o, m);

  fill(b, c, a, rOpac[1]);
  rect(o, n, m, l);

  //chaotically generate a randomized number of rects

  for (int d = 0; d < random(30, 420); d++) {

    fill(a, c, b, rOpac[0]);
    rect(u, v, w, u);
  }

  for (int e = 0; e < random(55, 255); e++) {

    fill(b, a, c, rOpac[0]);
    rect(v, u, v, w);
  }

  for (int f = 0; f < random(1, 534); f++) {

    fill(c, a, b, rOpac[0]);
    rect(w, w, u, v);
  }

  for (int g = 0; g < random(90, 900); g++) {

    fill(b, c, a, rOpac[0]);
    rect(u, u, w, v);
  }

  //combine rPastel and bMode values to create filename

  String filename = str(a)+"-"+(b)+"-"+(c)+"_"+bMode[index]+".jpg";
  saveFrame(filename);
}
