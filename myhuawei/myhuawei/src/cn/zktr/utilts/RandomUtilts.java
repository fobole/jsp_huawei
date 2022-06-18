package cn.zktr.utilts;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**工具类
 * @author Lenovo
 *
 */
public class RandomUtilts {
	/**生成随机单号
	 * @param prefix
	 * @return
	 */
	public static String genrateNo() {
		//前缀+年月日+4位随机数
		StringBuilder sb = new StringBuilder();
		//获取当前系统时间
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
		sb.append(sdf.format(new Date()));
		//6位随机数  1-999999
		Integer rnd = (int)(Math.random()*1000000000); 
		for(int i=0;i<12-rnd+"".length();i++) {
			sb.append("0");
		}
		sb.append(rnd+"");
		return sb.toString();
	}

	/**是否是整数
	 * @param s
	 * @return
	 */
	public static Boolean isInteger(String s) {
		try {
			Integer.valueOf(s);
			return true;
		}catch (Exception e) {
			return false;
		}
	}
	/**是否是浮点数
	 * @param s
	 * @return
	 */
	public static Boolean isNumber(String s) {
		try {
			Double.valueOf(s);
			return true;
		}catch (Exception e) {
			return false;
		}
	}
	
	
	public static boolean isNull(String name) {
		if("".equals(name) || name == null) {
			return true;
		}
		return false;
	}
	
	/**
     * 使用指定日期格式解析日期字符串
     *
     * @param dateStr
     *            日期字符串
     * @param dateFormat
     *            日期格式，SimpleDateFormat能够识别的格式
     * @return 成功返回Date，失败返回null
     */
    public static Date StringToDateInFormat(String dateStr, String dateFormat) {
    	SimpleDateFormat fmt = new SimpleDateFormat(dateFormat);
        try {
            return fmt.parse(dateStr);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

	
}
