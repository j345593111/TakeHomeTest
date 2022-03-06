import java.util.*;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello Word!");
        Solution solution = new Solution();
        System.out.println(solution.myAtoi("123"));
        System.out.println(solution.myAtoi("123 with word"));
    }
}

class Solution {
    public int myAtoi(String s){
        long num = 0;
        int sign = 1;
        boolean seenSign = false;
        boolean seenDigit = false;
        for(int i = 0; i < s.length(); i++){
            char c = s.charAt(i);
            if(Character.isDigit(c)){
                seenDigit = true;
                num = num*10+c-'0';
                if(sign == 1 && num >= Integer.MAX_VALUE)
                    return Integer.MAX_VALUE;
                if(sign == -1 && num*-1 <= Integer.MIN_VALUE)
                    return Integer.MIN_VALUE;
            }
            else if(c == '+' || c == '-'){
                if(seenSign || seenDigit)
                    break;
                sign = c == '+' ? 1 : -1;
                seenSign = true;
            }
            //cotinue only for leading space
            else if(c == ' ' && !seenDigit && !seenSign)
                continue;
            else
                break;
        }
        return (int)(num*sign);
    }
    
}
