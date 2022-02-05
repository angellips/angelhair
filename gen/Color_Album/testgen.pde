//set image resolution

size(1400,1400);

//remove borders on rect

noStroke();

//generate rects

fill(random(246, 255), random(161, 255), random(161, 255));
rect(0, 0, 700, 700);

fill(random(161, 255), random(246, 255), random(161, 255));
rect(700, 0, 700, 700);

fill(random(161, 255), random(161, 255), random(246, 255));
rect(0, 700, 700, 700);

fill(random(246, 255), random(161, 255), random(161, 255));
rect(700, 700, 700, 700);

//export image

saveFrame("image-#####.jpg");
