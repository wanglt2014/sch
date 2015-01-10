package com.et59.cus.tools;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期处理类
 * 点滴工作室
 * @author liuhaihua
 *
 */
public class DateUtil {
	/**
	 * 日期变换
	 * @param MMddyyyy
	 * @return
	 */
	public static Date strToDate(String str){
		if(null!=str&&!str.equals("")){
			Date date = null;
			SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
			try {
				date =format.parse(str);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			return date;
		}else{
			return null;
		}
	}
	/**
	 * 日期变换
	 * @param MMddyyyy HH:MM:ss
	 * @return
	 */
	public static Date strToDateMMDDYYYYHHMMSS(String str){
		if(null!=str&&!str.equals("")){
			Date date = null;
			SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
			try {
				date =format.parse(str);
			} catch (ParseException e) {
				e.printStackTrace();
			}
			return date;
		}else{
			return null;
		}
	}
	public   static void  main(String[] args){
		System.out.println(strToDateMMDDYYYYHHMMSS("4/9/2014 12:21:12"));
	}
}
