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
  println(letterCount(sentence));
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

int letterCount(String sentence) {
  String[] lC = new String[sentence.length()];
  for (int count = 0; count < lC.length; count++) {
    if (lC[count] == lC[1]) {
    }
  }
  int mostLetter = 0;
  int c1L = lC.length;
  int c2L = lC.length;
  if (c1L<c2L) {
  }
  return mostLetter;
}
