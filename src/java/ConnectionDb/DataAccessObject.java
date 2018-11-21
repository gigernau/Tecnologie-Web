/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConnectionDb;

import static java.lang.System.out;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author one195 & gigernau
 */

// Questa classe si occupa di interrogare il database e di dare le informazioni alla servlet
// in base alla richiesta HTTP.
public class DataAccessObject {
    
    
    // metodo per controllare se esiste la location inserita
    public static boolean checkLocation(String Loc) throws SQLException, ClassNotFoundException{
        
        ConnectDataBase.getConnection();
        String A;
        Statement stmt = ConnectDataBase.getConnection().createStatement();
        PreparedStatement S = ConnectDataBase.con.prepareStatement("SELECT NOMELOCATION FROM CAPOLUOGO WHERE NOMELOCATION = ?");
        S.setString(1, Loc);
        ResultSet rs= S.executeQuery();
        rs.next();
        int C = rs.getRow();
        return C==1;
    }
    
    
    // Metodo per controllare se l'utente é presente nel database
    public boolean checkUser(String User, String Password) throws SQLException, ClassNotFoundException{
        
        ConnectDataBase.getConnection();
        Statement stmt = ConnectDataBase.getConnection().createStatement();
        PreparedStatement S = ConnectDataBase.con.prepareStatement("SELECT USERNAME, PASS FROM USER_REGISTERED WHERE USERNAME = ? AND BINARY PASS = ?");
        S.setString(1, User);
        S.setString(2, Password);
        ResultSet rs= S.executeQuery();
        rs.next();
        int C = rs.getRow();
        return C == 1;
    }
      
    
    // Metodo per controllare se l'utente é presente nel database
    public boolean insertUser(String User, String Password, String Loc) throws SQLException, ClassNotFoundException{
        
            ConnectDataBase.getConnection();
            Statement stmt = ConnectDataBase.getConnection().createStatement();
            
            PreparedStatement S1 = ConnectDataBase.con.prepareStatement("INSERT INTO USER_REGISTERED VALUES (?,?)");
            PreparedStatement S2 = ConnectDataBase.con.prepareStatement("INSERT INTO VISTA VALUES (?,?)");
            PreparedStatement S3 = ConnectDataBase.con.prepareStatement("SELECT USERNAME FROM USER_REGISTERED WHERE USERNAME = ?");
            S3.setString(1, User);
            ResultSet s3 = S3.executeQuery();
            s3.next();
            int C = s3.getRow();
            if (C==0)
            {
                S1.setString(1, User);
                S1.setString(2, Password);
                S1.executeUpdate();
                S2.setString(1, User);
                S2.setString(2, Loc);
                S2.executeUpdate();
                return true;
            }
            else
                return false;
    }
       
    
     // Metodo per il cambio location di un utente registrato
    public boolean changeLoc(String User, String Loc) throws SQLException, ClassNotFoundException{
           
            ConnectDataBase.getConnection();
            Statement stmt = ConnectDataBase.getConnection().createStatement();
            boolean b1= DataAccessObject.checkLocation(Loc);
            if (b1)
            {
                PreparedStatement S1 = ConnectDataBase.con.prepareStatement("SELECT LOC_SCELTA FROM VISTA WHERE USERNAME = ?");
                S1.setString(1, User);
                ResultSet rs1 = S1.executeQuery();
                rs1.next();
                if (!rs1.getString("LOC_SCELTA").equals(Loc))
                {
                    PreparedStatement S2 = ConnectDataBase.con.prepareStatement("DELETE FROM VISTA WHERE USERNAME = ?");
                    S2.setString(1,User);
                    S2.executeUpdate();
                    PreparedStatement S3 = ConnectDataBase.con.prepareStatement("INSERT INTO VISTA VALUES (?,?)");
                    S3.setString(1, User);
                    S3.setString(2, Loc);
                    S3.executeUpdate();
                    return true;
                }
                else return false;
            }
            else return false;
        }
        
