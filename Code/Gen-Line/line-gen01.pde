size(1400, 1400);
noStroke();

for (int gLoop = 0; gLoop < 5; gLoop++) {

FloatList rPastel;

// create pastel array and shuffle to randomize 246+ RGB value

rPastel = new FloatList();
rPastel.append(random(94, 245));
rPastel.append(random(182, 245));
rPastel.append(random(246, 255));
rPastel.shuffle();

float a = rPastel.get(0);
float b = rPastel.get(1);
float c = rPastel.get(2);


background(a, b, c);

//randomize blend mode via int values

int[] bMode = {512, 1, 16, 8, 32, 64, 128, 256, 0, 1024, 2048};
int index = int(random(bMode.length));
println(bMode[index]);

// 518 and 2048 and 32 and 8 and 256 blend looks good w/ current palette 

blendMode(bMode[index]);


for (int f = 0; f < random(7, 2211300); f++) {

  
  
  fill(random(255), random(255), random(255), random(64, 172));
  rect(random(0, 1400), random(0, 1400), random(0.001, 0.3), random(0, 250));
  
  fill(random(255), random(255), random(255), random(64, 172));
  rect(random(0, 1400), random(0, 1400), random(0.001, 0.3), random(0, 250));

  fill(0, 0, 0, random(64, 410));
  rect(random(0, 1400), random(0, 1400), random(0, 250), random(0.001, 0.3));

  fill(255, 255, 255, random(64, 172));
  rect(random(0, 1400), random(0, 1400), random(0, 250), random(0.001, 0.3));
  
  
}

String filename = str(a)+"-"+(b)+"-"+(c)+"_"+bMode[index]+".jpg";
  saveFrame(filename);

}

/* working below
 
 
 for (int f = 0; f < random(60, 83300); f++) {
 
 fill(random(255), random(255), random(255), random(64, 172));
 rect(random(0, 1400), random(0, 1400), random(0.001, 0.3), random(0, 250));
 }
 
 for (int g = 0; g < random(52, 90000); g++) {
 
 fill(0, 0, 0, random(64, 410));
 rect(random(0, 1400), random(0, 1400), random(0, 250), random(0.001, 0.3));
 }
 
 for (int h = 0; h < random(60, 83300); h++) {
 
 fill(random(255), random(255), random(255), random(64, 172));
 rect(random(0, 1400), random(0, 1400), random(0, 250), random(0.001, 0.3));
 }
 
 for (int i = 0; i < random(52, 90000); i++) {
 
 fill(0, 0, 0, random(64, 410));
 rect(random(0, 1400), random(0, 1400), random(0.001, 0.3), random(0, 250));
 }
 
 for (int j = 0; j < random(60, 7800); j++) {
 
 fill(255, 255, 255, random(64, 172));
 rect(random(0, 1400), random(0, 1400), random(0, 250), random(0.001, 0.3));
 }
 
 for (int k = 0; k < random(52, 6000); k++) {
 
 fill(255, 255, 255, random(64, 410));
 rect(random(0, 1400), random(0, 1400), random(0.001, 0.3), random(0, 250));
 }
 
 for (int f = 0; f < random(60, 8330); f++) {
 
 fill(random(255), random(255), random(255), random(64, 172));
 rect(random(0, 1400), random(0, 1400), random(0.001, 0.3), random(0, 250));
 }
 
 for (int g = 0; g < random(52, 9000); g++) {
 
 fill(0, 0, 0, random(64, 410));
 rect(random(0, 1400), random(0, 1400), random(0, 250), random(0.001, 0.3));
 }
 
 for (int h = 0; h < random(60, 8330); h++) {
 
 fill(random(255), random(255), random(255), random(64, 172));
 rect(random(0, 1400), random(0, 1400), random(0, 250), random(0.001, 0.3));
 }
 
 for (int i = 0; i < random(52, 9000); i++) {
 
 fill(0, 0, 0, random(64, 410));
 rect(random(0, 1400), random(0, 1400), random(0.001, 0.3), random(0, 250));
 }
 
 for (int j = 0; j < random(60, 7800); j++) {
 
 fill(255, 255, 255, random(64, 172));
 rect(random(0, 1400), random(0, 1400), random(0, 250), random(0.001, 0.3));
 }
 
 for (int k = 0; k < random(52, 6000); k++) {
 
 fill(255, 255, 255, random(64, 410));
 rect(random(0, 1400), random(0, 1400), random(0.001, 0.3), random(0, 250));
 }
 
 */
