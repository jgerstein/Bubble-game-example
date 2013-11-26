class Bubble {
  PVector loc, vel, acc;
  int d;
  float hue;
  int side;

  Bubble() {
    side = int(random(4));
    d = int (random(bubbleMinSize, bubbleMaxSize));
    if (side == 0) {
      //start on top
      loc = new PVector(random(width), -d);
      vel = new PVector(0, random(1, 4));
    }
    if (side == 1) {
      loc = new PVector(width+d, random(height));
      vel = new PVector(random(-4, -1), 0);
    }
    if (side == 2) {
      loc = new PVector(random(width), height+d);
      vel = new PVector(0, random(-4, -1));
    }
    if (side == 3) {
      loc = new PVector(-d, random(height));
      vel = new PVector(random(1, 4), 0);
    }
    acc = new PVector();
    hue = random(360);
  }

  void display() {
    strokeWeight(3);
    stroke(hue, 20, 100);
    fill(hue, 70, 100, 50);
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

