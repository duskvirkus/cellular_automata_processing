
int WIDTH = 500;
int HEIGHT = 500;

PImage state;
PImage next;
int scale = 10;

void settings() {
  size(WIDTH, HEIGHT);
}

void setup() {
  initState();
  initNext();
}

void update() {
  
}

void draw() {
  update();
  image(state, 0, 0, width, height);
}

void initState() {
  state = createImage(width / scale, height / scale, RGB);
  state.loadPixels();
  for (int x = 0; x < state.width; x++) {
    for (int y = 0; y < state.height; y++) {
      int index = x + y * state.width;
      state.pixels[index] = random(255) <= 127 ? color(0) : color(255);
    }
  }
  state.updatePixels();
}

void initNext() {
  next = createImage(state.width, state.height, RGB);
}
