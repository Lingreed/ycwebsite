package com.mintmedical.ycwebsite.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mintmedical.ycwebsite.dao.ContactusMapper;
import com.mintmedical.ycwebsite.entity.Contactus;
import com.mintmedical.ycwebsite.model.MailModel;

@Service
public class SendMailService {
	
	@Autowired
	private ContactusMapper contactUsDao;
	
	public boolean add(MailModel model) {
		Contactus contactus = new Contactus();
		contactus.setName(model.getName());
		contactus.setEmail(model.getEmail());
		contactus.setText(model.getText());
		contactUsDao.insert(contactus);
		return true;
	}
}
