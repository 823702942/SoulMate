package entity;

public class Exercise {
private int id;
private String company;
private String begin_time;
private String end_time;
private int people;
private String purpose;
private String effect;
@Override
public String toString() {
	return "Exercise [id=" + id + ", company=" + company + ", begin_time=" + begin_time + ", end_time=" + end_time
			+ ", people=" + people + ", purpose=" + purpose + ", effect=" + effect + "]";
}
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
public String getBegin_time() {
	return begin_time;
}
public void setBegin_time(String begin_time) {
	this.begin_time = begin_time;
}
public String getEnd_time() {
	return end_time;
}
public void setEnd_time(String end_time) {
	this.end_time = end_time;
}
public int getPeople() {
	return people;
}
public void setPeople(int people) {
	this.people = people;
}
public String getPurpose() {
	return purpose;
}
public void setPurpose(String purpose) {
	this.purpose = purpose;
}
public String getEffect() {
	return effect;
}
public void setEffect(String effect) {
	this.effect = effect;
}

}
