/*
 * 
 * 
 * 
 */
package supply.medium.home.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import supply.medium.home.database.InquiryMaster;
import supply.medium.home.database.NotificationMaster;
import supply.medium.home.database.TransactionRfqMaster;
import supply.medium.home.database.UserMaster;
import supply.medium.utility.MemoryTest;

/**
 *
 * @author Intel
 */
public class TransRfqAction extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); try { 
            /* TODO output your page here. You may use following sample code. */
            String rfqKey = request.getParameter("rfqKey");
            String status = request.getParameter("rfqAction");
            TransactionRfqMaster.updateTransStatus(rfqKey, status);
            HttpSession session = request.getSession(true);
            String inquireType = "RFQ";
            String vrKey = rfqKey;
            String transactionKey = "0";
            String myUserKey = session.getAttribute("userKey").toString();
            String userKeyFrom = request.getParameter("fromKey");
            String inquireFrom = UserMaster.showUserDetails(userKeyFrom).getCompanyKey();
            String inquireTo = request.getParameter("toKey");
            String userKeyTo = UserMaster.showAdminKeyFromCompanyKey(inquireTo) + "";
            String inquireDetails = request.getParameter("new_inquire_message");

//                out.print(inquireFrom+userKeyFrom+inquireTo+userKeyTo);
                //out.print("rfqKey"+rfqKey);
            //out.print("status"+status);
            if (status.equals("Inquired")) {

                if (myUserKey.equals(userKeyTo)) {
                InquiryMaster.insert(inquireType, vrKey, rfqKey, transactionKey, inquireTo, inquireFrom, inquireDetails);
                    NotificationMaster.insert(userKeyTo, userKeyFrom, inquireTo, inquireFrom, "RFQ", vrKey, "RFQ " + status);
                }
                if (myUserKey.equals(userKeyFrom)) {
                InquiryMaster.insert(inquireType, vrKey, rfqKey, transactionKey, inquireFrom, inquireTo, inquireDetails);
                    NotificationMaster.insert(userKeyFrom, userKeyTo, inquireFrom, inquireTo, "RFQ", vrKey, "RFQ " + status);
                }

            } else {
                NotificationMaster.insert(userKeyTo, userKeyFrom, inquireTo, inquireFrom, "RFQ", vrKey, "RFQ " + status);
            }
            MemoryTest.test("footer start");
            System.gc();
            MemoryTest.test("footer end");
            response.sendRedirect("transactions.jsp");
        } finally {
            out.close();
        }
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
