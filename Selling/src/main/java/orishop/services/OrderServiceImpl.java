package orishop.services;

import java.util.ArrayList;
import java.util.List;

import orishop.DAO.IOrderDAO;
import orishop.DAO.OrderDAOImpl;
import orishop.models.CartItemModels;
import orishop.models.OrdersItemModels;
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

	@Override
	public List<OrdersModels> getOrderByOrderStatus(int shipperId, String orderStatus) {
		List<OrdersModels> listOrder = orderDAO.findAllOrders();
		List<OrdersModels> result = new ArrayList<OrdersModels>();
		for (OrdersModels order: listOrder) {
			if(order.getOrderStatus().contains(orderStatus) & order.getEmployeeId() == shipperId) {
				result.add(order);
			}
		}
		return result;
	}
	
	@Override
	public List<OrdersModels> getOrderByPaymentStatus(int shipperId, String paymentStatus) {
		List<OrdersModels> listOrder = orderDAO.findAllOrders();
		List<OrdersModels> result = new ArrayList<OrdersModels>();
		for (OrdersModels order: listOrder) {
			if(order.getPaymentStatus().contains(paymentStatus) & order.getEmployeeId() == shipperId) {
				result.add(order);
			}
		}
		return result;
	}

	@Override
	public double totalPriceProductSell() {
		return orderDAO.totalPriceProductSell();
	}

	@Override
	public List<OrdersItemModels> getOrderItems(int id) {
		return orderDAO.getOrderItems(id);
	}

	@Override
	public int countOrderRequest() {
		List<OrdersModels> listOrder = orderDAO.findAllOrders();
		
		listOrder.removeIf(order -> !"Save".equals(order.getOrderStatus()));
		return listOrder.size();
	}
}
