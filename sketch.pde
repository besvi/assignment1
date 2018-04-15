int x = 0;
int y = 0;
int t = 0;
/*
SOMETHING BROKE AND I HAVE NO IDEA WHAT BUT I WILL
 GET REFRESHMENTS AND RETURN LATER or something idk
 */
void setup() {
  size(800, 800);
  background(190, 240, 140);
  textSize(((width+height)/2)/16);
  fill(random(190), random(190), random(190));
  textAlign(CENTER);
  text("Welcome To The Game", width/2, height/5);
  strokeWeight(1);
  fill(190, 240, 140);
  rect(width/6, 700, 150, 50);
  rect(width/4, 700, 150, 50);
  rect(3*width/4, 700, 150, 50);
  rect(700, 750, 90, 40);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  textSize(((width+height)/2)/32);
  text("Start", width/4, 732 );
  text("Options", width/2, 732 );
  text("Quit", 3*width/4, 732);
  text("Reset", 710, 775);
}

void draw() {
  //HOVER BUTTONS
  if (mouseY > 700 && mouseY < 750) {
    if (mouseX > 125 && mouseX < 275) { //HOVER START
      fill(205, 255, 155);
      rect(width/4, 700, 150, 50);
      fill(0, 0, 0);
      textSize(((width+height)/2)/32);
      text("Start", width/4, 732 );
    } else if (mouseX > 325 && mouseX < 475) { //HOVER OPTIONS
      fill(205, 255, 155);
      rect(325, 700, 150, 50);
      fill(0, 0, 0);
      textSize(((width+height)/2)/32);
      text("Options", 350, 732 );
    } else if (mouseX > 525 && mouseX < 675) { //HOVER QUIT
      fill(205, 255, 155);
      rect(525, 700, 150, 50);
      fill(0, 0, 0);
      textSize(((width+height)/2)/32);
      text("Quit", 575, 732);
    }
  } else if (mouseX>700 && mouseX<790) {
    if (mouseY>750 && mouseY<790) { //HOVER RESET
      fill(205, 255, 155);
      rect(700, 750, 90, 40);
      fill(0, 0, 0);
      textSize(((width+height)/2)/32);
      text("Reset", 710, 775);
    }
  } else { //BUTTON DEFAULTS
    stroke(0, 0, 0);
    fill(190, 240, 140);
    rect(width/4, 700, 150, 50);
    rect(325, 700, 150, 50);
    rect(525, 700, 150, 50);
    rect(700, 750, 90, 40);
    fill(0, 0, 0);
    textSize(((width+height)/2)/32);
    text("Start", width/4, 732 );
    text("Options", 350, 732 );
    text("Quit", 575, 732);
    text("Reset", 710, 775);
  }
}
void mouseClicked() {
  if (mouseButton == LEFT) {
    if (mouseY>750 && mouseY<790) { //CLICK RESET
      if (mouseX>700 && mouseX<790) {
        setup();
      }
    } else if (mouseY > 700 && mouseY < 750) { //CLICK START
      if (mouseX > 125 && mouseX < 275) {
        fill(100, 100, 100);
        stroke(0, 0, 0);
        strokeWeight(1);
        rect(width/4, 500, 150, 100);
        rect(width/4, 600, 150, 100);
        fill(0, 0, 0);
        text("Math", width/4, 550);
        text("Not math", width/4, 650);
      } else if (mouseX > 325 && mouseX < 475) { //CLICK OPTIONS
        fill(100, 100, 100);
        strokeWeight(1);
        stroke(0, 0, 0);
        rect(325, 500, 150, 200);
      } else if (mouseX > 525 && mouseX < 675) { //CLICK QUIT
        exit();
      }
    } else { //CLICK ON NOT BUTTON
      noStroke();
      fill(170, 220, 120);
      rect((width/4)+10, ((height/5)*2)+10, width/2, (height/5)*2);
      stroke(1);
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
    } 
    if (mouseY>600 && mouseY<630) { //CLICK OKAY
      if (mouseX>270 && mouseX<370) {
        fill(190, 240, 140);
        stroke(190, 240, 140);
        rect(width/4, (height/5)*2, (width/2)+10, ((height/5)*2)+10);
      } else if (mouseX>450 && mouseX<550) { //CLICK ALSO OKAY
        fill(190, 240, 140);
        stroke(190, 240, 140);
        rect(width/4, (height/5)*2, (width/2)+10, ((height/5)*2)+10);
      }
    }
  }
}
