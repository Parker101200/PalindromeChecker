public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public String reverse(String back)
{
  String empty = "";
  for(int i = back.length()-1; i >= 0; i --)
  {
    empty+=back.substring(i,i+1);
  }
  println(empty);
  return empty;
}
public String noSymbols(String sWord)
{
  String nothing = "";
  for(int i = 0; i < sWord.length(); i ++)
  {
    if((!sWord.substring(i,i+1).equals(" "))&&(!sWord.substring(i,i+1).equals("!"))&&(!sWord.substring(i,i+1).equals("'"))&&(!sWord.substring(i,i+1).equals(","))&&(!sWord.substring(i,i+1).equals(".")))
    {
      nothing += sWord.substring(i, i+1);
    }
  }
  return nothing.toLowerCase();
}
public boolean palindrome(String word)
{
  String empty = "";
  empty = reverse(word);
  empty = noSymbols(word);
  if(empty.equals(word))
  {
    return true;
  }
  return false;
}

