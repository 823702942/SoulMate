package entity;

public class Equipment {
private int id;
private String company;
private String name;
private String type;
private int number;
private String address;
private String	charge;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCompany() {
	return company;
}
public void setCompany(String company) {
	this.company = company;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public int getNumber() {
	return number;
}
public void setNumber(int number) {
	this.number = number;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getCharge() {
	return charge;
}
public void setCharge(String charge) {
	this.charge = charge;
}
@Override
public String toString() {
	return "Equipment [id=" + id + ", company=" + company + ", name=" + name + ", type=" + type + ", number=" + number
			+ ", address=" + address + ", charge=" + charge + "]";
}

}
