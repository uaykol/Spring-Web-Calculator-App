package com.example.controller;

import org.springframework.stereotype.Component;

@Component
public class Operation {
	
	int a;
	int b;
	char op;
	String result;
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	public int getA() {
		return a;
	}
	public void setA(int a) {
		this.a = a;
	}
	
	public int getB() {
		return b;
	}
	public void setB(int b) {
		this.b = b;
	}
	
	public char getOp() {
		return op;
	}
	public void setOp(char op) {
		this.op = op;
	}

}
