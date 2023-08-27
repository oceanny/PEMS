package com.spring.exception;

public class WithdrawIdException extends Exception {

	public WithdrawIdException() {
		super("탈퇴한 계정입니다.");
	}
}
