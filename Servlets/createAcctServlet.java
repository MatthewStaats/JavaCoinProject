import Business.Customer;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/createAcctServlet"})
public class createAcctServlet extends HttpServlet {

/********************************************************************
 * createAcctServlet: this servlet is used to create a new customer account to the Database and create the customer session object 
 * then forward to the custInfo jsp Which will login them in and show their account information
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
 ********************************************************************/
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String id;
        String pw;
        String fn;
        String ln;
        String email;
        String phone;
        String street;
        String city;
        String state;
        String zip;
        
        boolean active = true;
        
        HttpSession session;
        session = request.getSession(true);
        
        id = request.getParameter("newId");
        pw = request.getParameter("newPw");
        fn = request.getParameter("newFn");
        ln = request.getParameter("newLn");
        email = request.getParameter("newEmail");
        phone = request.getParameter("newPhone");
        street = request.getParameter("newStreet");
        city = request.getParameter("newCity");
        state = request.getParameter("newState");
        zip = request.getParameter("newZip");
        
        
        Customer c1 = new Customer();
        
        c1.setCustID(id);
        c1.setPassword(pw);
        c1.setFirstName(fn);
        c1.setLastName(ln);
        c1.setEmail(email);
        c1.setPhone(phone);
        c1.setStreet(street);
        c1.setCity(city);
        c1.setState(state);
        c1.setZip(zip);
        c1.setCust(active);
        
        c1.insertDB(id, pw, fn, ln, email, phone, street, city, state, zip);
        session.setAttribute("c1", c1);
        System.out.println("Customer c1 object has been added for the Customer");
        
        RequestDispatcher rd = request.getRequestDispatcher("/custInfo.jsp");
        rd.forward(request, response);
      
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
