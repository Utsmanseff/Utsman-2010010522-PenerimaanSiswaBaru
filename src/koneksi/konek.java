/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;
import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author utsma
 */
public class konek {
    private static Connection konek;
    
   public static Connection getKonek(){
       if (konek == null){
           try {
               String url = "jdbc:mysql://localhost:3306/pdsiswa";
               String user = "root";
               String password = "";
               DriverManager.registerDriver(new com.mysql.jdbc.Driver());
               konek = DriverManager.getConnection(url, user, password);
               System.out.println("Berhasil");
           } catch (Exception e) {
               System.out.println("Error");
           }
   }
    return konek;
}
   public static void main(String args[]){
       getKonek();
   }
}
