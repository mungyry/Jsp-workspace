package exam;

import java.util.Arrays;

public class App {

public static String[] me(String a, String b) {
	String a_ = a.toUpperCase();
	String b_ = b.toLowerCase();
	
	String[] ret = {a_, b_};
	return ret;
}

	public static void main(String[] args) {
		
		String[] result = me("korea","USA");
		
		System.out.println(result);
		System.out.println(result[0]);
		System.out.println(result[1]);
		System.out.println(Arrays.toString(result));
	}
}
