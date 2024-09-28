int startX = mouseX;
int startY = mouseY;
int endX = mouseX;
int endY = mouseY;
int r =  (int)(Math.random() * 256);
int g =  (int)(Math.random() * 256);
int b =  (int)(Math.random() * 256);
int a = 255;
int random = (int)(Math.random() * 4);
boolean start = false;


void setup() {
  size(500, 500);
  strokeWeight(4);
  background(0, 0, 0);
}

void mousePressed() {
  background(0, 0, 0);
  ellipse(mouseX, mouseY, 20, 20);
  startX = mouseX;
  startY = mouseY;
  endX = mouseX;
  endY = mouseY;
  r =  (int)(Math.random() * 240 + 20);
  g =  (int)(Math.random() * 240 + 20);
  b =  (int)(Math.random() * 240 + 20);
  a = 180;
  random = (int)(Math.random() * 4);
  start = true;
}

void draw() {
  if (start) {
    stroke(r, g, b,a);
    fill(r, g, b);
    //lightning goes right
    if (random == 0) {
      if (endX < 500) {
        endX = startX + ((int) (Math.random() * 20));
        endY = startY + ((int) (Math.random() * 80 - 40));
        line(startX, startY, endX, endY);
        a--;
        startX = endX;
        startY = endY;
      }
    }
    //lightning goes left
    else if (random == 1) {
      if (endX > 0) {
        endX = startX - ((int) (Math.random() * 20));
        endY = startY + ((int) (Math.random() * 80 - 40));
        line(startX, startY, endX, endY);
        a--;
        startX = endX;
        startY = endY;
      }
    }
    //lightning goes down
    else if (random == 2){
      if (endY > 0) {
        endX = startX + ((int) (Math.random() * 80 - 40));
        endY = startY + ((int) (Math.random() * 20));
        line(startX, startY, endX, endY);
        a--;
        startX = endX;
        startY = endY;
      }
    }
    //lightning goes up
    else if (random == 3){
      if (endY < 500) {
        endX = startX + ((int) (Math.random() * 80 - 40));
        endY = startY - ((int) (Math.random() * 20));
        line(startX, startY, endX, endY);
        a--;
        startX = endX;
        startY = endY;
      }
    }
  }
}
