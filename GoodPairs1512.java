import java.util.*;

class GoodPairs1512 {
    public static int numIdenticalPairs(int[] nums) {
        int result = 0;
        for( int i = 0; i<nums.length; i++ ){
            for( int j = i+1; j<nums.length; j++ )
                result = nums[i]==nums[j] ? result+=1 : result;
        }
        return result;
    }
    public static void main(String[] args) {
        int[] test = {1,2,3,1,1,3};
        System.out.println(numIdenticalPairs(test));
    }
}