package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import antlr.collections.List;
import dao.MoiTruongDAO;
import model.Config;
import model.DiaDiem;

/**
 * Servlet implementation class AdminServlet
 */
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd ");
	private static final DateTimeFormatter dtf = DateTimeFormatter.ofPattern("HH:mm:ss");

	/**
	 * s
	 * 
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		String action = request.getParameter(Config.ACTION);
		if (action == null) {
			Calendar cal = Calendar.getInstance();
			String time = sdf.format(cal.getTime());
//			MoiTruongDAO dao = MoiTruongDAO.getInstance();
			System.out.println(time);
			java.util.List<DiaDiem> listDD= new ArrayList<>();
			listDD.add(new DiaDiem());
		} else {
			switch (action.toUpperCase()) {
			case Config.DELETE:
System.out.println("1");
				break;
			case Config.CHANGE:

				System.out.println("2");
				break;
			case Config.APPLY:
				System.out.println("3");

				break;
			default:
				break;
			}
		}
		response.sendRedirect("HoiDapAdmin.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		doGet(request, response);
	}

}
