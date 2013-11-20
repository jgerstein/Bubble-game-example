class Popper {
  PVector loc;
  float d;

  Popper() {
    loc = new PVector(width/2, height-50);
    d = 10;
  }

  void display() {
    fill(0);
    stroke(0,0,100);
    ellipse(loc.x, loc.y, d, d);
  }

  void move() {
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          loc.x--;
        } 
        if (keyCode == RIGHT) {
          loc.x++;
        }
      }
    }
  }

  void catchBubble(ArrayList<Bubble> bubbles) {
    for (int i = bubbles.size()-1; i >= 0; i--) {
      Bubble b = bubbles.get(i);
      if (loc.dist(b.loc) < d/2 + b.d/2) {
        d++;
        bubbles.remove(i);
      }
    }
  }
}

