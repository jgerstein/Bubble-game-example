class Bubble {
  PVector loc, vel, acc;
  int d;
  float hue;

  Bubble() {
    d = int (random(bubbleMinSize,bubbleMaxSize));
    loc = new PVector(random(width),-d);
    vel = new PVector(0, 3);
    acc = new PVector(0, random(.0001,.0009));
    hue = random(360);
  }

  void display() {
    strokeWeight(3);
    stroke(hue,20,100);
    fill(hue,70,100,50);
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    vel.add(acc);
    loc.add(vel);
  }
}

