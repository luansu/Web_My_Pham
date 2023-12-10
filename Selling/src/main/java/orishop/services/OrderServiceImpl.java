package orishop.services;

import java.util.List;

import orishop.DAO.IOrderDAO;
import orishop.DAO.OrderDAOImpl;
import orishop.models.CartItemModels;
import orishop.models.OrdersModels;

public class OrderServiceImpl implements IOrderService{
	IOrderDAO orderDAO = new OrderDAOImpl();

	@Override
	public List<OrdersModels> findAllOrders() {
		
		return orderDAO.findAllOrders();
	}
	
	@Override
	public void createOrder(OrdersModels model, int customerId, double totalPrice, List<CartItemModels> cartItems) {
		
		orderDAO.createOrder(model, customerId, totalPrice, cartItems);
	}

	@Override
	public List<OrdersModels> findOrderByShipperId(int id) {
		
		return orderDAO.findOrderByShipperId(id);
	}

	@Override
	public List<OrdersModels> findOrderByShipperIdAndDistributed(int id) {
		
		return orderDAO.findOrderByShipperIdAndDistributed(id);
	}

	@Override
	public List<OrdersModels> countOrderByShipperId(int employeeID) {
		return orderDAO.countOrderByShipperId(employeeID);
	}
	


}
