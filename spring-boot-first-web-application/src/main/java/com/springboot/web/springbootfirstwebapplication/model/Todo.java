package com.springboot.web.springbootfirstwebapplication.model;

import java.util.Date;

import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class Todo {
	
	
	private int id;
	private String user;
	
	@Size(min=10, message="Enter atleast 10 characters.")
	private String desc;
	private Date targetDate;
	private boolean done;
}
