package test;

import beans.User;

public class Test {

	public static void main(String[] args)
	{
		User user = new User("camillesimon90@gmail.com", "funfunforeveryone");
		
		if(user.validate()) 
		{
			System.out.println("Bean validates OK.");
		}
		
		else
		{
			System.out.println(user.getMessage());
		}
	}
	
}
