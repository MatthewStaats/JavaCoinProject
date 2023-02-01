package Business;
import java.util.ArrayList;

public class OrderList {

    public int count;

    public ArrayList<Order> aList = new ArrayList<Order>();

/********************************************************************
 * addOrder(Order o1) used to add a new Order to the ArrayList aList
 * This will be used to View All Open, Shipped, and Customer Orders in the web Application
     * @param o1 used to add the new Order to the List and increase increment
 ********************************************************************/
        
    public void addOrder(Order o1) {
        aList.add(count,o1);
   count++;
    }

/********************************************************************
 * displayList() used to display the Order List for Processor's and Customer's
 ********************************************************************/
    public void displayList() {
   for (int x = 0; x < aList.size(); x++) {
            aList.get(x).display();
   }
    }

/********************************************************************
 * display() used to display the OrderList and test that it works
 ********************************************************************/
    public static void main(String args[]) {
        OrderList list = new OrderList();
   Order o1 = new Order("3", "500.00", "Open", "3013", "7222", "8/25/2021", "4th Street", "New York", "NY","10005" );
   Order o2 = new Order("4", "1000.00", "Shipped", "",  "7223", "8/20/2021", "554 Washinton Blvd", "Dallas", "GA", "30313");
        list.addOrder(o1);
        list.addOrder(o2);
   list.displayList();
   }
}