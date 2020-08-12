package com.we.util;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

import java.io.IOException;
import java.util.Random;


public class SmsSender {
    private static String number;

    public static String getNumber() {
        return number;
    }

    public static void clearNumber(){
        number = null;
    }

    public static String send(String phone){
        number = getNum();
        HttpClient client = new HttpClient();
        PostMethod post = new PostMethod("http://gbk.api.smschinese.cn");
        post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");//在头文件中设置转码
        NameValuePair[] data ={ new NameValuePair("Uid", "keaixiong"),new NameValuePair("Key", "d41d8cd98f00b204e980"),new NameValuePair("smsMob",phone),new NameValuePair("smsText","验证码："+number)};
        post.setRequestBody(data);
        try {
            client.executeMethod(post);
            Header[] headers = post.getResponseHeaders();
            int statusCode = post.getStatusCode();
            System.out.println("statusCode:"+statusCode);
            for(Header h : headers)
            {
                System.out.println(h.toString());
            }
            String result = new String(post.getResponseBodyAsString().getBytes("gbk"));
            System.out.println(result); //打印返回消息状态
        } catch (IOException e) {
            e.printStackTrace();
        }
        post.releaseConnection();
        return number;
    }
    private static String getNum(){
        String number ="";
        while(number.length()<6){
            Random r = new Random();
            int n = r.nextInt(10);//得到0~9之间的随机数
            number+=n;
        }
        return number;
    }
}
