package model;

public class Config {
    public static final int HAVE_SPECIAL_CHAR=-1,HAVE_NUMBER=-2,SUCCESS=0,HAVE_NO_WORD=-3;
	public static final String TENDUONG= "duong",KHUVUC="KV",MUCDO="MD"
            ,LOAI="Loai",TIME="time",LAT="lat",LONG="long",HINHANH="hinhanh";
	public static final String ACTION="action",CSD="Clent-send-data"
			,SSD="Server-send-data",CRD="Client-Request-Data",CSA="Client-send-address"
			,SSA="Server-send-address";
	 public static final String PATTERN_HAVE_SPECIAL_CHAR= "[$&+,:;=?@#|]"
	            ,PATTERN_HAVE_NUMBER=".*\\d+.*";
	public static final String LISTDATA = "list data";
	public static final String DIADIEM = "diadiem";
	public static final String DELETE = "DELETE",CHANGE="CHANGE",APPLY="APPLY";
	public static final String TINHTHANH ="TINHTHANH" ;
    public static final String PHUONG = "PHUONG";
}
