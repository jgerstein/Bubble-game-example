class Bubble {
  PVector loc, vel, acc;
  int d;

  Bubble() {
    d = 5;
    loc = new PVector(random(d, width-d), -d);
    vel = new PVector(0, 1);
    acc = new PVector(0, .0001);
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

