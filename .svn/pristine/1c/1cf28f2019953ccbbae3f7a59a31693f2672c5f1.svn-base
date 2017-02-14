package com.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.PersonMapper;
import com.pojo.Person;
import com.service.PersonService;


@Service("personService")
public class PersonServiceImpl implements PersonService {
	
	@Autowired
	public PersonMapper personMapper;
	
	@Override
	public Person selectByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return personMapper.selectByPrimaryKey(id);
	}

}
