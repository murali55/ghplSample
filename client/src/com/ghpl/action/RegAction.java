package com.ghpl.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ghpl.dao.EmpDAOManager;
import com.ghpl.model.EMP;

/**
 * Servlet implementation class RegAction
 */
@WebServlet("/RegAction")
public class RegAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String username=null;
			String password=null;			
			String useremail=null;
		  EMP emp =null;
			emp = new EMP();

		if(request.getParameter("username")!= null &&  !request.getParameter("username").equals("")) {
			username=request.getParameter("username");
			emp.setUsername(username);
		}
		if(request.getParameter("password")!= null) {
			password=request.getParameter("password");
		}
		if(request.getParameter("useremail")!= null) {
			useremail=request.getParameter("useremail");
		}
		
		int insertSatus =0;
		if(username!=null ) {
			insertSatus  =  EmpDAOManager.addEMP(emp, insertSatus);
		}
		
		}
		catch (Exception e) {
		e.printStackTrace();	
		}
	}

}
