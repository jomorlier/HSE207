int m1 = 20; //<>//
int m2 = 20;
float v1 = 3;
float v2 = 0;

//---------------------------------

PVector x1;
PVector x2;

void setup() {
  size(900, 500);
  background(255);

  x1 = new PVector(200, height/2);
  x2 = new PVector(width-200, height/2);

  fill(100);
  ellipse(x1.x, x1.y, 2*m1, 2*m1);
  ellipse(x2.x, x2.y, 2*m2, 2*m2);
}

void draw() {
  background(255);

  x1.x += v1;
  x2.x += v2;

  fill(100);
  ellipse(x1.x, x1.y, 2*m1, 2*m1);
  ellipse(x2.x, x2.y, 2*m2, 2*m2);

  if  ((abs(x1.x-x2.x) <= m1+m2)) {

    float temp1 = ((m1-m2)*v1+2*m2*v2)/(m1 + m2);
    float temp2 = ((m2-m1)*v2+2*m1*v1)/(m2 + m1);
    v1 = temp1;
    v2 = temp2; //<>//
  }
}
