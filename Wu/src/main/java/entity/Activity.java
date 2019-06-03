package entity;

public class Activity {
private int id;
private String company;
private String date;
private String content;
private String people;
private String host;
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
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getPeople() {
	return people;
}
public void setPeople(String people) {
	this.people = people;
}
public String getHost() {
	return host;
}
public void setHost(String host) {
	this.host = host;
}
@Override
public String toString() {
	return "Activites [id=" + id + ", company=" + company + ", date=" + date + ", content=" + content + ", people="
			+ people + ", host=" + host + "]";
}

}
