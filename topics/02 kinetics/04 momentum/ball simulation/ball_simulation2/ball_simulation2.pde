int m = 30; // mass
int n = 10; // number of balls
int v = 5; // maximum velocity

//---------------------------------

Ball[] balls = new Ball[n];




void setup() {
  size(640, 360);

  int f = 1;

  while (f == 1) {
    f = 0;

    for (int i = 0; i < balls.length; i++) {
      balls[i] = new Ball(m);
    }

    for (int i = 0; i < balls.length; i++) {
      for (int j = 0; j <balls.length; j++) {
        if (i != j) {

          PVector bVect = PVector.sub(balls[i].position, balls[j].position);

          float bVectMag = bVect.mag();

          if (bVectMag < (balls[i].r + balls[j].r + 5)) {
            f = 1;
          }
        }
      }
    }
  }
}

void draw() {
  background(51);

  for (Ball b : balls) {
    b.update();
    b.display();
    b.checkBoundaryCollision();
  }

  for (int i = 0; i < balls.length; i++) {
    for (int j = 0; j <balls.length; j++) {
      if (i != j) {
        balls[i].checkCollision(balls[j], i, j);
      }
    }
  }
}

