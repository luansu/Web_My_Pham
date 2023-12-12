package orishop.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import orishop.models.*;
import orishop.services.*;

public class OrderDAOImpl implements IOrderDAO{
	ICustomerService cusService = new CustomerServiceImp();
	ICartService cartService = new CartServiceImpl();
	IEmployeeService empService = new EmployeeServiceImp();
	IProductService proService = new ProductServiceImp();
	
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	@Override
	public List<OrdersModels> findAllOrders() {
		List<OrdersModels> listOrder = new ArrayList<OrdersModels>();
		String sql = "SELECT * FROM ORDERS";
		try {
			conn = DBConnectionSQLServer.getConnectionW();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				OrdersModels orders = new OrdersModels();
				orders.setOrderID(rs.getInt("orderId"));
				orders.setOrderValue(rs.getFloat("orderValue"));
				orders.setOrderDate(rs.getDate("orderDate"));
				orders.setCartID(rs.getInt("cartId"));
				orders.setCustomerID(rs.getInt("customerId"));
				orders.setPaymentStatus(rs.getString("paymentStatus"));
				orders.setOrderStatus(rs.getString("orderStatus"));
				orders.setPaymentMethod(rs.getString("paymentMethod"));
				orders.setDeliveryMethod(rs.getString("deliveryMethod"));
				orders.setEmployeeId(rs.getInt("employeeId"));
				orders.setCustomer(cusService.findOne(orders.getCustomerID()));
				orders.setCart(cartService.findCartByCartID(orders.getCartID()));
				orders.setShipper(empService.findShipper(orders.getEmployeeId()));
				orders.setOrderItems(getOrderItems(orders.getOrderID()));
				listOrder.add(orders);
			}
			conn.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return listOrder;
	}

