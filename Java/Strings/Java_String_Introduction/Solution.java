import java.io.*;
import java.util.*;

public class Solution {

    public static String capitalize(String str) {
        str = str.substring(0, 1).toUpperCase() + str.substring(1);
        return str;
    }
    
    public static void main(String[] args) {
        
        Scanner sc=new Scanner(System.in);
        String A = sc.next();
        String B = sc.next();
        //The first line.
        int len = A.length() + B.length();
        System.out.println(len);
        // The second line.
        if(A.compareTo(B) > 0)
            System.out.println("Yes");
        else
            System.out.println("No");
        //The third line.
        A = capitalize(A);
        B = capitalize(B);
        System.out.println(A + " " + B);
        
    }
}
