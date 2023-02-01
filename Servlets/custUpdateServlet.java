import Business.Customer;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/custUpdateServlet"})
public class custUpdateServlet extends HttpServlet {

/********************************************************************
 * CustUpdateServlet: this servlet is used to update the current logged in customer information in the Database
 * It request the session's attribute and retrieves the customer login object that was created during the successful login
 * Then forwards the page to inform the user of the update confirmation in the Database
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
 ********************************************************************/
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
          
        HttpSession session;
        session = request.getSession(true);
        Customer c2 = (Customer) session.getAttribute("c1");
        String id = c2.getCustID();
        c2.selectDB(id);
        String pw = request.getParameter("custPW");
        String fn = request.getParameter("custFn");
        String ln = request.getParameter("custLn");
        String email = request.getParameter("custEmail");
        String phone = request.getParameter("custPhone");
        String street = request.getParameter("custStreet");
        String city = request.getParameter("custCity");
        String state = request.getParameter("custState");
        String zip = request.getParameter("custZip");
        
        c2.setPassword(pw);
        c2.setFirstName(fn);
        c2.setLastName(ln);
        c2.setEmail(email);
        c2.setPhone(phone);
        c2.setStreet(street);
        c2.setCity(city);
        c2.setState(state);
        c2.setZip(zip);
        c2.updateDB();
        
        RequestDispatcher rd = request.getRequestDispatcher("/custUpdateSuccess.jsp");
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
