package Exam;

public class App {
	public static void main(String[] args) {
		
		String[] arr = {"kim", "hong", "park"};
		
		System.out.println(arr.length);
		System.out.println(arr[0]);
		System.out.println(arr[0].charAt(0));		
		
		for(int i = 0; i<arr.length; i++) {
			for(int j= 0; j<arr[i].length(); j++) {
				System.out.print(arr[i].charAt(j));
				
			}
		}
	}

}
