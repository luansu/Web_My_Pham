package orishop.services;

import java.util.List;

import orishop.models.CartItemModels;
import orishop.models.OrdersItemModels;
import orishop.models.OrdersModels;

public interface IOrderService {
	List<OrdersModels> findAllOrders();
	void createOrder(OrdersModels model, int customerId, double totalPrice, List<CartItemModels> cartItems);
	
	List<OrdersModels> findOrderByShipperId(int id);
	
	List<OrdersModels> findOrderByShipperIdAndDistributed(int id);
	
	List<OrdersModels> countOrderByShipperId(int employeeID);
	
	List<OrdersModels> getOrderByOrderStatus(int shipperId, String orderStatus);
	List<OrdersModels> getOrderByPaymentStatus(int shipperId, String paymentStatus);
	
	List<OrdersModels> canceledOrder(int id);

	double totalPriceProductSell();
	List<OrdersItemModels> getOrderItems(int id);
	
	int countOrderRequest();
	
	long totalRevenueByMonth(int month);
	
	long totalRevenueByYear(int year);
	
	int findLatestOrderId();
	List<OrdersModels> findAllOrderByUser(int customerId);
	List<OrdersModels> findAllOrderByUserAndOrderStatus(int customerId, String orderStatus);
}
