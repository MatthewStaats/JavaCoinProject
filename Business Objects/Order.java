package Business;
import java.sql.*;

public class Order {
    
/********************************************************************
 * All the attributes used for the Order Class
 ********************************************************************/
    
    private String orderNum;
    private String amount;
    private String status;
    private String custID;
    private String approverID;
    private String dateOfApproval;
    private String street;
    private String city;
    private String state;
    private String zip;
        
/********************************************************************
 * new OrderList that used to get all Open, Shipped, and Customer Orders from the DB
 ********************************************************************/
    public OrderList aList = new OrderList();


/********************************************************************
 * Default empty Order Constructor
 ********************************************************************/
    public Order() {
        orderNum = "";
    amount = "";
    status = "";
    custID = "";
    approverID = "";
    dateOfApproval = "";
    street = "";
    city = "";
    state = "";
    zip = "";
    }

/********************************************************************
 * Order Constructor passing in all values
     * @param orderNum    
     * @param amount    
     * @param status    
     * @param custID    
     * @param approverID    
     * @param dateOfApproval    
     * @param street    
     * @param city    
     * @param state    
     * @param zip    
 ********************************************************************/
    
    public Order(String orderNum, String amount, String status, String custID, String approverID,
                 String dateOfApproval, String street, String city, String state, String zip) {

    this.orderNum = orderNum;
        this.amount = amount;
    this.status = status;
        this.custID = custID;
    this.approverID = approverID;
    this.dateOfApproval = dateOfApproval;
        this.street = street;
    this.city = city;
        this.state = state;
    this.zip = zip;
    }

    public void setOrderNum(String orderNum) {
    this.orderNum = orderNum;
    }

    public String getOrderNum() {
    return orderNum;
    }

    public void setAmount(String amount) {
    this.amount = amount;
    }

    public String getAmount() {
    return amount;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setCustID(String custID) {
        this.custID = custID;
    }

    public String getCustID() {
        return custID;
    }

    public void setApproverID(String approverID) {
        this.approverID = approverID;
    }

    public String getApproverID() {
        return approverID;
    }

    public void setDateOfApproval(String dateOfApproval) {
        this.dateOfApproval= dateOfApproval;
    }

    public String getDateOfApproval() {
        return dateOfApproval;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getStreet() {
        return street;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getState() {
        return state;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getZip() {
        return zip;
    }

/********************************************************************
 * selectDB() used to select the right Order record from the DataBase
 * This will select all Open Orders in the DataBase and add them to it's OrderList
 * Processor will be allowed to view these Orders in the OpenOrderDisplay jsp
 * They can then update this list, so they can process the orders
 ********************************************************************/
    public void selectDB() {
        
            try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            // My connection to connect to DB. You will need to do your pathing here below
                try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb")) {
                    Statement statement = connect.createStatement();
                
                    String sql;
                    sql = "SELECT * FROM Order WHERE Status = 'Open'";
                    //System.out.println(sql);
                
                    ResultSet result = statement.executeQuery(sql);
                    
                    while (result.next()) {
                    orderNum = result.getString(1);
                    amount = result.getString(2);
                    status = result.getString(3);
                    custID = result.getString(4);
                    approverID = result.getString(5);
                    dateOfApproval = result.getString(6);   
                    street = result.getString(7);
                    city = result.getString(8);
                    state = result.getString(9);
                    zip = result.getString(10);
                    Order o2 = new Order(orderNum,amount,status,custID,approverID,dateOfApproval,street,city,state,zip);
                    aList.addOrder(o2);
                   
                }
            }       
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }
        
/********************************************************************
 * ShippedOrders() used to select the right Order record from the DataBase
 * This will select all Shipped Orders in the DataBase and add them to it's OrderList
 * Processor will be allowed to view these Orders in the shippedOrderDisplay jsp
 ********************************************************************/
        
    public void ShippedOrders() {
        
            try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            // My connection to connect to DB. You will need to add your pathing below
                try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb")) {
                    Statement statement = connect.createStatement();
                
                    String sql;
                    sql = "SELECT * FROM Order WHERE Status = 'Shipped'";
                    //System.out.println(sql);
                
                    ResultSet result = statement.executeQuery(sql);
                    
                    while (result.next()) {
                    orderNum = result.getString(1);
                    amount = result.getString(2);
                    status = result.getString(3);
                    custID = result.getString(4);
                    approverID = result.getString(5);
                    dateOfApproval = result.getString(6);   
                    street = result.getString(7);
                    city = result.getString(8);
                    state = result.getString(9);
                    zip = result.getString(10);
                    Order o2 = new Order(orderNum,amount,status,custID,approverID,dateOfApproval,street,city,state,zip);
                    aList.addOrder(o2);
                   
                }
            }       
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }
        
/********************************************************************
 * selectDB2() used to select the right Customer Order record from the DataBase
 * This will select all Orders from the Logged in Customer and add the Orders to it's OrderList
 * Customer will be allowed to view Orders, their status, and information here
     * @param id
 ********************************************************************/
        
    public void selectDB2(String id) {
        
            try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            // My connection to connect to DB, still need to figure out how to do in GitHub
                try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb")) {
                    Statement statement = connect.createStatement();
                
                    String sql;
                    sql = "SELECT * FROM Order WHERE CustId = '"+id+"'";
                    //System.out.println(sql);
                
                    ResultSet result = statement.executeQuery(sql);
                    
                    while (result.next()) { 
                        orderNum = result.getString(1);
                        amount = result.getString(2);
                        status = result.getString(3);
                        custID = result.getString(4);
                        approverID = result.getString(5);
                        dateOfApproval = result.getString(6);   
                        street = result.getString(7);
                        city = result.getString(8);
                        state = result.getString(9);
                        zip = result.getString(10);
                        Order o2 = new Order(orderNum,amount,status,custID,approverID,dateOfApproval,street,city,state,zip);
                        aList.addOrder(o2);
                    }
                }       
            } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }

/********************************************************************
 * insertDB() used to create and insert a new Order record into the DataBase
 * passing in these fields for the new Order record field values
     * @param orderNum 
     * @param amount 
     * @param status 
     * @param custID 
     * @param approverID 
     * @param dateOfApproval 
     * @param street 
     * @param city 
     * @param state 
     * @param zip 
 ********************************************************************/
    
