String sentence;
void settings() {
  size(300, 300);
}

void setup() {
  textAlign(CENTER);
  textSize(50);
  text("=^ v ^=",150,150);
  sentence = "I shall name him Gerald. ^v^";
  String[] list = split(sentence, " ");
  println(list[0]);
  println(list[1]);
  println(list[2]);
  println(list[3]);
  println(list[4]);
  println(list[5]);
}

void draw() {
  noLoop(); 
}