	@Override
	public void createOrder(OrdersModels model,int customerId, double totalPrice, List<CartItemModels> cartItems) {
				
		String sqlOrder = "INSERT INTO orders (orderValue, orderDate,cartId,customerId,paymentStatus,orderStatus,paymentMethod,deliveryMethod,employeeId) VALUES (?, getdate(), ?, ?, ?, ?, ?, ?, ?)";
		String sqlOrderDetail = "INSERT INTO order_item (productId, orderId, quantity, totalPrice) VALUES (?, ?, ?, ?)";
		try {

			new DBConnectionSQLServer();
			Connection conn = DBConnectionSQLServer.getConnectionW(); //ket noi CSDL
			PreparedStatement psOrder = conn.prepareStatement(sqlOrder); //ném câu lệnh sql
			PreparedStatement psOrderDetail = conn.prepareStatement(sqlOrderDetail);
			//Insert into order table		
			psOrder.setDouble(1, totalPrice);
			psOrder.setInt(2, model.getCart().getCartId());
            psOrder.setInt(3, customerId);
            psOrder.setString(4, "paying");
            psOrder.setString(5, "save");
            psOrder.setString(6, "qrcode");
            psOrder.setString(7, model.getDeliveryMethod());
            psOrder.setInt(8, model.getEmployeeId());
			psOrder.executeUpdate();
         // Insert into order_detail table
            for (CartItemModels cartItem : cartItems) {
                psOrderDetail.setInt(1, cartItem.getProductID());
                psOrderDetail.setInt(2, model.getOrderID());
                psOrderDetail.setInt(3, cartItem.getQuantity());
                psOrderDetail.setDouble(4, cartItem.getQuantity()*cartItem.getProduct().getPrice());
                psOrderDetail.executeUpdate();
            }
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<OrdersModels> findOrderByShipperId(int id) {
		String sql = "select * from orders where employeeId=? and orderStatus <> N'Chưa giao cho shipper'";
		List<OrdersModels> listorder = new ArrayList<OrdersModels>();
		try {
			new DBConnectionSQLServer();
			Connection conn = DBConnectionSQLServer.getConnectionW();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				OrdersModels model = new OrdersModels();
				model.setOrderID(rs.getInt("orderId"));
				model.setOrderValue(rs.getFloat("orderValue"));
				model.setOrderDate(rs.getDate("orderDate"));
				model.setCartID(rs.getInt("cartId"));
				model.setCustomerID(rs.getInt("customerId"));
				model.setPaymentStatus(rs.getString("paymentStatus"));
				model.setOrderStatus(rs.getString("orderStatus"));
				model.setPaymentMethod(rs.getString("paymentMethod"));
				model.setDeliveryMethod(rs.getString("deliveryMethod"));
				model.setEmployeeId(rs.getInt("employeeId"));
				model.setCustomer(cusService.findOne(model.getCustomerID()));
				model.setCart(cartService.findCartByCartID(model.getCartID()));
				model.setShipper(empService.findShipper(model.getEmployeeId()));
				model.setOrderItems(getOrderItems(model.getOrderID()));
				listorder.add(model);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listorder;
	}
	

	@Override
	public List<OrdersModels> findOrderByShipperIdAndDistributed(int id) {
		String sql = "select * from orders where employeeId=? and orderStatus = 'Distributed'";
		List<OrdersModels> listorder = new ArrayList<OrdersModels>();
		try {
			new DBConnectionSQLServer();
			Connection conn = DBConnectionSQLServer.getConnectionW();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				OrdersModels model = new OrdersModels();
				model.setOrderID(rs.getInt("orderId"));
				model.setOrderValue(rs.getFloat("orderValue"));
				model.setOrderDate(rs.getDate("orderDate"));
				model.setCartID(rs.getInt("cartId"));
				model.setCustomerID(rs.getInt("customerId"));
				model.setPaymentStatus(rs.getString("paymentStatus"));
				model.setOrderStatus(rs.getString("orderStatus"));
				model.setPaymentMethod(rs.getString("paymentMethod"));
				model.setDeliveryMethod(rs.getString("deliveryMethod"));
				model.setEmployeeId(rs.getInt("employeeId"));
				model.setCustomer(cusService.findOne(model.getCustomerID()));
				model.setCart(cartService.findCartByCartID(model.getCartID()));
				model.setShipper(empService.findShipper(model.getEmployeeId()));
				model.setOrderItems(getOrderItems(model.getOrderID()));
				listorder.add(model);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listorder;
	}
	
	@Override
	public List<OrdersModels> countOrderByShipperId(int employeeID) {
		String sql = "select employeeId, count(*) as count from ORDERS group by employeeId";
		List<OrdersModels> list = new ArrayList<OrdersModels>();
		try {
			new DBConnectionSQLServer();
			Connection conn = DBConnectionSQLServer.getConnectionW();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				list.add(new OrdersModels(rs.getInt(1), rs.getInt(2)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public double totalPriceProductSell() {
		String sql = "select sum(totalPrice) as erning from ORDER_ITEM";
		try {
			new DBConnectionSQLServer();
			Connection conn = DBConnectionSQLServer.getConnectionW();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				return rs.getDouble("erning");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0.0;
	}

	@Override
	public List<OrdersItemModels> getOrderItems(int id) {
		String sql = "select * from ORDER_ITEM where orderId=?";
		List<OrdersItemModels> orderItems = new ArrayList<OrdersItemModels>();
		try {
			new DBConnectionSQLServer();
			Connection conn = DBConnectionSQLServer.getConnectionW();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				OrdersItemModels model = new OrdersItemModels();
				model.setOrderId(rs.getInt("orderId"));
				model.setProductId(rs.getInt("productId"));
				model.setQuantity(rs.getInt("quantity"));
				model.setTotalPrice(rs.getFloat("totalPrice"));
				model.setProduct(proService.findOne(model.getProductId()));
				orderItems.add(model);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return orderItems;
	}

	@Override
	public List<OrdersModels> canceledOrder(int id) {
		String sql = "select * from ORDERS where customerId = ? and orderStatus = N'Đã hủy'";
		List<OrdersModels> listorder = new ArrayList<OrdersModels>();
		try {
			new DBConnectionSQLServer();
			Connection conn = DBConnectionSQLServer.getConnectionW();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				OrdersModels model = new OrdersModels();
				model.setOrderID(rs.getInt("orderId"));
				model.setOrderValue(rs.getFloat("orderValue"));
				model.setOrderDate(rs.getDate("orderDate"));
				model.setCartID(rs.getInt("cartId"));
				model.setCustomerID(rs.getInt("customerId"));
				model.setPaymentStatus(rs.getString("paymentStatus"));
				model.setOrderStatus(rs.getString("orderStatus"));
				model.setPaymentMethod(rs.getString("paymentMethod"));
				model.setDeliveryMethod(rs.getString("deliveryMethod"));
				model.setEmployeeId(rs.getInt("employeeId"));
				
				listorder.add(model);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listorder;
	}

	@Override
	public long totalRevenueByMonth(int month) {
		String sql = "select sum(orderValue) from ORDERS where MONTH(orderDate) = ?";
		try {
			new DBConnectionSQLServer();
			Connection conn = DBConnectionSQLServer.getConnectionW();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, month);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				long total = rs.getLong(1);
				
				return total;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	

	@Override
	public long totalRevenueByYear(int year) {
		String sql = "select sum(orderValue) from ORDERS where YEAR(orderDate) = ?";
		try {
			new DBConnectionSQLServer();
			Connection conn = DBConnectionSQLServer.getConnectionW();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, year);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				long total = rs.getLong(1);
				
				return total;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public static void main(String[] args) {
		OrderDAOImpl d = new OrderDAOImpl();
		long s = d.totalRevenueByYear(2023);
		System.out.println(s);
	}
}