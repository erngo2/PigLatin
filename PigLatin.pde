public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public boolean findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	if(sWord.substring(0,1).equals("a") || sWord.substring(0,1).equals("e") || sWord.substring(0,1).equals("i") || sWord.substring(0,1).equals("o") || sWord.substring(0,1).equals("u"))
		return true;
	return false;
}

public boolean findAllConsonant(String sWord){
	for(int i = 0; i < sWord.length(); i++){
		if(sWord.substring(i,i + 1).equals("a") || sWord.substring(i, i + 1).equals("e") || sWord.substring(i, i + 1).equals("i") || sWord.substring(i,i + 1).equals("o") || sWord.substring(i, i + 1).equals("u"))
			return false;
	}
	return true;
}

public boolean findQu(String sWord){
	if(sWord.substring(0, 2).equals("qu"))
		return true;
	return false;
}

public boolean findFirstConsonant(String sWord){
	if(sWord.substring(0,1).equals("a") || sWord.substring(0,1).equals("e") || sWord.substring(0,1).equals("i") || sWord.substring(0,1).equals("o") || sWord.substring(0,1).equals("u"))
		return false;
	return true;
}

public boolean findSecondConsonant(String sWord){
	if(sWord.substring(1,2).equals("a") || sWord.substring(1,2).equals("e") || sWord.substring(1,2).equals("i") || sWord.substring(1,2).equals("o") || sWord.substring(1,2).equals("u"))
		return false;
	return true;
}

public boolean findThirdConsonant(String sWord){
	if(sWord.substring(2,3).equals("a") || sWord.substring(2,3).equals("e") || sWord.substring(2,3).equals("i") || sWord.substring(2,3).equals("o") || sWord.substring(2,3).equals("u"))
		return false;
	return true;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord))
	{
		return sWord + "way";
	}
	/*else
	{
		return "ERROR!";
	}*/
	if(findAllConsonant(sWord))
	{
		return sWord + "ay";
	}

	if(findQu(sWord))
	{
		return sWord.substring(2, sWord.length()) + "quay";
	}

	if(findFirstConsonant(sWord))
	{
		if(findSecondConsonant(sWord)){
			if(findThirdConsonant(sWord)){
				return sWord.substring(3, sWord.length()) + sWord.substring(0,3) + "ay";
			}
			return sWord.substring(2, sWord.length()) + sWord.substring(0,2) + "ay";
		}
		return sWord.substring(1, sWord.length()) + sWord.substring(0, 1) + "ay";
	}

	return sWord.substring(1, sWord.length()) + sWord.substring(0, 1) + "ay";
}
