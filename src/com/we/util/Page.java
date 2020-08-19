package com.we.util;

public class Page {
    private static int pageNum;
    private static long total;

    private Page() { }

    public static int getPageNum() {
        return pageNum;
    }

    public static void setPageNum(int pageNum) {
        Page.pageNum = pageNum;
    }

    public static long getTotal() {
        return total;
    }

    public static void setTotal(long total) {
        Page.total = total;
    }
}
