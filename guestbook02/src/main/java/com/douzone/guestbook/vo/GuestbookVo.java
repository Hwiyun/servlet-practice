package com.douzone.guestbook.vo;

public class GuestbookVo {
	long number;
	String name;
	String password;
	String message;
	String date;

	public long getNumber() {
		return number;
	}

	public void setNumber(long number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "GuestbookVo [name=" + name + ", password=" + password + ", number=" + number + ", date=" + date
				+ ", message=" + message + "]";
	}

}
