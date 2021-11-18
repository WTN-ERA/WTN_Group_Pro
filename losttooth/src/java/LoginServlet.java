import java.io.IOException;
import java.util.ArrayList;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.HttpServlet;

import beans.UserBean;
import model.DataManager;
import model.Validation;



public class LoginServlet extends HttpServlet
{
	private String dbResult = null;
	private String myException = null;	
	private String strError = null;
	private boolean dbOK = false;
	
	// Connection string data
	private String db_URL;
	private String db_username;
	private String db_password;
	
	//Instance of beans
	private UserBean userBean;
	private ArrayList<UserBean> students;
	private ArrayList<UserBean> teachers;
	private DataManager dataManager;
	private Validation val = new Validation();
	
	public void init(ServletConfig config) throws ServletException
	{
            super.init(config);
            dataManager = new DataManager();
	    dataManager.setDbURL(config.getInitParameter("dbURL"));
	    dataManager.setDbUserName(config.getInitParameter("dbUserName"));
	    dataManager.setDbPassword(config.getInitParameter("dbPassword"));
		try
		{
			Class.forName(config.getInitParameter("jdbcDriver"));
		}
		catch (Exception ex)
		{
			System.out.println("Initialize connector string");
			ex.printStackTrace();
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{		
		/* 
		 * Get user data fro submited form
		 */		
		String userName = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(val.validate(userName, password))
		{
			userBean = new UserBean();
			userBean = dataManager.getUserData(userName, password);
			
			try
			{
				if(!userBean.getEmail().equals(null))
					dbOK = true;
			}
			catch(NullPointerException npe)
			{
				System.out.println("Error on DB return");
				npe.printStackTrace();
				strError = "Invalid username or password.";
				dbOK = false;				
			}
			
		}
		else
		{
			strError = "Invalid username or password.";
			dbOK = false;
		}
				
		HttpSession session = request.getSession(true);
		
		if(dbOK)
		{
			//redirect to student/teacher/admin pages
			if(userBean.getUserGroup().equals("customer"))
			{
				session.setAttribute( "userBean", userBean);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/student.jsp");
				dispatcher.forward( request, response);				
			}
			else if(userBean.getUserGroup().equals("teacher"))
			{
				session.setAttribute( "userBean", userBean);				
				students = new ArrayList<UserBean>(dataManager.getUsersList("student"));
				session.setAttribute("students", students);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/teacher.jsp");
				dispatcher.forward( request, response);	
			}
			else if(userBean.getUserGroup().equals("admin"))
			{
				session.setAttribute( "userBean", userBean);
				students = new ArrayList<UserBean>(dataManager.getUsersList("student"));
				session.setAttribute("students", students);
				teachers = new ArrayList<UserBean>(dataManager.getUsersList("teacher"));
				session.setAttribute("teachers", teachers);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/admin.jsp");
				dispatcher.forward( request, response);	
			}
		}
		else
		{
			//Error after DB login checkout, redirect back to index.jsp
			session.setAttribute( "error", strError);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
			dispatcher.forward( request, response);	
		}		
	}		
}