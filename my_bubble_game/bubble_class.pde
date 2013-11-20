class Bubble {
  PVector loc, vel, acc;
  int d;
  float hue;

  Bubble() {
    d = int (random(3,20));
    loc = new PVector(random(d, width-d), -d);
    vel = new PVector(0, 1);
    acc = new PVector(0, random(.0001,.0009));
    hue = random(360);
  }

  void display() {
    strokeWeight(3);
    stroke(hue,20,100);
    fill(hue,70,100);
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

