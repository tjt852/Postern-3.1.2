package com.tunnelworkshop.postern.control;

public class ClickResult {

    public enum State {
        NONE,
        SUCCESS,
        FAILURE,
    }

    State state = State.NONE;

    String referrer;

    String message;
}
