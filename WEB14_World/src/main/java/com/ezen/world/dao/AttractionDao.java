package com.ezen.world.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.ezen.world.dto.AttractionVO;
import com.ezen.world.util.Dbman;


public class AttractionDao {
	private AttractionDao() {}
	private static AttractionDao itc = new AttractionDao();
	public static AttractionDao getInstance() { return itc; }
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public ArrayList<AttractionVO> selectAseqAttractionList(String aseq) {
		ArrayList<AttractionVO> list = new ArrayList<AttractionVO>();
		String sql = "select * from attraction where aseq=?";
		con = Dbman.getConnection();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, aseq);
			rs = pstmt.executeQuery();
			while( rs.next() ) {
				AttractionVO avo = new AttractionVO();
				avo.setImage(rs.getString("image"));
				avo.setAtname(rs.getString("atname"));
				list.add(avo);
			}
		} catch (SQLException e) { e.printStackTrace();
		} finally { Dbman.close(con, pstmt, rs);   }
		return list;
	}

	public AttractionVO getProduct(int pseq) {
		// TODO Auto-generated method stub
		return null;
	}
}
