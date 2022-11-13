package com.sist.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class CustomerVO {
	private String custid;
	private int cateid;
	private String pwd;
	private String name;
	private Date birth;
	private String phone;
	private String gender;
	private String favor1;
}
