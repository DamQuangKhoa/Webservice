package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import dao.MoiTruongDAO;
import model.Config;
import model.DiaDiem;


/**
 * Servlet implementation class Controller
 */
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
      
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		HttpSession ses = request.getSession();
		ses.setMaxInactiveInterval(86400);
//		response.sendRedirect("AdminServlet");
//			Gson json = new Gson();
//		String information = json.toJson(listSV);//return sang một string, có định dạng json.
//		 response.getWriter().write(information);
//			 System.out.println(information);
	        // in ra màn hình
	}

	/**
	 * @throws UnsupportedEncodingException 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	private void xuLyCSD(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		System.out.println("Vao Day");
		try {
			String duong = request.getParameter(Config.TENDUONG);
			String khuvuc = request.getParameter(Config.KHUVUC);
			String mucdo = request.getParameter(Config.MUCDO);
			String loai = request.getParameter(Config.LOAI);
			String time = request.getParameter(Config.TIME);
			double lat =Double.parseDouble(request.getParameter(Config.LAT));
			double lon = Double.parseDouble(request.getParameter(Config.LONG));
			String hinhanh = request.getParameter(Config.HINHANH);
			String tinhthanh = request.getParameter(Config.TINHTHANH);
			String phuong = request.getParameter(Config.PHUONG);
			DiaDiem dd =  new DiaDiem();
			dd.setTenDuong(duong);
			dd.setKhuVuc(khuvuc);
			dd.setMucDo(mucdo);
			dd.setKetXe(loai);
			dd.setThoiGianBatDau(time);
			dd.setLat(lat);
			dd.setLon(lon);
			dd.setHinhAnh(hinhanh);
			dd.setTinhThanh(tinhthanh);
			dd.setPhuong(phuong);
			
			MoiTruongDAO dao = MoiTruongDAO.getInstance();
			dao.insertData(dd);
//			response.sendRedirect("AdminServlet");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String action = request.getParameter(Config.ACTION);
		System.out.println(action);
		if(action != null){
			switch (action) {
			case Config.CSD:
				xuLyCSD(request, response);
				break;
			case Config.CRD:
				System.out.println("Vao Day");
				xuLyCRD(request, response);
				break;
			case Config.CSA:
				xuLyCSA(request, response);
				break;
			default:
				break;
			}
		}
		}
private void xuLyCSA(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
//	System.out.println("Vao CSA");
	PrintWriter writer =null;
	try {
		writer = response.getWriter();
		String date = request.getParameter(Config.TIME);
		String address= request.getParameter(Config.TENDUONG);
		MoiTruongDAO dao = MoiTruongDAO.getInstance();
	List<DiaDiem> list = dao.getDataByAddres(address, date);
		
	Gson json = new Gson();
	String information = json.toJson(list);
//	System.out.println(information);
	
	writer.write(information);
	} catch (IOException e) {
		// TODO Auto-generated catch block
System.out.println("Loi Xu Ly CSA"+e.getMessage());		
	}
		
	}

//		System.out.println(data);

	private void xuLyCRD(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer =null;
		writer = response.getWriter();
		try {
			String date = request.getParameter(Config.TIME);
			MoiTruongDAO dao = MoiTruongDAO.getInstance();
			Map<Integer, List<DiaDiem>> ds =dao.getData(date);
////			List<List<DiaDiem>> list = ds.values()
//														.stream()
//														.collect(Collectors.toList());
			Gson json = new Gson();
			String information = json.toJson(ds);//return sang một string, có định dạng json.
			System.out.println(information);
			writer.write(information);
//			 response.getWriter().write(information);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Loi CRD: "+e.getMessage());
			writer.write("fail");
		}
		
	}
	}
