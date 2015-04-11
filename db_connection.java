//method to go inside class that searches songs n shit
import java.sql.*;

class DBtest {


public void connectDB()
{
	Connection conn = null;
	PreparedStatement my_query = null;
	ResultSet my_result = null;

	try
	{
		//File  db = new File("songs.sql");
		
			Class.forName("org.mysql.JDBC.Driver");
			//Class.forName("com.mysql.jdbc.Driver");
			//conn = DriverManager.getConnection("jdbc:mysql://localhost/songs.sql","root","");
			conn = DriverManager.getConnection("jdbc:mysql:songs.sql");
			my_query = conn.prepareStatement("select * from songs");
			my_result = my_query.executeQuery();

			while(my_result.next())
			{
				System.out.println(my_result.getString("ID"));
				System.out.println(my_result.getString("Title"));
				System.out.println(my_result.getString("Artist"));
				System.out.println(my_result.getString("Album"));
				System.out.println(my_result.getString("Genre"));
			}
		


	}
	catch (ClassNotFoundException e)
	{
		System.out.println("Could not load driver");
    	e.printStackTrace();
    }
    
    catch (SQLException e)
    {
    	System.out.println("SQL error occured");
    	e.printStackTrace();
    }

    finally
    {
    	if(conn != null)
    	{
    		try
    		{
    			conn.close();
    		}
    		catch( SQLException e)
    		{
    			e.printStackTrace();
    		}
    	}


    }
	
}
public static void main(String[] args)
{
	//DBtest.connectDB();

	DBtest b = new DBtest();

	b.connectDB();
}


}


