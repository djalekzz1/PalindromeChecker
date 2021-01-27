public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    } else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  word=cleanWord(word);
  String sNew = reverse(word);
  if (word.equals(sNew)) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length()-1; i>=0; i--) {
    sNew = sNew + str.charAt(i);
  }
  return sNew;
}

public String cleanWord(String word) {
  String result = word.toLowerCase();  //changes input to lowercase
  StringBuilder str = new StringBuilder();  //removes spaces and punctuation
  for (int i = 0; i < result.length(); i++) {
    if (Character.isLetter(result.charAt(i))) {
      str.append(result.charAt(i));
    }
  }
  return str.toString();
}
