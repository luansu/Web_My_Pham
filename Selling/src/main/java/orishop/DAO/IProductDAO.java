package orishop.DAO;
import java.lang.String;
public interface IProductDAO {
	float totalRevenue();
	float totalRevenue(String productID);
}
