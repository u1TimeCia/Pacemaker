package utils;

import org.apache.commons.beanutils.BeanUtils;

import java.math.BigDecimal;
import java.util.Map;

public class WebUtils {
    /**
     * User BeanUtils tool to inject parameters to object
     * req.getParameterMap(): use setXXX in class to set the parameter and inject to object
     * @param value
	 * @param bean
     * @return
     * @author Haoran Qi
     * @date
     */
    public static <T> T copyParamToBean(Map value, T bean){
        try {
            BeanUtils.populate(bean, value);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bean;
    }

    public static Integer parseInt(String strInt,int defaultValue) {
        try {
            return Integer.parseInt(strInt);
        } catch (Exception e) {
//            e.printStackTrace();
        }
        return defaultValue;
    }

    public static BigDecimal findNumStr(String str){
        if(str == null ){
            return null;
        }
        char[] charArr = str.toCharArray();
        String num="";
        int temp;
        for(int i=0;i<charArr.length;i++){
            temp = charArr[i]-'0';
            if((temp>=0 && temp<=9) || charArr[i] == '.'){
                num+=charArr[i];
            }
        }
        if(num == ""){
            return new BigDecimal(-1);
        }
        return new BigDecimal(num);
    }
}
