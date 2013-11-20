ArrayList<Bubble> bubs = new ArrayList<Bubble>();
Popper p;

void setup() {
  size(400, 650);
  p = new Popper();
}

void draw() {
  background(200, 200, 255);
  bubs.add(new Bubble());
  p.move();
  p.catchBubble(bubs);
  p.display();
  for (int i = bubs.size()-1; i >=0; i--) {
    Bubble b = bubs.get(i);
    b.move();
    b.display();
  }
}

