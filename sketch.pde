void setup() {
  size(800, 800);
  background(190, 240, 140);
  textSize(50);
  fill(random(190), random(190), random(190));
  textAlign(CENTER);
  text("Welcome To The Game", 400, 160);
  strokeWeight(1);
  stroke(0, 0, 0);
  fill(190, 240, 140);
  rect(125, 700, 150, 50);
  rect(325, 700, 150, 50);
  rect(525, 700, 150, 50);
  rect(700, 750, 90, 40);
  fill(0, 0, 0);
  textSize(25);
  text("Start", 200, 732 );
  text("Options", 400, 732 );
  text("Quit", 600, 732);
  text("Reset", 750, 775);
}

void draw() {
  //HOVER BUTTONS
  if (mouseY > 700 && mouseY < 750 &&  mouseX > 125 && mouseX < 275) { //HOVER START
    fill(205, 255, 155);
    rect(125, 700, 150, 50);
    fill(0, 0, 0);
    text("Start", 200, 732 );
  } else if (mouseY > 700 && mouseY < 750 && mouseX > 325 && mouseX < 475) { //HOVER OPTIONS
    fill(205, 255, 155);
    rect(325, 700, 150, 50);
    fill(0, 0, 0);
    text("Options", 400, 732 );
  } else if (mouseY > 700 && mouseY < 750 && mouseX > 525 && mouseX < 675) { //HOVER QUIT
    fill(205, 255, 155);
    rect(525, 700, 150, 50);
    fill(0, 0, 0);
    text("Quit", 600, 732);
  } else if (mouseX>700 && mouseX<790 && mouseY>750 && mouseY<790) { //HOVER RESET
    fill(205, 255, 155);
    rect(700, 750, 90, 40);
    fill(0, 0, 0);
    text("Reset", 750, 775);
  } else if (mouseY == 700 && mouseX > 125 && mouseX < 275 || mouseY == 750 && mouseX > 125 && mouseX < 275) {
    stroke(190, 240, 140);
    fill(190, 240, 140);
    rect(0, 161, 800, 800);
    stroke(0, 0, 0);char s = 0;
char e = 0;
void setup() {
  size(800, 800);
  background(190, 240, 140);
  textSize(50);
  fill(random(190), random(190), random(190));
  textAlign(CENTER);
  text("Welcome To The Game", 400, 160);
  strokeWeight(1);
  stroke(0, 0, 0);
  fill(190, 240, 140);
  rect(125, 700, 150, 50);
  rect(325, 700, 150, 50);
  rect(525, 700, 150, 50);
  rect(700, 750, 90, 40);
  fill(0, 0, 0);
  textSize(25);
  text("Start", 200, 732 );
  text("Options", 400, 732 );
  text("Quit", 600, 732);
  text("Reset", 750, 775);
}

void draw() {
  //HOVER BUTTONS
  if (mouseY > 700 && mouseY < 750 &&  mouseX > 125 && mouseX < 275) { //HOVER START
    fill(205, 255, 155);
    rect(125, 700, 150, 50);
    fill(0, 0, 0);
    text("Start", 200, 732 );
  } else if (mouseY > 700 && mouseY < 750 && mouseX > 325 && mouseX < 475) { //HOVER OPTIONS
    fill(205, 255, 155);
    rect(325, 700, 150, 50);
    fill(0, 0, 0);
    text("Options", 400, 732 );
  } else if (mouseY > 700 && mouseY < 750 && mouseX > 525 && mouseX < 675) { //HOVER QUIT
    fill(205, 255, 155);
    rect(525, 700, 150, 50);
    fill(0, 0, 0);
    text("Quit", 600, 732);
  } else if (mouseX>700 && mouseX<790 && mouseY>750 && mouseY<790) { //HOVER RESET
    fill(205, 255, 155);
    rect(700, 750, 90, 40);
    fill(0, 0, 0);
    text("Reset", 750, 775);
  } else if (mouseY == 700 && mouseX > 125 && mouseX < 275 || mouseY == 750 && mouseX > 125 && mouseX < 275) {
    stroke(190, 240, 140);
    fill(190, 240, 140);
    rect(0, 161, 800, 800);
    stroke(0, 0, 0);
    fill(190, 240, 140);
    rect(125, 700, 150, 50);
    rect(325, 700, 150, 50);
    rect(525, 700, 150, 50);
    rect(700, 750, 90, 40);
    fill(0, 0, 0);
    text("Start", 200, 732 );
    text("Options", 400, 732 );
    text("Quit", 600, 732);
    text("Reset", 750, 775);
  } else { //BUTTON DEFAULTS
    stroke(0, 0, 0);
    fill(190, 240, 140);
    rect(125, 700, 150, 50);
    rect(325, 700, 150, 50);
    rect(525, 700, 150, 50);
    rect(700, 750, 90, 40);
    fill(0, 0, 0);
    text("Start", 200, 732 );
    text("Options", 400, 732 );
    text("Quit", 600, 732);
    text("Reset", 750, 775);
  }
}

//void update(){
//}
void mouseClicked() {
  e = 0;
  s = 0;
  if (mouseButton == LEFT) {
    if (mouseY>750 && mouseY<790 && mouseX>700 && mouseX<790) { //RESET
      setup();
    } else if (mouseY > 700 && mouseY < 750 && mouseX > 125 && mouseX < 275) { //START
      setup();
      s = 1;
      fill(100, 100, 100);
      stroke(0, 0, 0);
      strokeWeight(1);
      rect(125, 500, 150, 100);
      rect(125, 600, 150, 100);
      fill(0, 0, 0);
      text("Math", 200, 550);
      text("Not math", 200, 650);
      if (s == 1) {
        if (mouseY>500 && mouseY<600 && mouseX>125 && mouseX<275) { //Math
          background(0, 0, 0);
        } else if (mouseY>600 && mouseY<700 && mouseX>125 && mouseX<275) { //Not math
          background(0, 0, 0);
        }
      }
    } else if (mouseY > 700 && mouseY < 750 && mouseX > 325 && mouseX < 475) { //OPTIONS
      setup();
      fill(100, 100, 100);
      strokeWeight(1);
      stroke(0, 0, 0);
      rect(325, 500, 150, 200);
    } else if (mouseY > 700 && mouseY < 750 && mouseX > 525 && mouseX < 675) { //QUIT
      exit();
    } else { //NOT BUTTON
      setup();
      noStroke();
      fill(170, 220, 120);
      rect(210, 330, 400, 320); //shadow
      stroke(1);
      fill(100, 100, 100);
      rect(200, 320, 400, 320); //window
      strokeWeight(1);
      stroke(0, 0, 0);
      fill(0, 0, 0);
      text("Incorrect, try again.", 400, 400);
      fill(200, 200, 200);
      rect(270, 600, 100, 30);
      rect(450, 600, 100, 30);
      fill(50, 50, 50);
      text("Okay", 290, 623);
      text("Okay", 470, 623);
      if (mouseY>600 && mouseY<630) { //OKAY
        if (mouseX>270 && mouseX<370 || mouseX>450 && mouseX<550) {
          fill(190, 240, 140);
          stroke(190, 240, 140);
          rect(200, 320, (400)+10, (320)+10);
        }
      }
    }
  }
}

    fill(190, 240, 140);
    rect(125, 700, 150, 50);
    rect(325, 700, 150, 50);
    rect(525, 700, 150, 50);
    rect(700, 750, 90, 40);
    fill(0, 0, 0);
    text("Start", 200, 732 );
    text("Options", 400, 732 );
    text("Quit", 600, 732);
    text("Reset", 750, 775);
  } else { //BUTTON DEFAULTS
    stroke(0, 0, 0);
    fill(190, 240, 140);
    rect(125, 700, 150, 50);
    rect(325, 700, 150, 50);
    rect(525, 700, 150, 50);
    rect(700, 750, 90, 40);
    fill(0, 0, 0);
    text("Start", 200, 732 );
    text("Options", 400, 732 );
    text("Quit", 600, 732);
    text("Reset", 750, 775);
  }
}

