package orishop.services;

import java.util.ArrayList;
import java.util.List;

import orishop.DAO.*;
import orishop.models.*;

public class CustomerServiceImp implements ICustomerService{
	ICustomerDAO cusDAO = new CustomerDAOImp();
	public List<CustomerModels> findAll() {
		return cusDAO.findAll();
	}

	@Override
	public List<CustomerModels> getListCustomerByPage(List<CustomerModels> listCus, int start, int end){
		List<CustomerModels> listCusPage = new ArrayList<>();
		
		for (int i = start; i < end; i++) {
			listCusPage.add(listCus.get(i));
		}
		return listCusPage;
	}
	
	public CustomerModels findOne(int id) {
		return cusDAO.findOne(id);
	}
}
