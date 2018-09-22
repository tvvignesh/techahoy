/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

/**
 *
 * @author Abhishek
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Abhishek
 */
public class database {
    
    Connection conn;
    Statement stmt;
    ResultSet r;
    
    public void connect()
    {
        try
        {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           conn=DriverManager.getConnection("jdbc:derby://localhost:1527/appdev","avirag","qwerty");
           stmt=conn.createStatement();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
    
    public int wr_query(String s)
    {
        try
        {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           conn=DriverManager.getConnection("jdbc:derby://localhost:1527/appdev","APP"," ");
           stmt=conn.createStatement();
           System.out.println(s);
           stmt.execute(s);
           conn.commit();
           conn.close();
           return 1;
        }
        catch(Exception e)
        {
            e.printStackTrace();
            return 0;
        }
    }
    
    public ResultSet r_query(String s)
    {
        r = null;
        try
        {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
           conn=DriverManager.getConnection("jdbc:derby://localhost:1527/appdev","APP"," ");
           stmt=conn.createStatement();
           r=stmt.executeQuery(s);
           //conn.commit();
           //conn.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return r;     
    }
}
