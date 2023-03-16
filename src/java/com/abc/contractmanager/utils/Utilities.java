/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.abc.contractmanager.utils;

import java.sql.Date;

/**
 *
 * @author mical
 */
public class Utilities {
    public static Date convert(String date) {
        int[] a = new int[3];
        String[] words = date.split("-");
        int count = 0;
        for (String word : words) {
            a[count] = Integer.parseInt(word);
            count++;
        }
        Date date1 = new Date(a[0] - 1900, a[1] - 1, a[2]);
        return date1;
    }
    
    public static Date getDate() {
        int[] a = new int[3];
        Date date = new Date(System.currentTimeMillis());
        String s1 = date.toString();
        String[] words = s1.split("-");
        int count = 0;
        for (String word : words) {
            a[count] = Integer.parseInt(word);
            count++;
        }
        date = new Date(a[0] - 1900, a[1] - 1, a[2]);
        return date;
    }

    public static Date getDate(int[] a) {
        a[0] -= 1900;
        a[1] -= 1;
        Date date = new Date(a[0], a[1], a[2]);
        System.out.println(date);
        return date;
    }

    public static int getYear(String date) {
        String[] words = date.split("-");
        return Integer.parseInt(words[0]);
    }
    
    public static int getMonth(String date) {
        String[] words = date.split("-");
        return Integer.parseInt(words[1]);
    }
    
    public static int getDay(String date) {
        String[] words = date.split("-");
        return Integer.parseInt(words[2]);
    }
    
    public static void main(String[] args) {
        System.out.println(convert("2022-11-12").toString());
    }
}
