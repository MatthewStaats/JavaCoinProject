import Business.Customer;
import Business.Order;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/newOrderServlet"})
public class newOrderServlet extends HttpServlet {
    
/********************************************************************
 * NewOrderServlet: this servlet is used to create a new order into the Database
 * It will check if the User is a Customer or NonCustomer in the code below
 * Then forward a Customer's order to custOrder jsp or NonCustomer's order to nonCustOrder jsp
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
 ********************************************************************/

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        boolean active;
        HttpSession session;
        session = request.getSession(true);
        String amount;
        try {
            Customer c2 = (Customer) session.getAttribute("c1");
            active = c2.getCust();
         
            if(active == true) {
                String city = c2.getCity();
                String state = c2.getState();
                String zip = c2.getZip();
                String street = c2.getStreet();
                String status = "Open";
                String id = c2.getCustID();
                String approver = "";
                String date = "";
                amount = request.getParameter("hiddenId");
                System.out.println("THIS IS THE AMOUNT THAT IS DUE CHECK " + amount);
                RequestDispatcher rd = request.getRequestDispatcher("/custOrder.jsp");
                rd.forward(request, response); 
                Order o1 = new Order();
                o1.insertDB(0, amount, status, id, approver, date, street, city, state, zip);
               
            } 
        } catch(NullPointerException e) {
            System.out.println(e);
        }
        
                amount = request.getParameter("hiddenId");
                System.out.println("THIS IS THE AMOUNT THAT IS DUE CHECK " + amount);
                Order o2 = new Order();
                o2.setAmount(amount);
                session.setAttribute("o2", o2);
                RequestDispatcher rd = request.getRequestDispatcher("/nonCustOrder.jsp");
                rd.forward(request, response);

      
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
