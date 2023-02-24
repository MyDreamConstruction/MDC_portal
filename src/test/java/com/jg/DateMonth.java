package com.jg;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;

public class DateMonth {

	public static void main(String[] args) throws ParseException {
		
		Calendar calendar = Calendar.getInstance();         
		calendar.add(Calendar.MONTH, 0);
		calendar.set(Calendar.DATE, calendar.getActualMinimum(Calendar.DAY_OF_MONTH));
		Date nextMonthFirstDay = calendar.getTime();
		calendar.set(Calendar.DATE, calendar.getActualMaximum(Calendar.DAY_OF_MONTH));
		Date nextMonthLastDay = calendar.getTime();
		System.out.println(nextMonthFirstDay);
		System.out.println(nextMonthLastDay);
		
		System.out.println("------------------------");
		
		Calendar aCalendar = Calendar.getInstance();
		// add -1 month to current month
		aCalendar.add(Calendar.MONTH, -1);
		// set DATE to 1, so first date of previous month
		aCalendar.set(Calendar.DATE, 1);

		Date firstDateOfPreviousMonth = aCalendar.getTime();

		// set actual maximum date of previous month
		aCalendar.set(Calendar.DATE,     aCalendar.getActualMaximum(Calendar.DAY_OF_MONTH));
		//read it
		Date lastDateOfPreviousMonth = aCalendar.getTime();
		
		System.out.println(firstDateOfPreviousMonth);
		System.out.println(lastDateOfPreviousMonth);
		
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");
		LocalDate ld = LocalDate.parse(formatter1.format(firstDateOfPreviousMonth));
		System.out.println(ld);
		
		String date ="2016-05-01";
		 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		 Date parsed = format.parse(date);
		 java.sql.Date sql = new java.sql.Date(parsed.getTime());
		System.out.println(sql);
	}
}
