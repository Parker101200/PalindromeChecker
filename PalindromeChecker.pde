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
public boolean palindrome(String word)
{
  String onlyWords = noSymbols(word);
  String erase = reverse(noSymbols(word));
  if(onlyWords.equalsIgnoreCase(erase))
  {
    return true;
  }
  return false;
}
public String reverse(String back)
{
  String empty = new String();
  for(int i = back.length()-1; i >= 0; i --)
  {
    empty+=back.substring(i,i+1);
  }
  //println(empty);
  return empty;
}
public String noSymbols(String str)
{
  String nothing = "";
  for(int i = 0; i < str.length(); i ++)
  {
    if((!str.substring(i,i+1).equals(" "))&&(!str.substring(i,i+1).equals("!"))&&(!str.substring(i,i+1).equals("'"))&&(!str.substring(i,i+1).equals(","))&&(!str.substring(i,i+1).equals(".")))
    {
      nothing += str.substring(i, i+1);
    }
  }
  return nothing;
}
