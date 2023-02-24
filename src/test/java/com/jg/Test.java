package com.jg;

public class Test {

	public static void main(String[] args) {
		
		double totalAmount = (50000*25)/100;
		System.out.println(totalAmount);
		
		String str= "this is level 71" ;
		int n = str.length();
		int re = extracted(str,n);
		System.out.println(re);
		
		try {
			System.out.println(doStff(args));
		}catch (Exception e) {
			System.out.println("exc");
		}
		doStff(args);
	}

	private static int doStff(String[] args) {
		// TODO Auto-generated method stub
		return Integer.parseInt(args[0]);
	}

	private static int extracted(String str,int n) {
		String[] s = str.split(" ");
		int count = 0;
		for(String ss:s) {
			String rever ="",original=ss;
			for(int i = ss.length()-1; i>=0;i--) {
				rever =  rever+ ss.charAt(i);
			}
			
			if(original.equals(rever)) {
				count+=1;
			}
			
		}
		return count;
	}
}
