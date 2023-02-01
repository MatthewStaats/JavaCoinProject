package Business;
import java.sql.*;

/********************************************************************
 * This Class is not used for Coin Project Assignment
 * This Class would be used for a real company though
 * To add, edit, and remove items in the DB that the Company offers
 ********************************************************************/

public class Coins{
    
/********************************************************************
 * All the attributes used for the Coins Class
 ********************************************************************/
    
    private String coinName;
    private int modelYear;
    private String keyDate;
    private double faceValue;
    private String mintMark;
    private double price;
    private String metal;
    private String denomination;
        private String coinId;

/********************************************************************
 * Default empty Coins Constructor
 ********************************************************************/
        
    public Coins() {
        coinName = "";
        modelYear = 0;
        keyDate = "";
        faceValue = 0;
        mintMark = "";
        price = 0;
        metal = "";
        denomination = "";
                coinId = "";

    }

/********************************************************************
 * Coins Constructor passing in all values
     * @param coinName
     * @param coinId
     * @param modelYear
     * @param keyDate
     * @param faceValue
     * @param mintMark
     * @param price
     * @param metal
     * @param denomination
 ********************************************************************/
        
    public Coins(String coinName, String coinId, int modelYear, String keyDate, double faceValue, String mintMark, double price, String metal, String denomination){
        this.coinName = coinName;
                this.coinId = coinId;
        this.modelYear = modelYear;
        this.keyDate = keyDate;
        this.faceValue = faceValue;
        this.mintMark = mintMark;
        this.price = price;
        this.metal = metal;
        this.denomination = denomination;
                this.coinId = coinId;

    }

    public void setCoinName(String coinName){
            this.coinName = coinName;
        }
        
    public String getCoinName() {
            return coinName;
        }
        
    public void setModelYear(int modelYear){
            this.modelYear = modelYear;
        }
        
    public int getModelYear(){
            return modelYear;
        }
        
    public void setKeyDate(String keyDate){
            this.keyDate = keyDate;
        }
        
    public String getKeyDate(){
            return keyDate;
        }
        
    public void setFaceValue(double faceValue){
            this.faceValue = faceValue;
        }
        
    public double getFaceValue(){
            return faceValue;
        }
        
    public void setMintMark(String mintMark){
            this.mintMark = mintMark;
        }
        
    public String getMintMark(){
            return mintMark;
        }
        
    public void setPrice(double price){
            this.price = price;
        }
        
    public double getPrice(){
            return price;
        }
        
    public void setMetal(String metal){
            this.metal = metal;
        }
        
    public String getMetal(){
            return metal;
        }
        
    public void setDenomination(String denomination){
            this.denomination = denomination;
        }
        
    public String getDenomination(){
            return denomination;
        }

        public void setCoinId(String coinId) {
            this.coinId = coinId;
        }
        
        public String getCoinId() {
            return coinId;
        }

/********************************************************************
 * selectDB() used to select the right Coin record in the DataBase
 * This method wasn't required for the project, but it's functionality that would be needed down the road
 * Would be needed to select the right coin record to form actions on it in the DB
     * @param id
 ********************************************************************/
    public void selectDB(String id) {
        
            coinId = "";

            try {
                Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
                // My connection to connect to DB, still need to figure out how to do in GitHub
                try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb")) {
                    
                    Statement statement = connect.createStatement();

                    String sql;
                    sql = "SELECT * FROM Coins WHERE CoinID = '" + id + "'";
                    //System.out.println(sql);

                    ResultSet result = statement.executeQuery(sql);

                    result.next();
                    coinName = result.getString(1);
                    coinId = result.getString(2);
                    modelYear = result.getInt(3);
                    keyDate = result.getString(4);
                    faceValue = result.getDouble(5);
                    mintMark = result.getString(6);
                    price = result.getDouble(7);
                    metal = result.getString(8);
                    denomination = result.getString(9);

                }
            } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e);
        }   
    }

/********************************************************************
 * insertDB() used to create and insert a new Coin record into the DataBase
 * This method wasn't required for the project, but it's functionality that would be needed down the road
 * Would be needed to add a new Coin record to the DB, that we are going to sell
 * passing in these fields for the new Coin record field values
     * @param coinName   
     * @param coinId   
     * @param modelYear   
     * @param keyDate   
     * @param faceValue   
     * @param mintMark   
     * @param price   
     * @param metal   
     * @param denomination   
 ********************************************************************/
        
    public void insertDB(String coinName, String coinId, int modelYear, String keyDate, double faceValue, String mintMark, double price, String metal, String denomination) {

        try {
            Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");

            try (Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb")) {

                String sql;
                sql = "insert into Coins values('"+coinName+"', '" + coinId+ "', '" + modelYear + "', '" + keyDate + "', '" + faceValue + "', '" + mintMark + "', '" + price + "','" + metal + "','" + denomination + "')";
                PreparedStatement prepstate = connect.prepareStatement(sql);
                prepstate.execute();
            }
        } catch (SQLException | ClassNotFoundException ex) {
            System.out.println("Error " + ex);
        }
    }

/********************************************************************
 * updateDB() used to update the selected Coin record in the DataBase
 * This method wasn't required for the project, but it's functionality that would be needed down the road
 * Would be needed to update the selected coin record in the DB
 ********************************************************************/
    public void updateDB() {

        try {

            Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb");
            String sql;
            sql = "UPDATE Coins SET CoinName = '" + coinName + "', CoinID = '" + coinId + "', Model Year = '" + modelYear + "', KeyDate = '" + keyDate + "', FaceValue = '" + faceValue + "', MintMark = '" + mintMark+ "', Price = '" + price + "', Metal = '" + metal + "', Denomination = '" + denomination + "' WHERE CoinID = '" + coinId + "'";
            PreparedStatement pstmt = connect.prepareStatement(sql);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }
    
/********************************************************************
 * deleteDB() used to delete the selected Coin record in the DataBase
 * This method wasn't required for the project, but it's functionality that would be needed down the road
 * Would be needed to delete coins records, we don't offer any more
 ********************************************************************/
    public void deleteDB() {

        try {

            Connection connect = DriverManager.getConnection("jdbc:ucanaccess://C:/Users/matth/Documents/GitHub/Team6/CoinCompanyDB.mdb");
            Statement statement = connect.createStatement();
            String sql;
            sql = "DELETE FROM Coins WHERE CoinID = '" + coinId + "'";
            statement.execute(sql);

        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
    }
    

/********************************************************************
 * display() used to test and display the Coin Record that is being pulled from the DB
 ********************************************************************/
    public void display() {
        System.out.println("Coin Name: " + coinName);
        System.out.println("Model Year: " + modelYear);
        System.out.println("Key Date: " + keyDate);
        System.out.println("Face Value: " + faceValue);
        System.out.println("Mint Mark: " + mintMark);
        System.out.println("Price: " + price);
        System.out.println("Metal: " + metal);
        System.out.println("Denomination: " + denomination);

    }

/********************************************************************
 * main() used to test DB methods in Coins Class
     * @param args
 ********************************************************************/
    public static void main(String args[] ) {
        Coins c1 = new Coins();
        c1.selectDB("10");
        c1.display();
    }
}
