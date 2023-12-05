package orishop.services;

import java.util.List;


import orishop.DAO.IAccountDAO;
import orishop.DAO.Impl.AccountDAOImpl;
import orishop.models.AccountModels;

public class AccountServiceImpl implements IAccountService{
	IAccountDAO userDAO = new AccountDAOImpl();
	
	
	@Override
	public List<AccountModels> findAll() {
		return userDAO.findAll();
	}

	@Override
	public AccountModels findOne(int id) {
		return userDAO.findOne(id);
	}

	@Override
	public AccountModels findOne(String username) {
		return userDAO.findOne(username);
	}
	
	@Override
	public void insert(AccountModels model) {
		userDAO.insert(model);
	}

	@Override
	public void insertregister(AccountModels model) {
		userDAO.insertregister(model);
	}

	@Override
	public void update(AccountModels model) {
		AccountModels oldUser = userDAO.findOne(model.getAccountID());
		oldUser.setMail(model.getMail());
		oldUser.setFullname(model.getFullname());
		oldUser.setUsername(model.getUsername());
		oldUser.setPassword(model.getPassword());
		oldUser.setRoleID(model.getRoleID());
		oldUser.setStatus(model.getStatus());
		oldUser.setCode(model.getCode());

		userDAO.update(oldUser);
	}

	@Override
	public void updatestatus(AccountModels model) {
		userDAO.updatestatus(model);
	}

	@Override
	public boolean register(String username, String password, String fullname, String mail, String code) {
		if (userDAO.checkExistEmail(mail))
			return false;
		if (userDAO.checkExistUsername(username))
			return false;
		userDAO.insertregister(new AccountModels(username,password, fullname, mail, 1, 0, code));
		return true;
	}

	@Override
	public AccountModels login(String username, String password) {
		AccountModels user = this.findOne(username);
		if (user!=null && password.equals(user.getPassword())) {
			return user;
		}
		return null;
	}

	@Override
	public boolean checkExistUsername(String username) {
		return userDAO.checkExistUsername(username);
	}

	@Override
	public boolean checkExistEmail(String mail) {
		return userDAO.checkExistEmail(mail);
	}

	@Override
	public void delete(int id) {
		userDAO.delete(id);
	}
}
