package beans;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Author 申宇强
 * @Date 2023/5/9 16:13
 */
public class UtilBean {
    public static boolean check(User u) {
        return u.getAge() >= 18;
    }

    public static boolean checkDate(String s) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date d = sdf.parse(s);
            return true;
        } catch (ParseException e) {
            return false;
        }
    }

    public static int getAge(String s) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date d = sdf.parse(s);
            Date n = new Date();
            return n.getYear() - d.getYear();
        } catch (ParseException e) {
            return 0;
        }
    }
}

