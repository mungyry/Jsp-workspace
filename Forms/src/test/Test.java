package test;

import beans.User;

public class Test {

	public static void main(String[] args) {
		// 유저 클래스 유효성 검사 테스트
		User user = new User("mungyry1@naver.com", "abcd1234");
		
		if(user.validate()) {
			System.out.println("검사성공");
		} else {
			System.out.println("오류 메세지 : " + user.getMessage());
		}	

	}

}
