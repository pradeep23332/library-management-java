package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.entity.BookDtls;

public class BookDAOImpl implements BookDAO{
	
	private Connection connection;
	
	
	
	public BookDAOImpl(Connection connection) {
		super();
		this.connection = connection;
	}



	public boolean addBooks(BookDtls b) {
		boolean f = false;
		
		try {
			String sql = "insert into book_dtls(bookname,author,stock,bookCategory,status,photo,email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getStock());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());
			
			int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
			
			
		}catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		// TODO Auto-generated method stub
		return f;
	}



	public List<BookDtls> getAllBooks() {
		
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		
		try {
			String sql="select * from book_dtls";
			PreparedStatement ps=connection.prepareStatement(sql);
			
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				
				b = new BookDtls();
				b.setBookId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setStock(rs.getString(4));
				b.setBookCategory(rs.getString(5));
				b.setStatus(rs.getString(6));
				b.setPhotoName(rs.getString(7));
				b.setEmail(rs.getString(8));
				list.add(b);
				
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		}catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
		// TODO Auto-generated method stub
		return list;
	}
	
	
	

}
