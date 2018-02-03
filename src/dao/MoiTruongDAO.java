package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

import model.Config;
import model.DiaDiem;

public class MoiTruongDAO {
	private Connection connect;
	private ResultSet rs = null;
	private PreparedStatement ps;
	private Statement st;
	String sql;
	private static MoiTruongDAO instance;

	public static MoiTruongDAO getInstance() {
		if (instance == null) {
			instance = new MoiTruongDAO();
		}
		return instance;
	}

	private MoiTruongDAO() {
		// TODO Auto-generated constructor stub
	}

	public List<DiaDiem> getDataByAddres(String address, String date) {
		List<DiaDiem> res = new ArrayList<>();
		String sql = "select diadiem.TenDiaDiem,diadiem.Loai,diadiem.MaKhuVuc,quatrinh.ThGianBatDau,quatrinh.MucDo,quatrinh.Latitude,quatrinh.Longtitude,diadiem.HinhAnh "
				+ "from diadiem join quatrinh on diadiem.MaDiaDiem=quatrinh.MaDiaDiem where date(ThGianBatDau)=? and TenDiaDiem like ?";

		// AND diadiem.TenDiaDiem like N'$address$' + "where
		// date(quatrinh.ThGianBatDau) = ? "
		try (Connection connect = ConnectionDB.getConnection()) {
			ps = connect.prepareStatement(sql);
			ps.setString(1, date);
			ps.setString(2, "%" + address + "%");
			rs = ps.executeQuery();

			while (rs.next()) {
				int count = 1;
				// DiaDiem dd = new DiaDiem(rs.getString(1), rs.getString(2),
				// rs.getInt(3)
				// , rs.getString(4), rs.getInt(5), rs.getDouble(6)
				// , rs.getDouble(7),rs.getString(8));
				DiaDiem dd = new DiaDiem();
				dd.setTenDuong(rs.getString(count++));
				dd.setKetXe(rs.getString(count++));
				;
				dd.setKhuVuc(rs.getInt(count++));
				dd.setThoiGianBatDau(rs.getString(count++));
				dd.setMucDo(rs.getInt(count++));
				dd.setLat(rs.getDouble(count++));
				dd.setLon(rs.getDouble(count++));
				dd.setHinhAnh(rs.getString(count++));

				System.out.println(dd);
				res.add(dd);
			}
			rs.close();
			ps.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Loi getDataByAddres : " + e.getMessage());
		}
		return res;

	}

	public int insertDiaDiem(DiaDiem dd) {
		int res = 0;
		res = creatMaDiaDiem(dd.getThoiGianBatDau());
		String sql = "insert into diadiem(MaKhuVuc,TenDiaDiem,Loai,HinhAnh,MaDiaDiem) values(?,?,?,?,?)";
		try (Connection connect = ConnectionDB.getConnection()) {
			ps = connect.prepareStatement(sql);
			ps.setInt(1, dd.getKhuVuc());
			ps.setString(2, dd.getTenDuong());
			ps.setString(3, dd.getKetXe());
			ps.setString(4, dd.getHinhAnh());
			ps.setInt(5, res);
			ps.executeUpdate();
			System.out.println("insert Dia Diem Thanh Cong");
			ps.close();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("Loi Insert Dia Diem : " + e.getMessage());
		}
		return res;
	}

	private int creatMaDiaDiem(String thoiGianBatDau) {
		int res = 0;
		Random rd = new Random();
		StringTokenizer st = new StringTokenizer(thoiGianBatDau, "-: ");
		while (st.hasMoreTokens()) {
			try {
				res += Integer.parseInt(st.nextToken());
			} catch (Exception e) {
				// TODO: handle exception
			}
		}
		return res + rd.nextInt(res);
	}

	// public static String removeAccent(String s) {
	//
	// String temp = Normalizer.normalize(s, Normalizer.Form.NFD);
	// Pattern pattern = Pattern.compile("\\p{InCombiningDiacriticalMarks}+");
	// return pattern.matcher(temp).replaceAll("");
	// }

	// private String getTenDuong(String tenDuong) {
	// // TODO Auto-generated method stub
	// String res=tenDuong;
	// if(tenDuong.matches(Config.PATTERN_HAVE_NUMBER)){
	// res= tenDuong.trim().substring(tenDuong.indexOf(" "));
	// }
	// return removeAccent(res);
	// }
	public static boolean isMatch(String pa, String text) {
		Pattern pattern = Pattern.compile(pa);
		Matcher matcher = pattern.matcher(text);
		return matcher.find();
	}

