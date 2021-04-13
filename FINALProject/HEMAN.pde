float x1 = random(0, 500);
float y1 = random(0, 500);
float size1 = random(1, 5);

float x2 = random(0, 500);
float y2 = random(0, 500);
float size2 = random(1, 5);

float x3 = random(0, 500);
float y3 = random(0, 500);
float size3 = random(1, 5);

float x4 = random(0, 500);
float y4 = random(0, 500);
float size4 = random(1, 5);

float x5 = random(0, 500);
float y5 = random(0, 500);
float size5 = random(1, 5);

float x6 = random(0, 500);
float y6 = random(0, 500);
float size6 = random(1, 5);

float x7 = random(0, 500);
float y7 = random(0, 500);
float size7 = random(1, 5);

float x8 = random(0, 500);
float y8 = random(0, 500);
float size8 = random(1, 5);

float x9 = random(0, 500);
float y9 = random(0, 500);
float size9 = random(1, 5);

float x10 = random(0, 500);
float y10 = random(0, 500);
float size10 = random(1, 5);

float x11 = random(0, 500);
float y11 = random(0, 500);
float size11 = random(1, 5);

float x12 = random(0, 500);
float y12 = random(0, 500);
float size12 = random(1, 5);

float x13 = random(0, 500);
float y13 = random(0, 500);
float size13 = random(1, 5);

float x14 = random(0, 500);
float y14 = random(0, 500);
float size14 = random(1, 5);

float x15 = random(0, 500);
float y15 = random(0, 500);
float size15 = random(1, 5);

float x16 = random(0, 500);
float y16 = random(0, 500);
float size16 = random(1, 5);

float x17 = random(0, 500);
float y17 = random(0, 500);
float size17 = random(1, 5);

float x18 = random(10, 500);
float y18 = random(0, 500);
float size18 = random(1, 5);

float x19 = random(0, 500);
float y19 = random(0, 500);
float size19 = random(1, 5);

float x20 = random(0, 500);
float y20 = random(0, 500);
float size20 = random(1, 5);

float x21 = random(0, 500);
float y21 = random(0, 500);
float size21 = random(1, 5);

float x22 = random(0, 500);
float y22 = random(0, 500);
float size22 = random(1, 5);

float x23 = random(0, 500);
float y23 = random(0, 500);
float size23 = random(1, 5);

float x24 = random(0, 500);
float y24 = random(0, 500);
float size24 = random(1, 5);

float x25 = random(0, 500);
float y25 = random(0, 500);
float size25 = random(1, 5);

void hemanTime() {
  background(123, 22, 53);
  imageMode(CENTER);
  fourStar(x1, y1, size1);
  fourStar(x2, y2, size2);
  fourStar(x3, y3, size3);
  fourStar(x4, y4, size4);
  fourStar(x5, y5, size5);
  fourStar(x6, y6, size6);
  fourStar(x7, y7, size7);
  fourStar(x8, y8, size8);
  fourStar(x9, y9, size9);
  fourStar(x10, y10, size10);
  fourStar(x11, y11, size11);
  fourStar(x12, y12, size12);
  fourStar(x13, y13, size13);
  fourStar(x14, y14, size14);
  fourStar(x15, y15, size15);
  fourStar(x16, y16, size16);
  fourStar(x17, y17, size17);
  fourStar(x18, y18, size18);
  fourStar(x19, y19, size19);
  fourStar(x20, y20, size20);
  fourStar(x21, y21, size21);
  fourStar(x22, y22, size22);
  fourStar(x23, y23, size23);
  fourStar(x24, y24, size24);
  fourStar(x25, y25, size25);


};

void fourStar(float centerX, float centerY, float size) {
  fill(255);
  stroke(0);
  strokeWeight(1);
  beginShape();
  vertex(centerX - 5*size, centerY);
  vertex(centerX - 1.5*size, centerY - 1.5*size);
  vertex(centerX, centerY - 7.5*size);
  vertex(centerX + 1.5*size, centerY - 1.5* size);
  vertex(centerX + 5*size, centerY);
  vertex(centerX + 1.5*size, centerY + 1.5*size);
  vertex(centerX, centerY + 7.5*size);
  vertex(centerX - 1.5*size, centerY + 1.5* size);
  endShape(CLOSE);
}
