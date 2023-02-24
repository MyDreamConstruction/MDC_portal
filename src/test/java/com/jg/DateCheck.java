package com.jg;

import java.util.Calendar;
import java.util.Date;

public class DateCheck {

	public static void main(String[] args) {
		Calendar currentCalendar = Calendar.getInstance();
		currentCalendar.setFirstDayOfWeek(Calendar.MONDAY);
		Date currentWeekStart = currentCalendar.getTime();

		currentCalendar.add(Calendar.DATE, 6); // add 6 days after Monday
		Date currentWeekEnd = currentCalendar.getTime();

		System.out.println("Week Start Date: " + currentWeekStart);
		System.out.println("Week End Date: " + currentWeekEnd);

		System.out.println("------------------------");

		Date date = new Date();
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		int i = c.get(Calendar.DAY_OF_WEEK) - c.getFirstDayOfWeek();
		c.add(Calendar.DATE, -i - 7);
		Date start = c.getTime();
		c.add(Calendar.DATE, 6);
		Date end = c.getTime();
		System.out.println(start + " - " + end);
		
	}

}
