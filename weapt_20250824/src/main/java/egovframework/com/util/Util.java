package egovframework.com.util;

public class Util {
	
	public static String nvlString(Object object) {
		String rtnStr = "";

		if( object == null || "null".equals(object)) {
			rtnStr = "";
		}else {
			rtnStr = object.toString();
		}
		System.out.println("rtnStr >> "+rtnStr);
		return rtnStr;
	}
	
	public static String upper1(Object object) {
		String rtnStr = "";
		
		if( object == null || "null".equals(object)) {
			rtnStr = "";
		}else {
			rtnStr = object.toString();
			rtnStr = rtnStr.substring(0, 1).toUpperCase() + rtnStr.substring(1);
		}
		
		return rtnStr;	
	}
	
	
}
