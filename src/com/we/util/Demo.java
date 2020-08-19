package com.we.util;

import org.junit.Test;

import java.util.UUID;

public class Demo {
    @Test
    public void run(){
        UUID id= UUID.randomUUID();//通过UUID类获取随机的UUID:UUID是基于当前时间、计数器（counter）和硬件标识（通常为无线网卡的MAC地址）等数据计算生成的唯一识别码
        System.out.println(id);
    }
}
