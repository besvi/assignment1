String sentence;
String cap;
int s = 130;
String all;
String vowels;
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
  vowels = [a e i o u];
  String[] Caps = sentence.split(cap);
  String[] list = split(sentence, " ");
  int words = list.length;
  println("Your sentence is, \"" + sentence + "\".");
  println("Your sentence consists of:");
  println(" - " + Caps.length + " capital(s)");
  println(" - " + words + " word(s)");
  println(" - " + numberOfPunctuation(sentence) + " punctuation mark(s)");
  println(" - " + sentence.length() + " character(s)");
  println(" - " + numberOfVowels(sentence)  + " vowel(s)");
  println("  >  Helpful reminder: Gerald is proud of you!!");
  println("The most used letter in your sentence is [" + all + "], appearing [" + all + "] times.");
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

int letter(String sentence) {
  int letterCount = 0;
  char [] countLetter = sentence.toCharArray();
  for (int p = 0; p < countLetter.length; p++) {
    if (p >= 'a' || p <= 'Z') {
    }
  }
  return letterCount;
}
