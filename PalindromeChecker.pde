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
  return empty;
}
public boolean palindrome(String word)
{
  String empty = "";
  // for(int i = word.length()-1; i >= 0; i --)
  // {
  //   if(Character.isLetter(word.charAt(i)))
  //   {
  //     empty += word;
  //   }
  // }
  // return empty;
  if(empty.equals(word))
  {
    return true;
  }
  return false;
}

