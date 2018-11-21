/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import ConnectionDb.DataAccessObject;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static javax.swing.JOptionPane.showMessageDialog;

/**
 *
 * @author gigernau
 */
@WebServlet(name = "Controller2", urlPatterns = {"/Controller2"})
public class Controller2 extends HttpServlet {



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
        
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            
            HttpSession session=request.getSession();
            String remoteUser = request.getRemoteUser();
            
            if (remoteUser == null) {
              out.println("HTTP 401 Unauthorized");
              session.invalidate();
            }
       
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
     
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
           
        
        String User1=request.getParameter("user1");
        String User2=request.getParameter("user2");
        
        String Loc2= request.getParameter("location2");
        String Loc3= request.getParameter("location3");
        String User3 = "Guest";
        String Loc4= request.getParameter("location4");
        String Data1= request.getParameter("data1");
        String Data2= request.getParameter("data2");
        String Data3= request.getParameter("data3");
        String Data4= request.getParameter("data4");
        String Out = request.getParameter("out");
        
        String Loc = request.getParameter("l");
        String User = request.getParameter("u");
         
        
        //cambio di località e rigenerazione page 2
        if(Loc4 != null)
        {
             
            try {
                boolean B1 = DataAccessObject.checkLocation(Loc4);
                if(B1)
                {   
                    DataAccessObject DAO = new DataAccessObject();    
                    boolean b2 = false;
                     
                    if (!"Guest".equals(User))
                     {
                        request.setAttribute("User",User);
                        b2 = DAO.changeLoc(User, Loc4);
                     }
                     else
                     {
                        b2 = DAO.changeLocGuest(Loc4);
                        request.setAttribute("User",User);
                     }
                    
                    if(b2)
                     {
                        Loc4 = Loc4.substring(0,1).toUpperCase()+Loc4.substring(1, Loc4.length()).toLowerCase();
                        request.setAttribute("location",Loc4); 
                        String Lat = DAO.getLatitude(Loc4);
                        String Lon = DAO.getLongitude(Loc4);
                        request.setAttribute("lati",Lat);
                        request.setAttribute("longi",Lon);
                        showMessageDialog(null,"Location cambiata con successo!");
                        
                        
                        float [] values = DataAccessObject.getLastValues(Loc4); 
                        String s = "--";


                       request.setAttribute("A",values[0]);
                       request.setAttribute("B",values[1]);
                       request.setAttribute("C",values[2]);
                       request.setAttribute("D",values[3]);
                       request.setAttribute("E",values[4]);
                       request.setAttribute("F",values[5]);
                       request.setAttribute("G",values[6]);
                       request.setAttribute("H",values[7]);
                       request.setAttribute("I",values[8]);
                       request.setAttribute("L",values[9]);

                       request.setAttribute("A1",s);
                       request.setAttribute("B1",s);
                       request.setAttribute("C1",s);
                       request.setAttribute("D1",s);
                       request.setAttribute("E1",s);
                       request.setAttribute("F1",s);
                       request.setAttribute("G1",s);
                       request.setAttribute("H1",s);
                       request.setAttribute("I1",s);
                       request.setAttribute("L1",s);

                       request.setAttribute("A2",s);
                       request.setAttribute("B2",s);
                       request.setAttribute("C2",s);
                       request.setAttribute("D2",s);
                       request.setAttribute("E2",s);
                       request.setAttribute("F2",s);
                       request.setAttribute("G2",s);
                       request.setAttribute("H2",s);
                       request.setAttribute("I2",s);
                       request.setAttribute("L2",s);
                       
                       request.getRequestDispatcher("Page2.jsp").forward(request, response);
                     }
                     
                     else
                     {
                     
                        out.print("<html>");
                        out.print("<body>");
                        out.print("La location deve essere diversa!<br>");
                        out.print("Tornare indietro e scegliere una provincia italiana.");
                        out.print("</body>");
                        out.print("</html>");
                        
                     }
                 }
                else
                    {
                        out.print("<html>");
                        out.print("<body>");
                        out.print("Location non valida!<br>");
                        out.print("Tornare indietro e scegliere una provincia italiana.");
                        out.print("</body>");
                        out.print("</html>");    
                    }

            } catch (SQLException | ClassNotFoundException ex) {
                Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        
        
        //generazione pagina della media locale e regionale con i rispetivi valori max/min
        
        //media locale
        if (Data1 != null && Data2 != null)
        {
            
            try {   

                
                DataAccessObject DAO = new DataAccessObject();
                float[] ML;
                float[] Min;
                float[] Max;
            
                ML =  DAO.calculateLocalMedia(Loc,Data1,Data2);
                Min = DAO.getMin(Loc,Data1,Data2);
                Max = DAO.getMax(Loc,Data1,Data2);
                
                
                request.setAttribute("A",ML[0]);
                request.setAttribute("B",ML[1]);
                request.setAttribute("C",ML[2]);
                request.setAttribute("D",ML[3]);
                request.setAttribute("E",ML[4]);
                request.setAttribute("F",ML[5]);
                request.setAttribute("G",ML[6]);
                request.setAttribute("H",ML[7]);
                request.setAttribute("I",ML[8]);
                request.setAttribute("L",ML[9]);
                
                request.setAttribute("A1",Max[0]);
                request.setAttribute("B1",Max[1]);
                request.setAttribute("C1",Max[2]);
                request.setAttribute("D1",Max[3]);
                request.setAttribute("E1",Max[4]);
                request.setAttribute("F1",Max[5]);
                request.setAttribute("G1",Max[6]);
                request.setAttribute("H1",Max[7]);
                request.setAttribute("I1",Max[8]);
                request.setAttribute("L1",Max[9]);
                
                request.setAttribute("A2",Min[0]);
                request.setAttribute("B2",Min[1]);
                request.setAttribute("C2",Min[2]);
                request.setAttribute("D2",Min[3]);
                request.setAttribute("E2",Min[4]);
                request.setAttribute("F2",Min[5]);
                request.setAttribute("G2",Min[6]);
                request.setAttribute("H2",Min[7]);
                request.setAttribute("I2",Min[8]);
                request.setAttribute("L2",Min[9]);
                
                request.setAttribute("User", User);
                request.setAttribute("location",Loc );
                String Lat = DAO.getLatitude(Loc);
                String Lon = DAO.getLongitude(Loc);
                request.setAttribute("lati",Lat);
                request.setAttribute("longi",Lon);
                
                Data1 = null;Data2 = null; Data3= null; Data4 = null;
                request.getRequestDispatcher("Page2.jsp").forward(request, response); 
              
            } catch (SQLException | ClassNotFoundException ex) {
                Logger.getLogger(Controller2.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        } 
                
        //media regionale        
        if (Data3 != null && Data4 != null)
        {
            try 
            {
                
                DataAccessObject DAO = new DataAccessObject();
                float[] MR;
                float[] Min; 
                float[] Max;
                MR = DAO.calculateRegionalMedia(Loc,Data3,Data4);
                Min = DAO.getMin(Loc,Data3,Data4);
                Max = DAO.getMax(Loc,Data3,Data4);
                
                    request.setAttribute("A",MR[0]);
                    request.setAttribute("B",MR[1]);
                    request.setAttribute("C",MR[2]);
                    request.setAttribute("D",MR[3]);
                    request.setAttribute("E",MR[4]);
                    request.setAttribute("F",MR[5]);
                    request.setAttribute("G",MR[6]);
                    request.setAttribute("H",MR[7]);
                    request.setAttribute("I",MR[8]);
                    request.setAttribute("L",MR[9]);
                    
                    request.setAttribute("A1",Max[0]);
                    request.setAttribute("B1",Max[1]);
                    request.setAttribute("C1",Max[2]);
                    request.setAttribute("D1",Max[3]);
                    request.setAttribute("E1",Max[4]);
                    request.setAttribute("F1",Max[5]);
                    request.setAttribute("G1",Max[6]);
                    request.setAttribute("H1",Max[7]);
                    request.setAttribute("I1",Max[8]);
                    request.setAttribute("L1",Max[9]);
                    
                    request.setAttribute("A2",Min[0]);
                    request.setAttribute("B2",Min[1]);
                    request.setAttribute("C2",Min[2]);
                    request.setAttribute("D2",Min[3]);
                    request.setAttribute("E2",Min[4]);
                    request.setAttribute("F2",Min[5]);
                    request.setAttribute("G2",Min[6]);
                    request.setAttribute("H2",Min[7]);
                    request.setAttribute("I2",Min[8]);
                    request.setAttribute("L2",Min[9]);    
                    
                    
                    request.setAttribute("User", User);
                    request.setAttribute("location",Loc );
                    String Lat = DAO.getLatitude(Loc);
                    String Lon = DAO.getLongitude(Loc);
                    request.setAttribute("lati",Lat);
                    request.setAttribute("longi",Lon);
                    Data1 = null; Data2 = null; Data3= null; Data4 = null;
                    request.getRequestDispatcher("Page2.jsp").forward(request, response);
                

            } catch (SQLException | ClassNotFoundException ex) {
                Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        } 
        
        
        
        //log out e reindirizzamento a home page
         if(out != null && Data1 == null && Loc4 == null){
             response.sendRedirect("welcomeStruts.jsp");
         }         
        
    }
       
    }    


