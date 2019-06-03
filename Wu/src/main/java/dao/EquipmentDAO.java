package dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Equipment;
import util.DBUtils;

public class EquipmentDAO {
	public static void main(String[] args) throws Exception {
		List <Equipment>eqs=new ArrayList<Equipment>();
		Connection conn=null;
		PreparedStatement stat=null;
		ResultSet rs=null;
			try {
				conn=DBUtils.getConn();
				stat=conn.prepareStatement("select *from equipment");
				rs=stat.executeQuery();
				while(rs.next()) {
					 int id=rs.getInt("id");
					 String company=rs.getString("company");
					 String name=rs.getString("name");
					 String type=rs.getString("type");
					 int number=rs.getInt("number");
					 String address=rs.getString("address");
					 String	charge=rs.getString("charge");
					 Equipment eq=new Equipment();
					 eq.setId(id);
					 eq.setAddress(address);
					 eq.setCharge(charge);
					 eq.setCompany(company);
					 eq.setName(name);
					 eq.setNumber(number);
					 eq.setType(type);
					 eqs.add(eq);
					 	 
					}
				System.out.println("company:"+eqs.get(1).getCompany());
				
			}
				catch (Exception e) {
					e.printStackTrace();
					throw e;
				}
	}
	
public List <Equipment> findAll() throws Exception{
	List <Equipment>eqs=new ArrayList<Equipment>();
	Connection conn=null;
	PreparedStatement stat=null;
	ResultSet rs=null;
		try {
			conn=DBUtils.getConn();
			stat=conn.prepareStatement("select *from equipment");
			rs=stat.executeQuery();
			while(rs.next()) {
			 int id=rs.getInt("id");
			 String company=rs.getString("company");
			 String name=rs.getString("name");
			 String type=rs.getString("type");
			 int number=rs.getInt("number");
			 String address=rs.getString("address");
			 String	charge=rs.getString("charge");
			 Equipment eq=new Equipment();
			 eq.setId(id);
			 eq.setAddress(address);
			 eq.setCharge(charge);
			 eq.setCompany(company);
			 eq.setName(name);
			 eq.setNumber(number);
			 eq.setType(type);
			 eqs.add(eq);
			}
		
	} catch (Exception e) {
		e.printStackTrace();
		throw e;
	}finally {
		DBUtils.close(rs, stat, conn);
	}
	return eqs;
}
public void save(Equipment eq) throws Exception {
	Connection conn=null;
	PreparedStatement stat=null;
	try {
		conn=DBUtils.getConn();
		stat=conn.prepareStatement("insert into equipment values(null,?,?,?,?,?,?)");
		stat.setString(1, eq.getCompany());
		stat.setString(2, eq.getName());
		stat.setString(3, eq.getType());
		stat.setInt(4, eq.getNumber());
		stat.setString(5, eq.getAddress());
		stat.setString(6, eq.getCharge());
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
		stat=conn.prepareStatement("delete from equipment where id=?");
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
