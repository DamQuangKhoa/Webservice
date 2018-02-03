# Webservice
Class Run Đầu Tiên : Controller.
Webservice chưa có giao diện.
Sử dụng Server Apache Tomcat 8.0 
Sử dụng database MySQL, file code được để trong thư mục MSql.
Cách kết nối: 	
Client (Android ) gửi đến Webservice với cờ action tương ứng với các hành động :
CSD: Client-Send-Data : Client gửi địa chỉ, hình ảnh, vi trí lên Service , Service sẽ lưu vào Database.
CRĐ: Client-Request-Data : Client gửi yêu cầu lấy dữ liệu lên Service theo ngày, Service truy xuất dữ liêu tự Database, phân loại và gửi về 1 danh sách địa điểm theo ngày đó
CSA: Client-Send-Address : Client gửi 1 yêu cầu lấy dữ liệu lên Service theo địa điểm, ngày,Service truy xuất dữ liêu tự Database, phân loại và gửi về 1 danh sách theo địa điểm đó.

 