	public int getMaDiaDiem(String dd) {
		int maDiaDiem = -1;
		String sql = "select MaDiaDiem from diadiem where TenDiaDiem =?";
		try (Connection connect = ConnectionDB.getConnection()) {
			ps = connect.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ps.setString(1, dd );
			rs = ps.executeQuery();
			if (rs.first())
				maDiaDiem = rs.getInt(1);

			if (maDiaDiem != -1) {
				System.out.println("get Ma Dia Diem Thanh Cong");
				System.out.println(maDiaDiem);
			}
			rs.close();
			ps.close();
		} catch (Exception e) {
			System.out.println("Loi Get Ma Dia Diem: " + e.getMessage());
		}
		return maDiaDiem;
	}

	public void insertData(DiaDiem dd) {
		int maDiaDiem = getMaDiaDiem(dd.getTenDuong());
		if(maDiaDiem == -1) maDiaDiem=insertDiaDiem(dd);
		sql = "insert into quatrinh(ThGianBatDau,MucDo,Latitude,Longtitude,MaDiaDiem) values(?,?,?,?,?) ";
		try (Connection connect = ConnectionDB.getConnection()) {
			ps = connect.prepareStatement(sql);
			ps.setString(1, dd.getThoiGianBatDau());
			ps.setInt(2, dd.getMucDo());
			ps.setDouble(3, dd.getLat());
			ps.setDouble(4, dd.getLon());
			ps.setInt(5, maDiaDiem);
			ps.executeUpdate();
			System.out.println("Insert Data Thanh Cong");
			ps.close();
			rs.close();
			ps.close();
		} catch (SQLException e) {
			System.out.println("Loi insert Data: " + e.getMessage());
		}
	}

	public List<DiaDiem> getListData(String date) {
		List<DiaDiem> res = new ArrayList<>();
		sql = "select diadiem.TenDiaDiem,diadiem.Loai,diadiem.MaKhuVuc,quatrinh.ThGianBatDau,quatrinh.MucDo,quatrinh.Latitude,quatrinh.Longtitude,diadiem.HinhAnh,diadiem.MaDiaDiem "
				+ "from diadiem JOIN quatrinh on diadiem.MaDiaDiem = quatrinh.MaDiaDiem "
				+ " where date(quatrinh.ThGianBatDau) = ? ";
		try (Connection connect = ConnectionDB.getConnection()) {
			ps = connect.prepareStatement(sql);
			ps.setString(1, date);
			rs = ps.executeQuery();
			while (rs.next()) {
				int count = 1;
				DiaDiem dd = new DiaDiem();
				dd.setTenDuong(rs.getString(count++));
				dd.setKetXe(rs.getString(count++));
				dd.setKhuVuc(rs.getInt(count++));
				dd.setThoiGianBatDau(rs.getString(count++));
				dd.setMucDo(rs.getInt(count++));
				dd.setLat(rs.getDouble(count++));
				dd.setLon(rs.getDouble(count++));
				dd.setHinhAnh(rs.getString(count++));
				dd.setId(rs.getInt(count++));
				System.out.println(dd);
				res.add(dd);
			}
			rs.close();
			ps.close();
		} catch (SQLException e) {
			// TODO: handle exception
			System.out.println("Loi Get List Data : " + e.getMessage());
		}
		if (res != null) {
			System.out.println("Get Data Thanh Cong");
		}

		return res;
	}

	public Map<Integer, List<DiaDiem>> getData(String date) throws SQLException {
		Map<Integer, List<DiaDiem>> res = new HashMap<>();
		List<DiaDiem> listData = getListData(date);

		res = listData.stream().sorted(Comparator.comparing(DiaDiem::getKhuVuc))
				.collect(Collectors.groupingBy(DiaDiem::getMucDo));
		// res.values()
		// .stream()
		// .sorted(Comparator.comparing(DiaDiem::getKhuVuc))
		// ;

		// res= res.entrySet()
		// .stream()
		// .sorted(Map.Entry.comparingByKey())
		// .collect(Collectors.toMap(Map.Entry::getKey,
		// Map.Entry::getValue,(e1,e2)->e1,LinkedHashMap::new));
		// printMap(res);

		return res;
	}

	public void printMap(Map<?, ?> map) {
		map.forEach((k, v) -> System.out.println(k + ": " + v));
	}

	public static void main(String[] args) {
		MoiTruongDAO demo = MoiTruongDAO.getInstance();
		// DiaDiem dd = new DiaDiem("A", "2017-08-31 20:20:15", "", 5.0, 6.0,
		// "Kẹt Xe", 3, 3, 1);
		// demo.insertData(dd);
		// demo.changeToMap("2017-08-12");
		DiaDiem dd = new DiaDiem("A", "2017-08-31 20:20:15", "", 5.0, 7.0, "Kẹt Xe", 3, 3, "");
		try {
			demo.insertData(dd);
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
