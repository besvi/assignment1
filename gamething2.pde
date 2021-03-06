int w = 0;
int h = 0;
int k = 0;
int u = 0;
int drawPos = 0;
boolean mainMenu = true;
boolean mathGame = false;
boolean nonMath = false;
boolean start = false;
void setup() {
  size(800, 800);
  background(190, 240, 140);
  textSize(50);
  fill(10, 50, 100);
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
  if (start == true) {
    thread("modeSelect");
  }
  if (mathGame == true) {
    thread("mathGame");
  }
  if (nonMath == true) {
    thread("nonMath");
  }
  if (mainMenu == true) {
    thread("mainMenu");
  }
}
void mainMenu() {
  if (mainMenu == true) {
    if (mouseY > 700 && mouseY < 750 &&  mouseX > 125 && mouseX < 275) { 
      //HOVER START
      drawPos = 1;
    } 
    if (mouseY > 700 && mouseY < 750 && mouseX > 325 && mouseX < 475) { 
      //HOVER OPTIONS
      drawPos = 2;
    } 
    if (mouseY > 700 && mouseY < 750 && mouseX > 525 && mouseX < 675) { 
      //HOVER QUIT
      drawPos = 3;
    } 
    if (mouseX>700 && mouseX<790 && mouseY>750 && mouseY<790) { 
      //HOVER RESET
      drawPos = 5;
    }
  }

  switch(drawPos) {
  case 1: 
    //START
    fill(205, 255, 155);
    rect(125, 700, 150, 50);
    fill(0, 0, 0);
    text("Start", 200, 732 );
    break;
  case 2: 
    //OPTIONS
    fill(205, 255, 155);
    rect(325, 700, 150, 50);
    fill(0, 0, 0);
    text("Options", 400, 732 );
    break;
  case 3: 
    // Quit
    fill(205, 255, 155);
    rect(525, 700, 150, 50);
    fill(0, 0, 0);
    text("Quit", 600, 732);
    break;
  case 5: 
    //RESET
    fill(205, 255, 155);
    rect(700, 750, 90, 40);
    fill(0, 0, 0);
    text("Reset", 750, 775);
    break;
  default: 
    //DEFAULT
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
    break;
  }
  drawPos = 0;
  w = 0;
  if (mouseY>750 && mouseY<790 && mouseX>700 && mouseX<790) { //RESET
    w = 5;
  } else if (mouseY > 700 && mouseY < 750 && mouseX > 125 && mouseX < 275 && k != 7) { //START
    w = 1;
  } else if (mouseY > 700 && mouseY < 750 && mouseX > 325 && mouseX < 475 && k != 7) { //OPTIONS
    w = 2;
  } else if (mouseY > 700 && mouseY < 750 && mouseX > 525 && mouseX < 675) { //QUIT
    w = 3;
  } else {
    if (start != true) {
      w = 6;
    }
  }
  if (mouseY>600 && mouseY<630) { //OKAY
    if (mouseX>270 && mouseX<370 || mouseX>450 && mouseX<550) {
      if (mousePressed && k == 7 && mainMenu == false) {
        setup();
        mainMenu = true;
        h = 1;
      }
    }
  }
}

void mouseClicked() {
  switch(w) {
  case 1:
    setup();
    fill(100, 100, 100);
    stroke(0, 0, 0);
    strokeWeight(1);
    rect(125, 500, 150, 100);
    rect(125, 600, 150, 100);
    fill(0, 0, 0);
    text("Math", 200, 550);
    text("Not math", 200, 650);
    start = true;
    break;
  case 2:
    setup();
    fill(100, 100, 100);
    strokeWeight(1);
    stroke(0, 0, 0);
    rect(325, 500, 150, 200);
    break;
  case 3:
    exit();
    break;
  case 5:
    setup();
    drawPos = 0;
    w = 0;
    h = 0;
    k = 0;
    u = 0;
    break;
  case 6:
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
    text("Okay", 315, 623);
    text("Okay", 500, 623);
    k = 7;
    mainMenu = false;
    break;
  }
  if (h==1) {
    setup();
    h = 0;
    k = 0;
    mainMenu = true;
  }
}
void modeSelect() {
  if (start == true && mouseY > 500 && mouseY < 600 && mouseX > 125 && mouseX < 275 && mousePressed) {
    u = 1;
    if (u == 1) {
      mathGame = true;
    }
  } else if (start == true && mouseY > 600 && mouseY < 700 && mouseX > 125 && mouseX < 275 && mousePressed) {
    u = 1;
    if (u == 1) {
      nonMath = true;
    }
  }
}
void nonmath() {
  fill(245, 245, 245);
  rect(0, 0, 800, 800);
}
void mathGame() {
  fill(245, 245, 245);
  rect(0, 0, 800, 800);
}
