package com.javaex.vo;

import java.util.Arrays;

public class MainSearchVo {
	
	private int[] pensionItem1;
	private int[] pensionItem2;
	private int yangdo;
	private int persons;
	private String datepicker;
	private String datepicker2;
	
	public MainSearchVo() {}

	public int[] getPensionItem1() {
		return pensionItem1;
	}

	public void setPensionItem1(int[] pensionItem1) {
		this.pensionItem1 = pensionItem1;
	}

	public int[] getPensionItem2() {
		return pensionItem2;
	}

	public void setPensionItem2(int[] pensionItem2) {
		this.pensionItem2 = pensionItem2;
	}

	public int getYangdo() {
		return yangdo;
	}

	public void setYangdo(int yangdo) {
		this.yangdo = yangdo;
	}

	public int getPersons() {
		return persons;
	}

	public void setPersons(int persons) {
		this.persons = persons;
	}

	public String getDatepicker() {
		return datepicker;
	}

	public void setDatepicker(String datepicker) {
		this.datepicker = datepicker;
	}

	public String getDatepicker2() {
		return datepicker2;
	}

	public void setDatepicker2(String datepicker2) {
		this.datepicker2 = datepicker2;
	}

	@Override
	public String toString() {
		return "MainSearchVo [pensionItem1=" + Arrays.toString(pensionItem1) + ", pensionItem2="
				+ Arrays.toString(pensionItem2) + ", yangdo=" + yangdo + ", persons=" + persons + ", datepicker="
				+ datepicker + ", datepicker2=" + datepicker2 + "]";
	}

	
	
	


	

	
}
