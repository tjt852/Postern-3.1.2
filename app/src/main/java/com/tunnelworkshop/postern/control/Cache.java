package com.tunnelworkshop.postern.control;

public class Cache {

    public static PhoneData PHONE = new PhoneData();


    public static class PhoneData {

        public State state;

        public String data;

        public enum State {
            //待接收
            READY,
            //无状态
            NONE,
        }
    }
}
