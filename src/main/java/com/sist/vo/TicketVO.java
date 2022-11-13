package com.sist.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class TicketVO {
	private int ticketid;
	private int cateid;
	private String placeid;
	private String ticketName;
	private int price;
	private Date ticket_date;
	private String content;
	private String img;
	private String loc;
}
