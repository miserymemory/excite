package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pojo.Person;
import com.service.PersonService;

@Controller
public class PersonController {
	@Autowired
	public PersonService personService;

	@RequestMapping("/selectByPrimaryKey")
	public @ResponseBody Person selectByPrimaryKey(int id,HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		Person person =personService.selectByPrimaryKey(id);
		String allRequest=person.toString();
		PrintWriter pw = response.getWriter();
		pw.write(allRequest);
		return null;
	}
}
