package Business;
import java.sql.*;

public class Processor {

/********************************************************************
 * All the attributes used for the Processor Class
 ********************************************************************/
    
    private String procID;
    private String password;
    private String firstName;
    private String lastName;
    private String email;
    private String address;
    private String phone;

/********************************************************************
 * Default empty Processor Constructor
 ********************************************************************/
        
    public Processor() {
        procID = "";
        password = "";
        firstName = "";
        lastName = "";
        email = "";
        address = "";
        phone = "";

    }

/********************************************************************
 * Processor Constructor passing in all values
     * @param procID
     * @param password
     * @param firstName
     * @param lastName
     * @param email
     * @param address
     * @param phone
 ********************************************************************/
        
    public Processor(String procID, String password, String firstName, String lastName, String email, String address, String phone) {
        this.procID = procID;
        this.password = password;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.address = address;
        this.phone = phone;
    }

    public void setProcID(String procID) {
        this.procID = procID;
    }

    public String getProcID() {
        return procID;
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

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }

/********************************************************************
 * selectDB() used to select the right Processor record from the DataBase
 * Once the Processor is found, it uses ResultSet to collect their information to store and display
 * @param id used to know which record to select
 ********************************************************************/

     public void selectDB(String id) {
        procID = "";
        
        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
            // My connection to connect to DB, still need to figure out how to do in GitHub
            try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb")) {
                Statement statement = connect.createStatement();
                
                String sql;
                sql = "SELECT * FROM Processor WHERE ProcID = '"+id+"'";
                //System.out.println(sql);
                
                ResultSet result = statement.executeQuery(sql);
                
                result.next();
                procID = result.getString(1);
                password = result.getString(2);
                firstName = result.getString(3);
                lastName = result.getString(4);
                email = result.getString(5);
                phone = result.getString(6);   
                address = result.getString(7);
            }
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }
    }

/********************************************************************
 * insertDB() used to create and insert a new Processor record into the DataBase
 * passing in these fields for the new Processor record field values
     * @param procID
     * @param password
     * @param firstName
     * @param lastName
     * @param email
     * @param address
     * @param phone
 ********************************************************************/
     
    public void insertDB(String procID, String password, String firstName, String lastName, String email, String address, String phone) {
        try {
            
            Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb");
            String sql;
            sql = "insert into Processor values('"+procID+"', '"+password+"', '"+firstName+"', '"+lastName+"', '"+email+"', '"+address+"', '"+phone+"')";
            PreparedStatement prepstate = connect.prepareStatement(sql);
            prepstate.execute();
            
        } catch(SQLException ex) {
            System.out.println("Error " + ex);
        }
    }

/********************************************************************
 * updateDB() used to update the selected Processor record in the DataBase
 ********************************************************************/
    
    public void updateDB() {
        try {
            Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb");
            String sql;
            sql = "UPDATE Processor SET ProcID = '"+procID+"', Password = '"+password+"', FirstName = '"+firstName+"', LastName = '"+lastName+"', Email = '"+email+"', Address = '"+address+"', Phone = '"+phone+"' WHERE ProcID = '"+procID+"'";
            PreparedStatement pstmt = connect.prepareStatement(sql);
            pstmt.executeUpdate();
        } catch(SQLException e) {
            System.out.println("Error: " + e);
        }
    }

/********************************************************************
 * deleteDB() used to delete the selected Processor record in the DataBase
 ********************************************************************/
    
    public void deleteDB() {
        try {
            
            Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb");
            Statement statement = connect.createStatement(); 
            String sql;
            sql = "DELETE FROM Processor WHERE ProcID = '"+procID+"'";
            statement.execute(sql);
            
        } catch(SQLException e) {
            System.out.println("Error: " + e);
        }
    }

/********************************************************************
 * display() used to test and display the Processor Record that is being pulled from the DB
 ********************************************************************/
    
    public void display() {
        System.out.println("Processor ID: " + procID);
        System.out.println("Processor Password: " + password);
        System.out.println("First Name " + firstName);
        System.out.println("Last Name: " + lastName);
        System.out.println("Email: " + email);
        System.out.println("Address: " + address);
        System.out.println("Phone: " + phone);

    }

/********************************************************************
 * main() used to test DB methods in Processor Class
     * @param args
 ********************************************************************/   
    public static void main(String args[] ) {
        Processor p1 = new Processor();
        p1.selectDB("7222");
        p1.display();
    }

}