void mouseClicked() {
  if (mouseButton == LEFT) {
    if (mouseY>750 && mouseY<790 && mouseX>700 && mouseX<790) { //RESET
      setup();
    } else if (mouseY > 700 && mouseY < 750 && mouseX > 125 && mouseX < 275) { //START
      setup();
      fill(100, 100, 100);
      stroke(0, 0, 0);
      strokeWeight(1);
      rect(125, 500, 150, 100);
      rect(125, 600, 150, 100);
      fill(0, 0, 0);
      text("Math", 200, 550);
      text("Not math", 200, 650);
    } else if (mouseY > 700 && mouseY < 750 && mouseX > 325 && mouseX < 475) { //OPTIONS
      setup();
      fill(100, 100, 100);
      strokeWeight(1);
      stroke(0, 0, 0);
      rect(325, 500, 150, 200);
    } else if (mouseY > 700 && mouseY < 750 && mouseX > 525 && mouseX < 675) { //QUIT
      exit();
    } else { //NOT BUTTON
      setup();
      noStroke();
      fill(170, 220, 120);
      rect(210, 330, 400, 320); //shadow
      stroke(1);
      fill(100, 100, 100);
      rect(200, 320, 400, 320); //window
      strokeWeight(1);
      stroke(0, 0, 0);
      fill(0, 0, 0);
      text("Incorrect, try again.", 400, 400);
      fill(200, 200, 200);
      rect(270, 600, 100, 30);
      rect(450, 600, 100, 30);
      fill(50, 50, 50);
      text("Okay", 290, 623);
      text("Okay", 470, 623);
    }
    if (mouseY>600 && mouseY<630) { //OKAY
      if (mouseX>270 && mouseX<370 || mouseX>450 && mouseX<550) {
        fill(190, 240, 140);
        stroke(190, 240, 140);
        rect(200, 320, (400)+10, (320)+10);
      }
    }
  }
}
