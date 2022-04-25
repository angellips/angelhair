size(3000, 3000);
background(255);
float a = random(99);  // random number for filename

for (int lineLoop = 0; lineLoop < 7; lineLoop++) {

FloatList rPoint;

rPoint = new FloatList();

rPoint.append(random(4100));
rPoint.append(random(54100));
rPoint.append(random(4100));
rPoint.append(random(4100));
rPoint.append(random(4100));
rPoint.append(random(4100));
rPoint.append(random(4100));
rPoint.append(random(4100));
rPoint.shuffle();

float p0 = rPoint.get(0);
float p1 = rPoint.get(1);
float p2 = rPoint.get(2);
float p3 = rPoint.get(3);
float p4 = rPoint.get(4);
float p5 = rPoint.get(5);
float p6 = rPoint.get(5);
float p7 = rPoint.get(5);


// write shuffle into a method that can be called between each line draw.

line(p0, p1, p2,p3);
// rPoint.shuffle();
line(p4, p5, p6, p7);
// rPoint.shuffle();
line(p1, p0, p2, p5);
// rPoint.shuffle();
// println (p5);
line(p3, p4, p1, p0);

String filename = str(a)+".jpg";
saveFrame(filename);

}
