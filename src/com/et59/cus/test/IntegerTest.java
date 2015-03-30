package com.et59.cus.test;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class IntegerTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Integer ss = 20;
		String aaa = "20";
		System.out.println(ss == Integer.valueOf(aaa));
		List<String> li1 = new ArrayList<String>();
		li1.add("1");
		li1.add("2");
		li1.add("3");
		li1.add("6");
		li1.add("2");
		li1.add("2");
		li1.add("3");
		li1.add("7");
		HashSet hs = new HashSet();
		hs.addAll(li1);
		System.out.println(hs);
		System.out.println(li1);
	}
}
