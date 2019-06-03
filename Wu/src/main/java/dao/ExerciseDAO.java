package dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.Exercise;
import util.DBUtils;

public class ExerciseDAO {
public List<Exercise> findAll() throws Exception{
	List<Exercise>es=new ArrayList<Exercise>();
	Connection conn=null;
	PreparedStatement stat=null;
	ResultSet rs=null;
	try {
		conn=DBUtils.getConn();
		stat=conn.prepareStatement("select *from exercise");
		rs=stat.executeQuery();
		while(rs.next()) {
			Exercise exer=new Exercise();
			exer.setId(rs.getInt("id"));
			exer.setPeople(rs.getInt("people"));
			exer.setBegin_time(rs.getString("begin_time"));
			exer.setEnd_time(rs.getString("end_time"));
			exer.setCompany(rs.getString("company"));
			exer.setPurpose(rs.getString("purpose"));
		}
	} catch (Exception e) {
		e.printStackTrace();
		throw e;
	}
	return es;
}
}