    public void insertDB(int orderNum, String amount, String status, String custID, String approverID, String dateOfApproval, String street, String city, String state, String zip) {

        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
        
        try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb")) {
           
            String sql;
            sql = "insert into Order values(0,'"+amount+"', '"+status+"', '"+custID+"', '"+approverID+"', '"+dateOfApproval+"', '"+street+"','"+city+"','"+state+"','"+zip+"')";
            PreparedStatement prepstate = connect.prepareStatement(sql);
            prepstate.execute();
        }  
        } catch(SQLException | ClassNotFoundException ex) {
            System.out.println("Error " + ex);
        }
    }

/********************************************************************
 * updateDB() used to update the selected Order record in the DataBase
 ********************************************************************/
    public void updateDB() {
        try {
            
            Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb");
            String sql;
            sql = "UPDATE Order SET OrderNumber = '"+orderNum+"', Amount = '"+amount+"', Status = '"+status+"', CustId = '"+custID+"', ApproverId = '"+approverID+"', DateOfApproval = '"+dateOfApproval+"', Street = '"+street+"', City = '"+city+"', State = '"+state+"', Zip = '"+zip+"' WHERE OrderNumber = '"+orderNum+"'";
            PreparedStatement pstmt = connect.prepareStatement(sql);
            pstmt.executeUpdate();
        
        } catch(SQLException e) {
            System.out.println("Error: " + e);
        }
    }

/********************************************************************
 * deleteDB() used to delete the selected Order record in the DataBase
 * This method wasn't required for the project, but it's functionality that would be needed down the road
 ********************************************************************/
    public void deleteDB() {

    }
  
/********************************************************************
 * display() used to test and display the Order Record and it's OrderList that is being pulled from the DB
 ********************************************************************/

    public void display() {
        System.out.println("Order Number: " + orderNum);
        System.out.println("Amount Due: " + amount);
        System.out.println("Status " + status);
        System.out.println("Customer ID: " + custID);
        System.out.println("Approver ID: " + approverID);
        System.out.println("Date Approved: " + dateOfApproval);
        System.out.println("Street: " + street);
        System.out.println("City: " + city);
        System.out.println("State: " + state);
        System.out.println("Zip: " + zip + "\n");
        
        aList.displayList();

    }

/********************************************************************
 * main() used to test DB methods in Order Class
     * @param args
 ********************************************************************/  
    
    public static void main(String args[] ) {
        Order o1 = new Order();
        o1.selectDB2("3");
        o1.display();
    }

}
