String sentence;
String cap;
int s = 130;
void settings() {
  size(s, s);
}

void setup() {
  background(0, 0, 0);
  textAlign(CENTER);
  textSize(width/5);
  text("=^ v ^=", width/2, height/2);
  sentence = "I shall name him Gerald ^v^";
  cap = " [A-Z]";
  String[] Caps = sentence.split(cap);
  String[] list = split(sentence, " ");
  int words = list.length;
  println("Your sentence is, \"" + sentence + "\".");
  println("Your sentence has " + Caps.length + " capital(s).");
  println("Your sentence is " + words + " word(s) long.");
  println("You used punctuation " + numberOfPunctuation(sentence) + " time(s).");
  println("Your sentence is " + sentence.length() + " character(s) long.");
  println("Your sentence contains " + numberOfVowels(sentence)  + " vowel(s).");
  println("  >  Helpful reminder: Gerald is proud of you!!");
  println();
}

void draw() {
  noLoop();
}

int numberOfVowels(String sentence) {
  int amountOfVowels = 0;
  char [] vowels = sentence.toCharArray();
  for (int q = 0; q < vowels.length; q++) {
    if (vowels[q] == 'a' || vowels[q] == 'e' || vowels[q] == 'i' || vowels[q] == 'o' || vowels[q] == 'u' || vowels[q] == 'A' || vowels[q] == 'E' || vowels[q] == 'I' || vowels[q] == 'O' || vowels[q] == 'U') {
      amountOfVowels += 1;
    }
  }
  return amountOfVowels;
}

int numberOfPunctuation(String sentence) {
  int amountOfPunctuation = 0;
  char [] punctuation = sentence.toCharArray();
  for (int p = 0; p < punctuation.length; p++) {
    if (punctuation[p] == '.' || punctuation[p] == '\'' || punctuation[p] == ':' || punctuation[p] == ';' || punctuation[p] == ',' || punctuation[p] == '!' || punctuation[p] == '?') {
      amountOfPunctuation += 1;
    }
  }
  return amountOfPunctuation;
}
int count(String sentence) {
  char[] letterCount = sentence.toCharArray();
  for (int c = 0; c < letterCount.length; c++) {
    if (letterCount[c] == "{a-z A-Z}") {
      String[] letters = sentence.split("{a-z A-Z}");
      int[] lettersLengths = new int[letters.length];
      int highestNum = max(lettersLengths);
      return highestNum;
    }
  }
}
