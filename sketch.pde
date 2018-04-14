int x = 0;
int y = 0;
int t = 0;
void setup() {
  size(800, 800);
  background(200, 250, 150);
  textSize(50);
  fill(random(255), random(255), random(255));
  text("Welcome To The Game", 125, 200);
  strokeWeight(1);
  fill(200, 250, 150);
  rect(125, 700, 150, 50);
  rect(325, 700, 150, 50);
  rect(525, 700, 150, 50);
  fill(0, 0, 0);
  textSize(25);
  text("Start", 175, 732 );
  text("Options", 350, 732 );
  text("Quit", 575, 732);
}

void draw() {
  if (mousePressed == true) {
    if (mouseY > 700 && mouseY < 750) {
      if (mouseX > 125 && mouseX < 275) {
        fill(100, 100, 100);
        stroke(0,0,0);
        strokeWeight(1);
        rect(125, 500, 150, 200);
      } else if (mouseX > 325 && mouseX < 475) {
        fill(100, 100, 100);
        strokeWeight(1);
        stroke(0,0,0);
        rect(350, 500, 150, 200);
      } else if (mouseX > 525 && mouseX < 675) {
        fill(100, 100, 100);
        stroke(0,0,0);
        strokeWeight(1);
        rect(575, 500, 150, 200);
      }
    } else {
      fill(100, 100, 100);
      rect(200, 250, 400, 400);
      strokeWeight(1);
      stroke(0,0,0);
      fill(0, 0, 0);
      text("Incorrect, try again.", 280, 400);
      fill(200,200,200);
      rect(270,600,100,30);
      rect(450,600,100,30);
      fill(50,50,50);
      text("Okay",290,623);
      text("Okay",470,623);
      if (mouseX>575 && mouseX<600) {
        if (mouseY>250 && mouseY<275) {
          fill(200, 250, 150);
          stroke(200, 250, 150);
          rect(200, 250, 400, 400);
        }
      }
    }
  }
}
