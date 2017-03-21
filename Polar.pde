class CoordPlane {
  float spacing;
  float cols;
  
  CoordPlane(float cols_) {
    cols = cols_;
    spacing = width / cols;
  }
  
  void show() {
    for (int i = 1; i < cols; i++) {
      if (i == cols / 2) {
        stroke(255, 255, 0);
        strokeWeight(3);
        line(i*spacing, 0, i*spacing-(spacing/2), spacing);
        line(i*spacing, 0, i*spacing+(spacing/2), spacing);
        line(i*spacing, height, i*spacing-(spacing/2), height-spacing);
        line(i*spacing, height, i*spacing+(spacing/2), height-spacing);
      } else {
        stroke(127);
        strokeWeight(1);
      }
      line(i*spacing, 0, i*spacing, height);
    }
    for (int i = 1; i < cols; i++) {
      if (i == cols / 2) {
        stroke(255, 255, 0);
        strokeWeight(3);
        line(0, i*spacing, spacing, i*spacing-(spacing/2));
        line(0, i*spacing, spacing, i*spacing+(spacing/2));
        line(width, i*spacing, width-spacing, i*spacing-(spacing/2));
        line(width, i*spacing, width-spacing, i*spacing+(spacing/2));
      } else {
        stroke(127);
        strokeWeight(1);
      }
      line(0, i*spacing, width, i*spacing);
    }
  }
}

CoordPlane cp;

float r;
float a;

void setup() {
  size(600, 600, P2D);
  background(51);
  cp = new CoordPlane(28);
  r = 212.13203;
  a = -QUARTER_PI;
}

void draw() {
  cp.show();
  stroke(255);
  strokeWeight(3);
  translate(width/2, height/2);
  float x = r * cos(a);
  float y = r * sin(a);
  a -= 0.01;
  r -= 0.05;
  r = constrain(r, 0, 212.13203);
  point(x, y);
}