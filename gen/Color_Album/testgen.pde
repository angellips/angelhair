//set image resolution

size(1400,1400);


//set pastel background; would be used if opacity applied to rect-set

background(random(0, 255), random(174, 255), random(167, 255));


//remove borders on rect-set

noStroke();


// randomized variables - delete after replacing w/ arrays in the generation

float faPastel = random(246, 255);
float foPastel = random(161, 255);
float wRect = random(700, 950);
float hRect = random(350, 1100);
float xRect = random(0, 350);
float yRect = random(0, 350);

// array fucking around

float[] rPastel = {random(246, 255), random(161, 255)};
float[] xyRect = {random(0, 1400), random(0, 1400)};
float[] whRect = {random(0, 1100), random(0, 925)};
float[] rOpac = {random(1, 235), random(75, 100)};


//generate rect-set

//for (int i = 0; i < random(2, 255); i++) {

blendMode(BLEND);  

fill(rPastel[0], foPastel, foPastel, rOpac[1]);
rect(whRect[1], 0, 700, whRect[0]);

fill(foPastel, faPastel, foPastel, rOpac[1]);
rect(700, whRect[0], whRect[1], 700);

fill(foPastel, foPastel, faPastel, rOpac[1]);
rect(whRect[1], 700, 700, whRect[0]);

fill(faPastel, foPastel, foPastel, rOpac[1]);
rect(700, whRect[1], whRect[1], 700);

for (int a = 0; a < random(2, 420); a++) {

fill(faPastel, foPastel, foPastel, rOpac[0]);
rect(whRect[0], whRect[1], whRect[0], whRect[1]);

}

for (int b = 0; b < random(1, 255); b++) {

fill(foPastel, faPastel, foPastel, rOpac[0]);
rect(whRect[1], whRect[0], whRect[1], whRect[0]);

}

for (int c = 0; c < random(1, 534); c++) {

fill(foPastel, foPastel, faPastel, rOpac[0]);
rect(whRect[1], whRect[1], random(0, 300), random(0, 478));

}

for (int d = 0; d < random(10, 15); d++) {

fill(faPastel, foPastel, foPastel, rOpac[0]);
rect(random(225, 1400), random(225, 1400), random(0, 300), random(0, 478));

}

saveFrame("image-#####.jpg");

//}

//export image

// saveFrame("image-#####.jpg");
