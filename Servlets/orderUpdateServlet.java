import Business.Order;
import Business.OrderList;
import Business.Processor;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/orderUpdateServlet"})
public class orderUpdateServlet extends HttpServlet {

/********************************************************************
 * OrderUpdateServlet: this servlet is used for approving and updating all open orders in the DataBase
 *  It will go through the orderList and update the order Add current date, current approver, and change the status to shipped
 *  Then forward to next OpenOrderDisplay jsp
 *  Which will show all the orders from the list that were updated in the Database
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
        Order ord;
        Order o2;
        ord = (Order)session.getAttribute("o1");
        Processor p2;
        p2 = (Processor)session.getAttribute("p1");
        
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MM/dd/yyyy");  
        LocalDateTime now = LocalDateTime.now();    
           
           for (int x = 0; x < ord.aList.aList.size(); x++) {
               o2 = ord.aList.aList.get(x);
               String ordNum;
               ordNum = o2.getOrderNum();
               System.out.println("o2 Order Num " + ordNum);
               o2.selectDB2(ordNum);
               String status = "Shipped";
               String approver = p2.getProcID();
               String date = dtf.format(now);
               System.out.println("This is order status: " + status);
               System.out.println("This is approver: " + approver);
               System.out.println("This is date; " + date);
               o2.setStatus(status);
               o2.setApproverID(approver);
               o2.setDateOfApproval(date);
               o2.updateDB();
               o2.display();
           }
        
        
        RequestDispatcher rd = request.getRequestDispatcher("/openOrderUpdate.jsp");
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
