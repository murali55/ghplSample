package com.ghpl.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
			String phnNbr=null;
			String country=null;
			String state=null;
			String city=null;
			String address=null;
			String gender=null;

			
		  EMP emp =null;
			emp = new EMP();

		if(request.getParameter("username")!= null &&  !request.getParameter("username").equals("")) {
			username=request.getParameter("username");
			emp.setUsername(username);
		}
		if(request.getParameter("password")!= null &&  !request.getParameter("password").equals("")) {
			password=request.getParameter("password");
			emp.setPassword(password);

		}
		if(request.getParameter("useremail")!= null &&  !request.getParameter("password").equals("")) {
			useremail=request.getParameter("useremail");
			emp.setUsername(username);
		}
		if(request.getParameter("phnNbr")!= null &&  !request.getParameter("phnNbr").equals("")) {
			phnNbr=request.getParameter("phnNbr");
			emp.setMobileno(phnNbr);

		}
		if(request.getParameter("country")!= null&&  !request.getParameter("country").equals("")) {
			country=request.getParameter("country");
			emp.setCountry(country);

		}
		if(request.getParameter("state")!= null &&  !request.getParameter("state").equals("")) {
			state=request.getParameter("state");
			emp.setState(state);

		}
		if(request.getParameter("city")!= null &&  !request.getParameter("city").equals("")) {
			city=request.getParameter("city");
			emp.setCity(city);

		}
		if(request.getParameter("address")!= null&&  !request.getParameter("address").equals("")) {
			address=request.getParameter("address");
			emp.setAddress(address);

		}
		if(request.getParameter("gender")!= null&&  !request.getParameter("gender").equals("")) {
			gender=request.getParameter("gender");
			emp.setGender(gender);

		}
		int insertSatus =0;
		if(emp!=null ) {
			insertSatus  =  EmpDAOManager.addEMP(emp, insertSatus);
		}
		
		RequestDispatcher rd = null;
		if(insertSatus!=0) {
			rd = request.getRequestDispatcher("./success.jsp");
		}else {
			rd = request.getRequestDispatcher("./failure.jsp");
		}
		
		
		}
		catch (Exception e) {
		e.printStackTrace();	
		}
	}

}
