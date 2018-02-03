package model;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Random;

/**
 * Created by Sky on 24/06/2017.
 */

public class DiaDiem implements Serializable {
	private String tenDuong, thoiGianBatDau, thoiGianKetThuc;
	private double lat, lon;
	private String ketXe, tinhThanh, phuong;
	private int mucDo, khuVuc;
	private String hinhAnh;
	private int id;
	private String time;
	private static final DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");

	public DiaDiem() {
	}

	public DiaDiem(String tenDuong, String loai, int maKhuVuc, String thoiGianBD, int mucdo, double lat, double lon,
			String hinhAnh) {
		this.tenDuong = tenDuong;
		this.ketXe = loai;
		this.khuVuc = maKhuVuc;
		this.mucDo = mucdo;
		this.thoiGianBatDau = thoiGianBD;
		this.time = sdf.format(new Date(thoiGianBatDau));
		this.lat = lat;
		this.lon = lon;
		this.hinhAnh = hinhAnh;
		this.id = new Random().nextInt(1000);
	}

	public DiaDiem(String tenDuong, String thoiGianBatDau, String thoiGianKetThuc, double lat, double lon, String ketXe,
			int mucDo, int khuVuc, String hinhAnh) {
		super();
		this.tenDuong = tenDuong;
		this.thoiGianBatDau = thoiGianBatDau;
		this.thoiGianKetThuc = thoiGianKetThuc;
		this.lat = lat;
		this.lon = lon;
		this.ketXe = ketXe;
		this.mucDo = mucDo;
		this.khuVuc = khuVuc;
		this.hinhAnh = hinhAnh;
	}

	public String getTime() {
		return time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTinhThanh() {
		return tinhThanh;
	}

	public void setTinhThanh(String tinhThanh) {
		this.tinhThanh = tinhThanh;
	}

	public String getPhuong() {
		return phuong;
	}

	public void setPhuong(String phuong) {
		this.phuong = phuong;
	}

	public void setTime(String time) {
		this.time = sdf.format(new Date(thoiGianBatDau));
	}

	public String getTenDuong() {
		return tenDuong;
	}

	public boolean kiemTraKhongCoGiaTri(String data) {
		return tenDuong == null || tenDuong.equalsIgnoreCase("");
	}

	public void setTenDuong(String tenDuong) {
		if (kiemTraKhongCoGiaTri(tenDuong)) {
			this.tenDuong = "Chưa Có Tên";
		}
		this.tenDuong = tenDuong;
	}

	@Override
	public String toString() {
		return "DiaDiem [tenDuong=" + tenDuong + ", thoiGianBatDau=" + thoiGianBatDau + ", thoiGianKetThuc="
				+ thoiGianKetThuc + ", lat=" + lat + ", lon=" + lon + ", ketXe=" + ketXe + ", mucDo=" + mucDo
				+ ", khuVuc=" + khuVuc + ", hinhAnh=" + hinhAnh + "]";
	}

	public int getKhuVuc() {
		return khuVuc;
	}

	public void setKhuVuc(String khuVuc) {
		switch (khuVuc.toUpperCase()) {
		case "QUẬN 1":
			this.khuVuc = 1;
			break;
		case "QUẬN 2":
			this.khuVuc = 2;
			break;
		case "QUẬN 3":
			this.khuVuc = 3;
			break;
		case "QUẬN 4":
			this.khuVuc = 4;
			break;
		case "QUẬN 5":
			this.khuVuc = 5;
			break;
		case "QUẬN 6":
			this.khuVuc = 6;
			break;
		case "QUẬN 7":
			this.khuVuc = 7;
			break;
		case "QUẬN 8":
			this.khuVuc = 8;
			break;
		case "QUẬN 9":
			this.khuVuc = 9;
			break;
		case "QUẬN GO VẤP":
			this.khuVuc = 10;
			break;
		case "QUẬN BÌNH THẠNH":
			this.khuVuc = 11;
			break;
		case "QUẬN THỦ ĐỨC":
			this.khuVuc = 12;
			break;
		case "QUẬN BÌNH CHÁNH":
			this.khuVuc = 13;
			break;
		case "QUẬN CỦ CHI":
			this.khuVuc = 14;
			break;
		case "QUẬN HOC MON":
			this.khuVuc = 15;
			break;
		case "QUẬN BEN THANH":
			this.khuVuc = 16;
			break;

		default:
			break;
		}
	}

	public String getThoiGianBatDau() {

		return thoiGianBatDau;
	}

	public void setThoiGianBatDau(String thoiGianBatDau) {
		if (kiemTraKhongCoGiaTri(thoiGianBatDau)) {
			this.thoiGianBatDau = "";
		}
		this.thoiGianBatDau = thoiGianBatDau;
	}

	public String getThoiGianKetThuc() {
		return thoiGianKetThuc;
	}

	public void setThoiGianKetThuc(String thoiGianKetThuc) {
		if (kiemTraKhongCoGiaTri(thoiGianKetThuc)) {
			this.thoiGianKetThuc = "";
		}
		this.thoiGianKetThuc = thoiGianKetThuc;
	}

	public double getLat() {
		return lat;
	}

	public void setLat(double lat) {
		this.lat = lat;
	}

	public double getLon() {
		return lon;
	}

	public void setLon(double lon) {
		this.lon = lon;
	}

	public String getKetXe() {
		return ketXe;
	}

	public void setKetXe(String ketXe) {
		this.ketXe = ketXe;
	}

	public int getMucDo() {
		return mucDo;
	}

	public void setMucDo(int mucDo) {
		this.mucDo = mucDo;
	}

	public void setKhuVuc(int khuVuc) {
		this.khuVuc = khuVuc;
	}

	public void setMucDo(String mucDo) {
		switch (mucDo.toUpperCase()) {
		case "NGHIÊM TRỌNG":
			this.mucDo = 5;
			break;
		case "KHÁ Nghiêm Trọng":
			this.mucDo = 4;
			break;
		case "CHƯA TỐT":
			this.mucDo = 3;
			break;
		case "BÌNH THƯỜNG":
			this.mucDo = 2;
			break;
		case "TỐT":
			this.mucDo = 1;
			break;
		}
	}

	public String getHinhAnh() {
		return hinhAnh;
	}

	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}

}
