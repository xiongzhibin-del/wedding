package com.we.util;

public class Random {
    public static long getRandom(){
        return setRandom();
    }


    private static long setRandom(){
        String number ="";
        while(number.length()<14){
            java.util.Random r = new java.util.Random();
            int n = r.nextInt(10);//得到0~9之间的随机数
            number+=n;
        }
        return Long.parseLong(number);
    }
}
