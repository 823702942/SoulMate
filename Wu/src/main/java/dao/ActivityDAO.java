package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Activity;
import util.DBUtils;

public class ActivityDAO {
public List<Activity>findAll() throws Exception{
	List<Activity>activities=new ArrayList<Activity>();
	Connection conn=null;
	PreparedStatement stat=null;
	ResultSet rs=null;
	try {
		conn=DBUtils.getConn();
		stat=conn.prepareStatement("select *from activity");
		rs=stat.executeQuery();
		while(rs.next()) {
			Activity act=new Activity();
			act.setId(rs.getInt("id"));
			act.setCompany(rs.getString("company"));
			act.setContent(rs.getString("content"));
			act.setDate(rs.getString("date"));
			act.setPeople(rs.getString("people"));
			act.setHost(rs.getString("host"));
			activities.add(act);
		}
	} catch (Exception e) {
		e.printStackTrace();
		throw e;
	}finally {
		DBUtils.close(rs, stat, conn);
	}
	return activities;
}
public void save(Activity act) throws Exception {
	Connection conn=null;
	PreparedStatement stat=null;
	try {
		conn=DBUtils.getConn();
		stat=conn.prepareStatement("insert into activity values(null,?,?,?,?,?)");
		stat.setString(1, act.getCompany());
		stat.setString(2, act.getDate());
		stat.setString(3, act.getContent());
		stat.setString(4, act.getPeople());
		stat.setString(5, act.getHost());
		stat.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
		throw e;
	}finally {
		DBUtils.close(null, stat, conn);
	}
}
public void delete(int id) throws Exception {
	Connection conn=null;
	PreparedStatement stat=null;
	try {
		conn=DBUtils.getConn();
		stat=conn.prepareStatement("delete from activity where id=?");
		stat.setInt(1, id);
		stat.executeUpdate();
	} catch (Exception e) {
		e.printStackTrace();
		throw e;
	}finally {
		DBUtils.close(null, stat, conn);
	}
}

}