         // metodo per il cambio location di un guest
        public boolean changeLocGuest( String Loc) throws SQLException, ClassNotFoundException{
           
            ConnectDataBase.getConnection();
            Statement stmt = ConnectDataBase.getConnection().createStatement();
            boolean b1= DataAccessObject.checkLocation(Loc);
            if (b1)
            {
                PreparedStatement S1 = ConnectDataBase.con.prepareStatement("SELECT NOMELOCATION FROM CAPOLUOGO WHERE NOMELOCATION = ?");
                S1.setString(1, Loc);
                ResultSet rs1 = S1.executeQuery();
                rs1.next();
                if (!rs1.getString("NOMELOCATION").equals(Loc))
                {
                    return true;
                }
                else return false;
            }
            else return false;
        }
    
    // Metodo per calcolare la media locale 
    public float[] calculateLocalMedia(String location, String Da, String A) 
            throws SQLException, ClassNotFoundException{
        
        ConnectDataBase.getConnection(); // Stabilisco la connessione:
        //lato client io faccio in modo che la servlet riceva SOLO date valide.
        
        
        
        Statement stmt = ConnectDataBase.getConnection().createStatement();
        PreparedStatement S = ConnectDataBase.con.prepareStatement("SELECT SUM(VALORE) AS VALORE FROM ELEMSCANNER WHERE NOMEL = ? AND DATA_SCAN BETWEEN ? AND ? GROUP BY NOMEE");
        S.setString(1, location);
        S.setString(2, Da);
        S.setString(3,A);
        ResultSet rs = S.executeQuery();
        float ML [] = new float [10];
        int i=0;PreparedStatement S1 = ConnectDataBase.con.prepareStatement("SELECT COUNT(VALORE) AS CONTEGGIO FROM ELEMSCANNER WHERE NOMEE= ?  AND NOMEL = ? AND DATA_SCAN BETWEEN ? AND ?");
        S1.setString(1, "O3");
        S1.setString(2, location);
        S1.setString(3,Da);
        S1.setString(4,A);
        
        ResultSet rs1 = S1.executeQuery();
        
        rs1.next();
        
        Float c = rs1.getFloat("CONTEGGIO");
       
        while (rs.next())
        {
           ML[i]= rs.getFloat("VALORE");
           ML[i]= ML[i]/c;
           i++;
        }
        
        
        
        
        return ML;
    }
    
    
    // Metodo per calcolare la media regionale 
    public float[] calculateRegionalMedia(String Location, String Da, String A) throws SQLException, ClassNotFoundException{
        float count=0;
        float MR[] = new float [10];
        for (int i = 0; i< 10 ; i++)
            MR [i] = 0;
        Statement stmt = ConnectDataBase.getConnection().createStatement();
        PreparedStatement S = ConnectDataBase.con.prepareStatement("SELECT NOMELOCATION FROM CAPOLUOGO WHERE NOMER IN ( SELECT NOMER FROM CAPOLUOGO WHERE NOMELOCATION = ? )");
        S.setString(1, Location);
        ResultSet rs = S.executeQuery();
        
        DataAccessObject Dao= new DataAccessObject();
        float tmp[] = new float [10];
        
        
        while(rs.next()){
            
            tmp = Dao.calculateLocalMedia(rs.getString("NOMELOCATION"), Da, A);
            for (int i=0; i< 10 ; i++)
            {
                MR[i] = MR[i] + tmp[i];
             
            }
                count++;
        }
        for (int i=0;i<10;i++)
        {
            MR[i] = MR[i] / count;
        }
        return MR;
    }
    
    
    // Metodo per prelevare i valori dell'ultima scansione
    public static float[] getLastValues(String Location) throws SQLException, ClassNotFoundException{
       // prende i valori dell'ultima scansione (località in base alla richiesta) 
       float [] Values = new float[10];
       Statement stmt = ConnectDataBase.getConnection().createStatement();
       PreparedStatement S = ConnectDataBase.con.prepareStatement("SELECT VALORE FROM ELEMSCANNER WHERE NOMEL = ? AND INCREMENTO IN (SELECT MAX(INCREMENTO) FROM ELEMSCANNER)");
       S.setString(1, Location);
       ResultSet rs=S.executeQuery();
       int i=0;
       while (rs.next()){
            Values[i]=rs.getFloat("VALORE");
            i++;
       }
       return Values;
   }  

   
    // Metodo per caricare la location dell'utente al login
    public String takeLocation(String User) throws ClassNotFoundException, SQLException
    {
         ConnectDataBase.getConnection();
         Statement stmt = ConnectDataBase.getConnection().createStatement();
         PreparedStatement S1 = ConnectDataBase.con.prepareStatement("SELECT LOC_SCELTA FROM VISTA WHERE USERNAME = ?");
         S1.setString(1, User);
         ResultSet rs=S1.executeQuery();
         rs.next();
         return rs.getString("LOC_SCELTA");
    }
    
    
    // metodo per prendere la latitudine di un capoluogo
    public String getLatitude(String location) throws SQLException, ClassNotFoundException
    {
        ConnectDataBase.getConnection();
        Statement stmt = ConnectDataBase.getConnection().createStatement();
        PreparedStatement S1 = ConnectDataBase.con.prepareStatement("SELECT LAT FROM CAPOLUOGO WHERE NOMELOCATION = ?");
        S1.setString(1,location);
        ResultSet rs=S1.executeQuery();
        rs.next();
        return rs.getString("LAT");
    }
    
    
    // metodo per prelevare la longitudine di un capoluogo
    public String getLongitude(String location) throws ClassNotFoundException, SQLException
    {
        ConnectDataBase.getConnection();
        Statement stmt = ConnectDataBase.getConnection().createStatement();
        PreparedStatement S1 = ConnectDataBase.con.prepareStatement("SELECT LON FROM CAPOLUOGO WHERE NOMELOCATION = ?");
        S1.setString(1,location);
        ResultSet rs=S1.executeQuery();
        rs.next();
        return rs.getString("LON");
    }
   
    
    // metodo per calcolare il max in un intervallo temporale

