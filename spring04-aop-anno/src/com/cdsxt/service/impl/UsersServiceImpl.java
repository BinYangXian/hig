package com.cdsxt.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdsxt.dao.UsersDao;
import com.cdsxt.service.UsersService;

@Service
public class UsersServiceImpl implements UsersService {

	@Autowired
	private UsersDao usersDao;
	
	@Override
	public void delete() {
		System.out.println("UsersServiceImpl.delete()");
		this.usersDao.delete();
	}

	@Override
	public void save() {
		System.out.println("UsersServiceImpl.save()");
		this.usersDao.save();
	}

	public UsersDao getUsersDao() {
		return usersDao;
	}

	public void setUsersDao(UsersDao usersDao) {
		this.usersDao = usersDao;
	}
}
