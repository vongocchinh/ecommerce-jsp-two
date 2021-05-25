package get.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connect.DBConnect;
import model.admin.Brand;
import model.admin.DateLoginAdmin;

public class GetdateloginAdmin {
	 public ArrayList<DateLoginAdmin> getListDate() throws SQLException {
	        Connection connection = DBConnect.getConnecttion();
	        String sql = "SELECT * FROM dateAdmin";
	        PreparedStatement ps = connection.prepareCall(sql);
	        ResultSet rs = ps.executeQuery();
	        ArrayList<DateLoginAdmin> list = new ArrayList<>();
	        while (rs.next()) {
	            DateLoginAdmin brand = new DateLoginAdmin();
	            brand.setDateLoginAdmin_id(rs.getInt("date_login_id"));
	            brand.setDate(rs.getTimestamp("date_login"));
	            list.add(brand);
	        }
	        return list;
	    }
	 public boolean insert(DateLoginAdmin c) throws SQLException {
		    try {
		         Connection connection = DBConnect.getConnecttion();
		         String sql = "INSERT INTO dateAdmin VALUE(?,?)";
		         PreparedStatement ps = connection.prepareCall(sql);
		         ps.setInt(1, c.getDateLoginAdmin_id());
		         ps.setTimestamp(2, c.getDate());
		         int temp = ps.executeUpdate();
		         return temp == 1;
		    } catch (Exception e) {
		         return false;
		    }
		}
}
