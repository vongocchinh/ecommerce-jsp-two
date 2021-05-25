package model.admin;

import java.sql.Timestamp;

public class DateLoginAdmin {
	private int dateLoginAdmin_id;
	private Timestamp date;
	public DateLoginAdmin(int dateLoginAdmin_id, Timestamp date) {
		super();
		this.dateLoginAdmin_id = dateLoginAdmin_id;
		this.date = date;
	}
	public DateLoginAdmin(Timestamp date) {
		super();
		this.date = date;
	}
	public DateLoginAdmin() {
		super();
	}
	public int getDateLoginAdmin_id() {
		return dateLoginAdmin_id;
	}
	public void setDateLoginAdmin_id(int dateLoginAdmin_id) {
		this.dateLoginAdmin_id = dateLoginAdmin_id;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "DateLoginAdmin [dateLoginAdmin_id=" + dateLoginAdmin_id + ", date=" + date + "]";
	}
	
}
