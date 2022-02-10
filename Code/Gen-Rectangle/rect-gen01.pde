// AL: rect-gen0.1
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
    rRect.append(random(18, 700));
    rRect.append(random(0, 110));
    rRect.append(random(0, 80));
    rRect.append(random(78, 97));
    rRect.shuffle();
    println(rRect);
  }

  FloatList cRect;
  {

    cRect = new FloatList();
    cRect.append(random(0, 317));
    cRect.append(random(0, 224));
    cRect.append(random(0, 337));
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

  //chaotically generate a randomized number of rects

  for (int d = 0; d < random(113, 420); d++) {

    fill(a, c, b, rOpac[1]);
    rect(random(0, 1400), random(0, 1400), w, u);
  }

  for (int e = 0; e < random(115, 400); e++) {

    fill(b, a, c, rOpac[1]);
    rect(random(0, 1400), random(0, 1400), v, w);
  }

  for (int f = 0; f < random(42, 83); f++) {

    fill(c, a, b, rOpac[1]);
    rect(random(0, 1400), random(0, 1400), u, v);
  }

  for (int g = 0; g < random(52, 90); g++) {

    fill(b, c, a, rOpac[1]);
    rect(random(0, 1400), random(0, 1400), w, v);
  }

  //generate four rects

  fill(a, c, b, rOpac[0]);
  rect(l, m, n, o);

  fill(b, a, c, rOpac[0]);
  rect(m, o, l, n);

  fill(c, a, b, rOpac[0]);
  rect(n, l, o, m);

  fill(b, c, a, rOpac[0]);
  rect(o, n, m, l);




  //combine rPastel and bMode values to create filename

  String filename = str(a)+"-"+(b)+"-"+(c)+"_"+bMode[index]+".jpg";
  saveFrame(filename);
}
