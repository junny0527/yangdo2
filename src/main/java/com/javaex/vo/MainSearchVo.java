package com.javaex.vo;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;

public class MainSearchVo {
	
	private String datepicker;
	private String datepicker2;
	private String gugun1;
	private String sido1;
	
	private int[] pensionItem1;
	private int[] pensionItem2;
	private int yangdo;
	private int persons;
	
	public MainSearchVo() {
		super();
		Calendar cal = Calendar.getInstance();
		String format = "yyyy-MM-dd";
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		
		
		this.datepicker = sdf.format(cal.getTime());
		
		cal.add(cal.DATE, +1); //날짜를 하루 더한다.
		this.datepicker2 = sdf.format(cal.getTime());
		
		
		this.sido1 = "서울특별시";
		this.gugun1 = "강남구";
		
	}

//
//	public MainSearchVo(int[] pensionItem1, int[] pensionItem2, int yangdo, int persons, String datepicker,
//			String datepicker2, String gugun1, String sido1) {
//		super();
//		this.pensionItem1 = pensionItem1;
//		this.pensionItem2 = pensionItem2;
//		this.yangdo = yangdo;
//		this.persons = persons;
//		this.datepicker = datepicker;
//		this.datepicker2 = datepicker2;
//		this.gugun1 = gugun1;
//		this.sido1 = sido1;
//	}


	
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


	public String getGugun1() {
		return gugun1;
	}


	public void setGugun1(String gugun1) {
		this.gugun1 = gugun1;
	}


	public String getSido1() {
		return sido1;
	}


	public void setSido1(String sido1) {
		this.sido1 = sido1;
	}

	@Override
	public String toString() {
		return "MainSearchVo [pensionItem1=" + Arrays.toString(pensionItem1) + ", pensionItem2="
				+ Arrays.toString(pensionItem2) + ", yangdo=" + yangdo + ", persons=" + persons + ", datepicker="
				+ datepicker + ", datepicker2=" + datepicker2 + ", gugun1=" + gugun1 + ", sido1=" + sido1 + "]";
	}

	
	
}
