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
  cap = "[A-Z]";
  String[] Caps = sentence.split(cap);
  String[] list = split(sentence, " ");
  int words = list.length;
  println("Your sentence is: " + sentence + ".");
  println("Your sentence has " + (Caps.length - 1) + " capital(s).");
  println("Your sentence is " + words + " word(s) long.");
  println("You have taken " + numberOfLetterL(sentence) + " L('s).");
  println("You thought you were writing a formal report (ie: used punctuation) " + numberOfPunctuation(sentence) + " time(s).");
  println("Your sentence is " + sentence.length() + " character(s) long.");
  println("Your sentence contains " + numberOfVowels(sentence)  + " many vowel(s).");
  println("  >  Helpful reminder: Gerald is proud of you!!");
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

int numberOfPunctuation(String list) {
  int amountOfPunctuation = 0;
  char [] punctuation = list.toCharArray();
  for (int p = 0; p < punctuation.length; p++) {
    if (punctuation[p] == '.' || punctuation[p] == '`' || punctuation[p] == ':' || punctuation[p] == ';' || punctuation[p] == ',' || punctuation[p] == '!' || punctuation[p] == '?') {
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
