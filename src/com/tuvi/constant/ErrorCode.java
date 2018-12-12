package com.tuvi.constant;

public enum ErrorCode {
	OK(0),
	EXCEPTION(-1),
	INVALID_INPUT(1),
	ERROR_OCCUR(2);
	
	private int code;
	
	ErrorCode(int code) {
        this.code = code;
    }

    public int code() {
        return code;
    }
}
