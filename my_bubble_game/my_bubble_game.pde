ArrayList<Bubble> bubs = new ArrayList<Bubble>();
Popper p;

void setup() {
  colorMode(HSB,360,100,100,100);
  size(400, 650);
  p = new Popper();
  bubs.add(new Bubble());
}

void draw() {
  background(140,70,100);
  if (frameCount%5 == 0) {
    bubs.add(new Bubble());
  }
  p.move();
  p.catchBubble(bubs);
  p.display();
  for (int i = bubs.size()-1; i >=0; i--) {
    Bubble b = bubs.get(i);
    b.move();
    b.display();
  }
}

