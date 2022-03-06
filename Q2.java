import java.util.*;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello Word!");
        Solution solution = new Solution();
        System.out.println(solution.helper("45222"));
        System.out.println(solution.helper("This Is A Test4me"));
        System.out.println(solution.helper("IAMGOOD"));
    }
}

class Solution {
    public boolean helper(String s){
        for(char c : s.toCharArray()){
            if(Character.isDigit(c))
                return true;
        }
        return false;
    }
}
