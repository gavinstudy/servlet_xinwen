package com.dz.exception;

public class DataAccessException extends RuntimeException{
	private static final long serialVersionUID = 1L;

	
	public DataAccessException(){}
	public DataAccessException(String msg){
		super(msg);
	}
	public DataAccessException(String msg,Throwable th){
		super(msg,th);
	}
	public DataAccessException(Throwable th){
		super(th);
	}
	
	
}
