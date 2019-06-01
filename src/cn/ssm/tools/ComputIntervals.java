package cn.ssm.tools;

import java.util.Calendar;
import java.util.Date;

public class ComputIntervals {
	//判断时间是否在同一个小时内
	public boolean isInSameIntervals(Date datenew,Date dateBefore) {
		Calendar calnow=Calendar.getInstance();  
		calnow.setTime(datenew);  
	    Calendar calbefore=Calendar.getInstance();  
	    calnow.setTime(dateBefore);  
	    if (calbefore.get(Calendar.YEAR)==calnow.get(Calendar.YEAR)) {
            //同一天
            if(calbefore.get(Calendar.DAY_OF_YEAR)==calnow.get(Calendar.DAY_OF_YEAR)){
                int currentMinute = (calnow.get(Calendar.HOUR_OF_DAY) - calbefore.get(Calendar.HOUR_OF_DAY)) * 60 + calnow.get(Calendar.MINUTE);
                if((currentMinute - calbefore.get(Calendar.MINUTE)) < 60) {
                    return true;
                }
            }
        }
        return false;
    }
}
