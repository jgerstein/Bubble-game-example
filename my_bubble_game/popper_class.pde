class Popper {
  PVector loc;
  float d;
  int moveSpeed;
  PVector move;

  Popper() {
    loc = new PVector(width/2, height/2);
    d = 15;
    moveSpeed = 3;
    move = new PVector();
  }

  void display() {
    fill(0);
    stroke(0, 0, 100);
    ellipse(loc.x, loc.y, d, d);
  }
  /*  This version causes continuous motion
   void move() {
   loc.add(move);
   loc.x = constrain(loc.x, 0, width);
   loc.y = constrain(loc.y, 0, height);
   if (keyPressed) {
   if (key == ' ') {
   move.set(0, 0);
   }
   if (key == CODED) {
   if (keyCode == LEFT) {
   move.set(-moveSpeed, 0);
   }
   if (keyCode == UP) {
   move.set(0, -moveSpeed);
   } 
   if (keyCode == RIGHT) {
   move.set(moveSpeed, 0);
   }
   if (keyCode == DOWN) {
   move.set(0, moveSpeed);
   }
   }
   }
   }
   */

  //This version moves if key is pressed
  void move() {
    loc.x = constrain(loc.x, 0, width);
    loc.y = constrain(loc.y, 0, height);
    if (keyPressed) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          loc.x -= moveSpeed;
        }
        if (keyCode == UP) {
          loc.y -= moveSpeed;
        } 
        if (keyCode == RIGHT) {
          loc.x += moveSpeed;
        }
        if (keyCode == DOWN) {
          loc.y += moveSpeed;
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
          change = map(diff, 0, d, 3, 0);  //change is largest when the difference between
          //change = 1;
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

