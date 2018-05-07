String sentence;
int s = 130;
void settings() {
  size(s, s);
}

void setup() {
  background(0, 0, 0);
  textAlign(CENTER);
  textSize(width/5);
  text("=^ v ^=", width/2, height/2);
  sentence = "I shall name him Gerald. ^v^";
  String[] list = split(sentence, " ");
  printArray(list);
  println("You have taken " + numberOfLetterL(sentence) + " L('s).");
  println("You thought you were writing a formal report " + numberOfPunctuation(sentence) + " time(s).");
}

void draw() {
  noLoop();
}

/*int numberOfLetterL(String sentence) {
  int amountOfLs = 0;
  char [] letters = sentence.toCharArray();
  for (int i = 0; i < letters.length; i++) {
    if (letters[q] == '' || letters[i] == 'L') {
      amountOfCapitals += 1;
    }
  }
  return amountOfLs;
}
*/
int numberOfPunctuation(String list) {
  int amountOfPunctuation = 0;
  char [] letters = list.toCharArray();
  for (int p = 0; p < letters.length; p++) {
    if (letters[p] == '.' || letters[p] == '`' || letters[p] == ':' || letters[p] == ';' || letters[p] == ',' || letters[p] == '!' || letters[p] == '?') {
      amountOfPunctuation += 1;
    }
  }
  return amountOfPunctuation;
}
int numberOfLetterL(String list) {
  int amountOfLs = 0;
  char [] letters = list.toCharArray();
  for (int i = 0; i < letters.length; i++) {
    if (letters[i] == 'l' || letters[i] == 'L') {
      amountOfLs += 1;
    }
  }
  return amountOfLs;
}
