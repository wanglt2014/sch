package com.et59.cus.tools;

import java.net.InetAddress;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * <p>Title: UUIDGenerator.java</p>
 * <p>Description: </p>
 * <p>Copyright: 59et Software (c) 2011</p>
 * <p>Company: 点滴工作室</p>
 * @author Liuhh(jxausea@gmail.com)
 * @date 2012-2-20
 * @version 2.0
 *
 */
public class UUIDGenerator {

    private static final int IP;

    public static int IptoInt(byte[] bytes) {
        int result = 0;
        for (int i = 0; i < 4; i++) {
            result = (result << 8) - Byte.MIN_VALUE + (int) bytes[i];
        }
        return result;
    }

    static {
        int ipadd;
        try {
            ipadd = IptoInt(InetAddress.getLocalHost().getAddress());
        } catch (Exception e) {
            ipadd = 0;
        }
        IP = ipadd;
    }
    private static short counter = (short) 0;
    private static final int JVM = (int) (System.currentTimeMillis() >>> 8);

    public UUIDGenerator() {
    }
    public static int getJVM() {
        return JVM;
    }
    public static short getCount() {
        synchronized (UUIDGenerator.class) {
            if (counter < 0)
                counter = 0;
            return counter++;
        }
    }
    public static int getIP() {
        return IP;
    }
    public static short getHiTime() {
        return (short) (System.currentTimeMillis() >>> 32);
    }

    public static int getLoTime() {
        return (int) System.currentTimeMillis();
    }

    private final static String sep = "";

    public static String format(int intval) {
        String formatted = Integer.toHexString(intval);
        StringBuffer buf = new StringBuffer("00000000");
        buf.replace(8 - formatted.length(), 8, formatted);
        return buf.toString();
    }

    public  static String format(short shortval) {
        String formatted = Integer.toHexString(shortval);
        StringBuffer buf = new StringBuffer("0000");
        buf.replace(4 - formatted.length(), 4, formatted);
        return buf.toString();
    }

    public static String generate() {
        return String.valueOf(new StringBuffer(36).append(format(getIP())).append(sep)
                .append(format(getJVM())).append(sep)
                .append(format(getHiTime())).append(sep)
                .append(format(getLoTime())).append(sep)
                .append(format(getCount())).toString());
    }
    public static void main(String args[]){
        System.out.println(generate());
    }
    /**
     * 得到17位订单号（时间戳）
     * @return
     */
    public static String getOrderNo() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		String nowdate = sdf.format(new Date());
		return  nowdate;
	}
    /**
     * 生成的令牌
     * JF+时间戳
     */
    public static String getTokenID(){
    	return "JF"+getOrderNo();
    }
}