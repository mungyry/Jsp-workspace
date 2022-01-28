package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import model.Contact;

public class ContactDao {
	// DB에 있는 contacts 테이블을 CRUD하는 클래스
	// DB 연결 객체들
	private DataSource dataSource; // jdbc/demo 커넥션 풀 연결 객체
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public ContactDao(DataSource dataSource) {
		this.dataSource = dataSource; // 객체 커넥션 풀 dataSource를 입력	
		
	}
		
	// 모든 연락처를 리스트로 리턴
	public List<Contact> fineAll(){
		List<Contact> list = new ArrayList<Contact>(); // 빈 리스트 생성
		
		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement("select * from contacts");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Contact contact = new Contact();
				contact.setId(rs.getInt("id"));
				contact.setName(rs.getString("name"));
				contact.setEmail(rs.getString("email"));
				contact.setPhone(rs.getString("phone"));
				
				list.add(contact);
			}
		} catch (Exception e) {
			System.out.println("SQL 에러");
		} finally { // 에러에 상관없이 무조건 실행
			//DB 연결 객체들을 닫는 과정이 필요하다.
			closeAll();
		}
			return list;		

	}

	private void closeAll() {
		try {
			// 나중에 연 순서부터 닫음 rs -> pstmt -> conn(풀로 되돌아감)
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
			
		} catch (Exception e2) {
			System.out.println("DB연결 닫을때 에러발생");
		}
	}
	
}
