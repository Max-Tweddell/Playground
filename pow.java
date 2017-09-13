import java.math.BigDecimal;

public class pow {
    public static void main(String[] args) {
        BigDecimal thing =  BigDecimal.valueOf(Math.pow(4.0, Math.pow(4.0,Math.pow(4.0,1.0))));
           System.out.println(thing);
    }
}
