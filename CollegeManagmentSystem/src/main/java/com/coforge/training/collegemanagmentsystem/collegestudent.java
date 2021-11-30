package com.coforge.training.collegemanagmentsystem;

public class collegestudent {
	
	private int rollno,marks;
	private String name,course;
	public collegestudent(int rollno, int marks, String name, String course) {
		super();
		this.rollno = rollno;
		this.marks = marks;
		this.name = name;
		this.course = course;
	}
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	
}
	
	
	
