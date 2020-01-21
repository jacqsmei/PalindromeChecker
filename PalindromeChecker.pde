public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String letters = onlyLetters(word);
  String reverse = reverse(letters);
  return reverse.equalsIgnoreCase(letters);
}
public String reverse(String sWord)
{
  String reverse = "";
  for (int i=sWord.length()-1; i>=0; i--) {
    reverse+=sWord.substring(i, i+1);
  }
  return reverse;
}
public String onlyLetters(String sString){
  String letters = "";
  for (int i=0; i<sString.length(); i++) {
    if (Character.isLetter(sString.charAt(i))) {
      letters += sString.substring(i, i+1);
    }
  }
  return letters;
}
