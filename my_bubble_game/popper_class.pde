class Popper {
  PVector loc;
  float d;

  Popper() {
    loc = new PVector(width/2, height-50);
    d = 15;
  }

  void display() {
    fill(0);
    stroke(0, 0, 100);
    ellipse(loc.x, loc.y, d, d);
  }

  void move() {
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          loc.x-=2;
        } 
        if (keyCode == RIGHT) {
          loc.x+=2;
        }
      }
    }
  }

  void catchBubble(ArrayList<Bubble> bubbles) {
    for (int i = bubbles.size()-1; i >= 0; i--) {
      Bubble b = bubbles.get(i);
      if (loc.dist(b.loc) < d/2 + b.d/2) {
        float diff = d-b.d;
        float change;
        if (diff>=0) {
          change = map(diff, 0, d-bubbleMaxSize, .25, 0);
        }
        else {
          change =0;
        }
        //        else {
        //          change = -d*.1;
        //        }
        d+=change;
        bubbles.remove(i);
        bubbleMaxSize = d*1.5;
      }
    }
  }
}

