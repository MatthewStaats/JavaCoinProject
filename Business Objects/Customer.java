package Business;

import java.sql.*;

public class Customer {

/********************************************************************
 * All the attributes used for the Customer Class
 ********************************************************************/
    private String custID;
    private String password;
    private String firstName;
    private String lastName;
    private String email;
    private String phone;
    private String street;
    private String city;
    private String state;
    private String zip;

/********************************************************************
 * boolean cust is used to determine if the user in the session shopping is a Customer or Non Customer
 ********************************************************************/
    public boolean cust = false;

/********************************************************************
 * Default empty Customer Constructor
 ********************************************************************/
    
    public Customer() {
        custID = "";
        password = "";
        firstName = "";
        lastName = "";
        email = "";
        phone = "";
        street = "";
        city = "";
        state = "";
        zip = "";
    }

/********************************************************************
 * Customer Constructor passing in all values
     * @param custID
     * @param password
     * @param firstName
     * @param lastName
     * @param email
     * @param phone
     * @param street
     * @param city
     * @param state
     * @param zip
 ********************************************************************/
    
    public Customer(String custID, String password, String firstName, String lastName, String email,
            String phone, String street, String city, String state, String zip) {

        this.custID = custID;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.street = street;
        this.city = city;
        this.state = state;
        this.zip = zip;
    }

    public void setCustID(String custID) {
        this.custID = custID;
    }

    public String getCustID() {
        return custID;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
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

    public void setCust(boolean cust) {
        this.cust = cust;
    }

    public boolean getCust() {
        return cust;
    }

/********************************************************************
 * selectDB() used to select the right Customer record from the DataBase
 * Once the Customer is found use ResultSet to collect their information to store and display
 * @param id used to know which record to select
 ********************************************************************/
    
    public void selectDB(String id) {
        custID = "";

        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            // My connection to connect to DB, still need to figure out how to do in GitHub
            try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb")) {
                Statement statement = connect.createStatement();

                String sql;
                sql = "SELECT * FROM Customer WHERE CustId = '" + id + "'";
                //System.out.println(sql);

                ResultSet result = statement.executeQuery(sql);

                result.next();
                custID = result.getString(1);
                password = result.getString(2);
                firstName = result.getString(3);
                lastName = result.getString(4);
                email = result.getString(5);
                phone = result.getString(6);
                street = result.getString(7);
                city = result.getString(8);
                state = result.getString(9);
                zip = result.getString(10);

            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }

    }
    
/********************************************************************
 * insertDB() used to create and insert a new Customer record into the DataBase
 * passing in these fields for the new Customer record field values
     * @param custID
     * @param password
     * @param firstName
     * @param lastName
     * @param email
     * @param phone
     * @param street
     * @param city
     * @param state
     * @param zip
 ********************************************************************/
    public void insertDB(String custID, String password, String firstName, String lastName, String email, String phone, String street, String city, String state, String zip) {
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");

            try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb")) {

                String sql;
                sql = "insert into Customer values('"+custID+"', '" + password + "', '" + firstName + "', '" + lastName + "', '" + email + "', '" + phone + "', '" + street + "','" + city + "','" + state + "','" + zip + "')";
                PreparedStatement prepstate = connect.prepareStatement(sql);
                prepstate.execute();
            }
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println("Error " + ex);
        }
    }

/********************************************************************
 * updateDB() used to update the selected Customer record in the DataBase
 ********************************************************************/

    public void updateDB() {
        try {

            Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb");
            String sql;
            sql = "UPDATE Customer SET CustId = '" + custID + "', CustPassword = '" + password + "', CustFirstName = '" + firstName + "', CustLastName = '" + lastName + "', CustEmail = '" + email + "', CustPhone = '" + phone + "', CustStreet = '" + street + "', CustCity = '" + city + "', CustState = '" + state + "', CustZip = '" + zip + "' WHERE CustId = '" + custID + "'";
            PreparedStatement pstmt = connect.prepareStatement(sql);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

/********************************************************************
 * deleteDB() used to delete the selected Customer record in the DataBase
 ********************************************************************/
    
    public void deleteDB() {
        try {

            Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb");
            Statement statement = connect.createStatement();
            String sql;
            sql = "DELETE FROM Customer WHERE CustId = '" + custID + "'";
            statement.execute(sql);

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }

/********************************************************************
 * display() used to test and display the Customer Record that is being pulled from the DB
 ********************************************************************/
    
    public void display() {
        System.out.println("Customer ID: " + custID);
        System.out.println("Customer Password: " + password);
        System.out.println("First Name " + firstName);
        System.out.println("Last Name: " + lastName);
        System.out.println("Email: " + email);
        System.out.println("Phone: " + phone);
        System.out.println("Street: " + street);
        System.out.println("City: " + city);
        System.out.println("State: " + state);
        System.out.println("Zip: " + zip + "\n");

    }
    
/********************************************************************
 * main() used to test DB methods in Customer Class
     * @param args
 ********************************************************************/    

    public static void main(String args[]) {
        Customer c1 = new Customer();
        c1.selectDB("1");
        c1.display();    

    }

}
