package com.we.util;

import java.util.Random;

public class Rename {
    public static String getName(){
        return name();
    }
    private static String name(){
        String number ="";
        while(number.length()<6){
            Random r = new Random();
            char n =(char) (48+r.nextInt(74));//得到0~9之间的随机数
            number+=n;
        }
        return number;
    }
}
