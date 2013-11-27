ArrayList<Bubble> bubs = new ArrayList<Bubble>();
Popper p;
float bubbleMinSize;
float bubbleMaxSize;

void setup() {
  colorMode(HSB,360,100,100,100);
  size(700, 700);
  p = new Popper();
  bubbleMinSize = p.d*.3;
  bubbleMaxSize = p.d*1.5;
  bubs.add(new Bubble());
}

void draw() {
  background(140,0,50);
  if (frameCount%3 == 0) {
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