    public float[] getMax( String Location, String Da, String A) throws ClassNotFoundException, SQLException {
  
       float [] Values = new float[10];
       Statement stmt = ConnectDataBase.getConnection().createStatement();
       PreparedStatement S = ConnectDataBase.con.prepareStatement("SELECT MAX(VALORE) AS MAX FROM ELEMSCANNER WHERE NOMEL = ? AND DATA_SCAN BETWEEN ? AND ? GROUP BY NOMEE ");
       S.setString(1, Location);
       S.setString(2, Da);
       S.setString(3,A);
       ResultSet rs=S.executeQuery();
       int i=0;
       while (rs.next()){
            Values[i]=rs.getFloat("MAX");
            i++;
       }
       return Values;
        
  }
  
    
    // metodo per calcolare il minimo in un intervallo temporale

  public float[] getMin( String Location, String Da, String A) throws ClassNotFoundException, SQLException {
  
       float [] Values = new float[10];
       Statement stmt = ConnectDataBase.getConnection().createStatement();
       PreparedStatement S = ConnectDataBase.con.prepareStatement("SELECT MIN(VALORE) AS MIN FROM ELEMSCANNER WHERE NOMEL = ? AND DATA_SCAN BETWEEN ? AND ? GROUP BY NOMEE ");
       S.setString(1, Location);
       S.setString(2, Da);
       S.setString(3,A);
       ResultSet rs=S.executeQuery();
       int i=0;
       while (rs.next()){
            Values[i]=rs.getFloat("MIN");
            i++;
       }
       return Values;
        
  }

  
}
       
