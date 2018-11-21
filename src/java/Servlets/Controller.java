/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import ConnectionDb.DataAccessObject;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import static javax.swing.JOptionPane.showMessageDialog;

/**
 *
 * @author one195 & gigernau
 */
@WebServlet(name = "Controller", urlPatterns = {"/Controller"})
public class Controller extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
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
            
        
        //la servlet prende i vari parametri dalla jsp
        String User1=request.getParameter("user1");
        String Pass1=request.getParameter("pass1");
        String User2=request.getParameter("user2");
        String Pass2=request.getParameter("pass2");
        String Loc2= request.getParameter("location2");
        String Loc3= request.getParameter("location3");
        String User3= "Guest";


        
        
        //caso 1 accesso con LogIn /credenziali
        if(User1 != null && Pass1 != null){
            try {
                DataAccessObject DAO = new DataAccessObject();
                
                //controllo utente e password
                boolean B1 = DAO.checkUser(User1, Pass1);
                if(B1){
                    
                    //gestione utente e location salvata
                    request.setAttribute("User",User1 );
                    String Loc1 = DAO.takeLocation(User1);
                    
                    //gestione maiuscole e minuscole
                    Loc1= Loc1.substring(0,1).toUpperCase()+Loc1.substring(1, Loc1.length()).toLowerCase();
                    
                    //gestione location salvata in db
                    request.setAttribute("location",Loc1);
                    String Lat = DAO.getLatitude(Loc1);
                    String Lon = DAO.getLongitude(Loc1);
                    request.setAttribute("lati",Lat);
                    request.setAttribute("longi",Lon);
                    
                     float [] values = DataAccessObject.getLastValues(Loc1); 
                     
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
                else{
                    request.getRequestDispatcher("welcomeStruts.jsp").forward(request, response);
                    showMessageDialog(null,"Credenziali errate!");
                }
            }
            catch (SQLException | ClassNotFoundException ex) {
                    Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        //caso 2 accesso con registrazione credenziali
        if(User2 != null && Pass2 != null && Loc2 != null){
            try {
                
                DataAccessObject DAO = new DataAccessObject();
                boolean B1 = DataAccessObject.checkLocation(Loc2);
                if(B1)
                {
                    boolean B2 = DAO.insertUser(User2, Pass2, Loc2);
                    if(B2)
                    {
                        request.setAttribute("User",User2 );
                        Loc2= Loc2.substring(0,1).toUpperCase()+Loc2.substring(1, Loc2.length()).toLowerCase();
                        request.setAttribute("location",Loc2 );
                        String Lat = DAO.getLatitude(Loc2);
                        String Lon = DAO.getLongitude(Loc2);
                        request.setAttribute("lati",Lat);
                        request.setAttribute("longi",Lon);
                        
                     float [] values = DataAccessObject.getLastValues(Loc2); 
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
                        request.getRequestDispatcher("welcomeStruts.jsp").forward(request, response);
                        showMessageDialog(null,"Utente gia' presente!");
                    }
                    
                }
                 else
                    {
                        request.getRequestDispatcher("welcomeStruts.jsp").forward(request, response);
                        showMessageDialog(null,"Location non valida!\nScegliere una provincia o regione italiana.");
                    }
                
                
                
                
            } catch (SQLException | ClassNotFoundException ex) {
                Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        //caso 3 accesso veloce 
        if(Loc3 != null)
        {
            
            try {
                DataAccessObject DAO = new DataAccessObject();
                boolean B1 = DataAccessObject.checkLocation(Loc3);
                if(B1)
                 {
                     request.setAttribute("User",User3);
                     Loc3= Loc3.substring(0,1).toUpperCase()+Loc3.substring(1, Loc3.length()).toLowerCase();
                     request.setAttribute("location",Loc3);
                     String Lat = DAO.getLatitude(Loc3);
                     String Lon = DAO.getLongitude(Loc3);
                     request.setAttribute("lati",Lat);
                     request.setAttribute("longi",Lon);
                     
                     
                     float [] values = DataAccessObject.getLastValues(Loc3); 
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
                        request.getRequestDispatcher("welcomeStruts.jsp").forward(request, response);
                        showMessageDialog(null,"Location non valida!\nScegliere una provincia.");
                    }

            } catch (SQLException | ClassNotFoundException ex) {
                Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        
    }   

}
