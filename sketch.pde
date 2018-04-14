int x = 0;
int y = 0;
int t = 0;
void setup() {
  size(800, 800);
  background(190, 240, 140);
  textSize(width/16);
  fill(random(200), random(200), random(200));
  text("Welcome To The Game", 1.5*width/10, height/4);
  strokeWeight(1);
  fill(190, 240, 140);
  rect(125, 700, 150, 50);
  rect(325, 700, 150, 50);
  rect(525, 700, 150, 50);
  noFill();
  stroke(0, 0, 0);
  rect(700, 750, 90, 40);
  fill(0, 0, 0);
  textSize(((width+height)/2)/32);
  text("Start", 175, 732 );
  text("Options", 350, 732 );
  text("Quit", 575, 732);
  text("Reset", 710, 775);
}

void draw() {
  if (mousePressed == true) {
    if (mouseY > 700 && mouseY < 750) {
      if (mouseX > 125 && mouseX < 275) {
        fill(100, 100, 100);
        stroke(0, 0, 0);
        strokeWeight(1);
        rect(125, 500, 150, 200);
      } else if (mouseX > 325 && mouseX < 475) {
        fill(100, 100, 100);
        strokeWeight(1);
        stroke(0, 0, 0);
        rect(325, 500, 150, 200);
      } else if (mouseX > 525 && mouseX < 675) {
        fill(100, 100, 100);
        stroke(0, 0, 0);
        strokeWeight(1);
        rect(525, 500, 150, 200);
      }
    } else {
      fill(100, 100, 100);
      rect(width/4, (height/5)*2, width/2, (height/5)*2);
      strokeWeight(1);
      stroke(0, 0, 0);
      fill(0, 0, 0);
      text("Incorrect, try again.", 280, 400);
      fill(200, 200, 200);
      rect(270, 600, 100, 30);
      rect(450, 600, 100, 30);
      fill(50, 50, 50);
      text("Okay", 290, 623);
      text("Okay", 470, 623);
      if (mouseY>600 && mouseY<630) {
        if (mouseX>270 && mouseX<370) {
          fill(190, 240, 140);
          stroke(190, 240, 140);
          rect(width/4, (height/5)*2, width/2, (height/5)*2);
        } else if (mouseX>450 && mouseX<550) {
          fill(190, 240, 140);
          stroke(190, 240, 140);
          rect(width/4, (height/5)*2, width/2, (height/5)*2);
        }
      }
    }
  } else {
    if (mouseY > 700 && mouseY < 750) {
      if (mouseX > 125 && mouseX < 275) {
        fill(205, 255, 155);
        rect(125, 700, 150, 50);
        fill(0, 0, 0);
        textSize(((width+height)/2)/32);
        text("Start", 175, 732 );
      } else if (mouseX > 325 && mouseX < 475) {
        fill(205, 255, 155);
        rect(325, 700, 150, 50);
        fill(0, 0, 0);
        textSize(((width+height)/2)/32);
        text("Options", 350, 732 );
      } else if (mouseX > 525 && mouseX < 675) {
        fill(205, 255, 155);
        rect(525, 700, 150, 50);
        fill(0, 0, 0);
        textSize(((width+height)/2)/32);
        text("Quit", 575, 732);
      }
    } else if (mouseX>700 && mouseX<790) {
      if (mouseY>750 && mouseY<790) {
        fill(205, 255, 155);
        rect(700, 750, 90, 40);
        fill(0, 0, 0);
        textSize(((width+height)/2)/32);
        text("Reset", 710, 775);
      }
    } else {
      stroke(0, 0, 0);
      fill(190, 240, 140);
      rect(125, 700, 150, 50);
      rect(325, 700, 150, 50);
      rect(525, 700, 150, 50);
      rect(700, 750, 90, 40);
      fill(0, 0, 0);
      textSize(((width+height)/2)/32);
      text("Start", 175, 732 );
      text("Options", 350, 732 );
      text("Quit", 575, 732);
      text("Reset", 710, 775);
    }
    //something weird happened here
    //check later bc need to use the sleep
    //vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
    //  } else {
    //  stroke(0, 0, 0);
    //  fill(190, 240, 140);
    //  rect(125, 700, 150, 50);
    //  rect(325, 700, 150, 50);
    //  rect(525, 700, 150, 50);
    //  fill(0, 0, 0);
    //  textSize(((width+height)/2)/32);
    //  text("Start", 175, 732 );
    //  text("Options", 350, 732 );
    //  text("Quit", 575, 732);
    //}
    //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    if (mouseY>750 && mouseY<790) {
      fill(190, 240, 140);
      rect(700, 750, 90, 40);
      fill(0, 0, 0);
      text("Reset", 710, 775);
    }


    if (mouseX>700 && mouseX<790) {
      if (mouseY>750 && mouseY<790) {
        if (mousePressed) {
          fill(190, 240, 140);
          rect(0, 0, width, height);
          textSize(width/16);
          fill(random(200), random(200), random(200));
          text("Welcome To The Game", 1.5*width/10, height/4);
          strokeWeight(1);
          fill(190, 240, 140);
          rect(125, 700, 150, 50);
          rect(325, 700, 150, 50);
          rect(525, 700, 150, 50);
          fill(0, 0, 0);
          textSize(((width+height)/2)/32);
          text("Start", 175, 732 );
          text("Options", 350, 732 );
          text("Quit", 575, 732);
        }
      }
    }
  }
  }
