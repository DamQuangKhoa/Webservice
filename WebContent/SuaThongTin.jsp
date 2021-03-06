<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Sửa đơn hàng| </title>
  <!-- jQuery -->
  <script src="vendors/jquery/dist/jquery.min.js"></script>    
  <!-- Bootstrap -->
  <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <!-- NProgress -->
  <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
  <!-- iCheck -->
  <link href="vendors/iCheck/skins/flat/green.css" rel="stylesheet">
  <!-- bootstrap-wysiwyg -->
  <link href="vendors/google-code-prettify/bin/prettify.min.css" rel="stylesheet">
  <!-- Select2 -->
  <link href="vendors/select2/dist/css/select2.min.css" rel="stylesheet">
  <!-- Switchery -->
  <link href="vendors/switchery/dist/switchery.min.css" rel="stylesheet">
  <!-- starrr -->
  <link href="vendors/starrr/dist/starrr.css" rel="stylesheet">
  <!-- bootstrap-daterangepicker -->
  <link href="vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

  <!-- Custom Theme Style -->
  <link href="build/css/custom.min.css" rel="stylesheet">

  <script type="text/javascript">
    $(document).ready(function(){
      function validatePhone(txtPhone) {
        var filter = /^[0-9-+]+$/;
        if (filter.test(txtPhone+"") && txtPhone.length>=10 && txtPhone.length<12 ) {
          return true;
        }
        else {
          return false;
        }
      }
      function validateEmail(sEmail) {
        var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
        if (filter.test(sEmail) ) {
          return true;
        }
        else {
          return false;
        }
      }
      $('#editorder').bind({
        'submit':function(){
          if($('#ngayDatHang').val()==''){
            $('#ngayDatHang').css('box-shadow','0px 0px 2px 2px red');
            $('#error-ngayDatHang').html('Bạn không được bỏ trống trường này!');
            $('#icon-ngayDatHang').html('<span style="color:green" class=" glyphicon glyphicon-remove"></span>');
            return false;
          }
          if($('#name').val()==''){
            $('#name').css('box-shadow','0px 0px 2px 2px red');
            $('#error-name').html('Bạn không được bỏ trống trường này!');
            $('#icon-name').html('<span class=" glyphicon glyphicon-remove"></span>');
            return false;
          }
          if($('#status').val()==''){
            $('#status').css('box-shadow','0px 0px 2px 2px red');
            $('#error-status').html('Bạn không được bỏ trống trường này!');
            $('#icon-status').html('<span class=" glyphicon glyphicon-remove"></span>');
            return false;
          }
          if($('#productName').val()==''){
            $('#productName').css('box-shadow','0px 0px 2px 2px red');
            $('#error-productName').html('Bạn không được bỏ trống trường này!');
            $('#icon-productName').html('<span style="color:green" class=" glyphicon glyphicon-remove"></span>');
            return false;
          }
          if($('#price').val()==''){
            $('#price').css('box-shadow','0px 0px 2px 2px red');
            $('#error-price').html('Bạn không được bỏ trống trường này!');
            $('#icon-price').html('<span class=" glyphicon glyphicon-remove"></span>');
            return false;
          }
          if(!validatePhone($('#phone').val())){
            $('#phone').css('box-shadow','0px 0px 2px 2px red');
            $('#error-phone').html(' Sá»‘ Ä‘iá»‡n thoáº¡i báº¡n nháº­p khĂ´ng Ä‘Ăºng!!! ');
            $('#icon-phone').html('<span class=" glyphicon glyphicon-remove"></span>');
            return false;
          }
          if($('#address').val()==''){
            $('#address').css('box-shadow','0px 0px 2px 2px red');
            $('#error-address').html('Bạn không được bỏ trống trường này!');
            $('#icon-address').html('<span class=" glyphicon glyphicon-remove"></span>');
            return false;
          }
//                        if($('#info').val()==''){
//                $('#info').css('box-shadow','0px 0px 2px 2px red');
//                $('#error-info').html('Bạn không được bỏ trống trường này!');
//                $('#icon-info').html('<span class=" glyphicon glyphicon-remove"></span>');
//                return false;
//              }

return true;  
},
'keyup':function(){
  if($('#ngayDatHang').val().length>0){
    $('#ngayDatHang').css('box-shadow','0px 0px 1px 1px green');
    $('#icon-ngayDatHang').html('<span class="glyphicon glyphicon-ok "></span>');
    $('#error-ngayDatHang').html(' ');
  }
  if($('#name').val().length>0){
    $('#name').css('box-shadow','0px 0px 1px 1px green');
    $('#icon-name').html('<span class="glyphicon glyphicon-ok "></span>');
    $('#error-name').html(' ');
  }
  if($('#status').val().length>0){
    $('#status').css('box-shadow','0px 0px 1px 1px green');
    $('#icon-status').html('<span class="glyphicon glyphicon-ok "></span>');
    $('#error-status').html(' ');
  }
  if($('#productName').val().length>0){
    $('#productName').css('box-shadow','0px 0px 1px 1px green');
    $('#icon-productName').html('<span class="glyphicon glyphicon-ok "></span>');
    $('#error-productName').html(' ');
  }
  if($('#price').val().length>0){
    $('#price').css('box-shadow','0px 0px 1px 1px green');
    $('#icon-price').html('<span class="glyphicon glyphicon-ok "></span>');
    $('#error-price').html(' ');
  }
  if($('#phone').val().length>0){
    $('#phone').css('box-shadow','0px 0px 1px 1px green');
    $('#icon-phone').html('<span class="glyphicon glyphicon-ok "></span>');
    $('#error-phone').html(' ');
  }
  if($('#address').val().length>0){
    $('#address').css('box-shadow','0px 0px 1px 1px green');
    $('#icon-address').html('<span class="glyphicon glyphicon-ok "></span>');
    $('#error-address').html(' ');
  }
//                        if($('#info').val().length>0){
//                $('#info').css('box-shadow','0px 0px 1px 1px green');
//                $('#icon-info').html('<span class="glyphicon glyphicon-ok "></span>');
//                $('#error-info').html(' ');
//              }
},
}
);
});

</script>
</head>

<body class="nav-md">
  <div class="container body">
    <div class="main_container">
      <jsp:include page="../Menu/MenuCap.jsp"></jsp:include>

      <!-- page content -->
      <div class="right_col" role="main">
        <div class="">

          <div class="clearfix"></div>
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                 <a href="DonHang.jsp" style="float:right"><button class="btn btn-sm btn-primary" type="button"><i class="fa fa-undo" aria-hidden="true"></i>  Trở về</button></a>
                 <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li>
                  <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>

                  </li>
                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="x_content">
                <br />

                <form id="editorder" data-parsley-validate class="form-horizontal form-label-left"  action="../../Order?action=Edit&id=" method="post">
                <div class="form-group">
                  <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Type <span class="required">*</span>
                  </label>
                  <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="row">
                     <div class="col-sm-8">
                       <input type="radio" name="gender" value="male" checked> Kẹt Xe<br>
                       <input type="radio" name="gender" value="female"> Ô Nhiễm<br>
                       <input type="radio" name="gender" value="other"> Khác<br><br>
                     </div>
                     <div class="col-sm-2">
                      <p id="icon-name"></p>
                    </div>
                  </div>
                  <div class="row">
                    <p style="color: red" id="error-name"></p>  
                  </div>

                </div>
              </div>

                  <div class="form-group">
                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Time<span class="required">*</span>
                    </label>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                      <div class="row">
                       <div class="col-sm-8">
                        <input type="time" id="ngayDatHang" name="date" class="form-control col-md-7 col-xs-12" value="">
                      </div>
                      <div class="col-sm-2">
                        <p id="icon-ngayDatHang"></p>
                      </div>
                    </div>
                    <div class="row">
                      <p style="color: red" id="error-ngayDatHang"></p> 
                    </div>
                  </div>
                </div>

                 <div class="form-group">
        <label class="control-label col-md-3 col-sm-3 col-xs-12">Address <span class="required">*</span>
        </label>
        <div class="col-md-6 col-sm-6 col-xs-12">
          <div class="row">
           <div class="col-sm-8">
<input id="address" class=" form-control col-md-7 col-xs-12" type="text" name="address" value="">
                             
                               <div class="col-sm-2">
                                <p id="icon-address"></p>
                               </div>
             
          </div>
          <div class="col-sm-2">
            <p id="icon-address"></p>
          </div>
        </div>
        <div class="row">
          <p style="color: red" id="error-address"></p> 
        </div>
      </div>
    </div>
     <div class="form-group">
      <label class="control-label col-md-3 col-sm-3 col-xs-12">City <span class="required"></span>
      </label>
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="row">
         <div class="col-sm-8">
         <select class=" form-control col-md-7 col-xs-12">
              <option value="0">TPHCM</option>
            
            </select>
        </div>
        <div class="col-sm-2">
          <p id="icon-info"></p>
        </div>
      </div>
      <div class="row">
        <p style="color: red" id="error-info"></p>  
      </div>
    </div>
  </div>
 <div class="form-group">
      <label class="control-label col-md-3 col-sm-3 col-xs-12">State <span class="required"></span>
      </label>
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="row">
         <div class="col-sm-8">
         <select class=" form-control col-md-7 col-xs-12">
              <option value="0">Quận 1</option>
              <option value="1">Quận 2</option>
              <option value="2">Quận 3</option>
              <option value="3">Quận 4</option>
               <option value="0">Quận 5</option>
              <option value="1">Quận 6</option>
              <option value="2">Quận 7</option>
              <option value="3">Quận 8</option>
               <option value="0">Quận 9</option>
              <option value="1">Quận 10</option>
              <option value="2">Quận Thủ Đức</option>
              <option value="3">Quận Bình Thạnh</option>
            </select>
        </div>
        <div class="col-sm-2">
          <p id="icon-info"></p>
        </div>
      </div>
      <div class="row">
        <p style="color: red" id="error-info"></p>  
      </div>
    </div>
  </div>

              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Latitude<span class="required">*</span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="row">
                   <div class="col-sm-8">
                     <input type="number" id="status" name="status" class="form-control col-md-7 col-xs-12" value="">
                   </div>
                   <div class="col-sm-2">
                    <p id="icon-status"></p>
                  </div>
                </div>
                <div class="row">
                  <p style="color: red" id="error-status"></p>  
                </div>
              </div>
            </div>
             <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Longtitude<span class="required">*</span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <div class="row">
                   <div class="col-sm-8">
                     <input type="number" id="status" name="status" class="form-control col-md-7 col-xs-12" value="">
                   </div>
                   <div class="col-sm-2">
                    <p id="icon-status"></p>
                  </div>
                </div>
                <div class="row">
                  <p style="color: red" id="error-status"></p>  
                </div>
              </div>
            </div>
        
        
    <div class="form-group">
      <label class="control-label col-md-3 col-sm-3 col-xs-12">Level <span class="required"></span>
      </label>
      <div class="col-md-6 col-sm-6 col-xs-12">
        <div class="row">
         <div class="col-sm-8">
         <select class=" form-control col-md-7 col-xs-12">
              <option value="0">Tốt</option>
              <option value="1">Bình Thường</option>
              <option value="2">Khá Nghiêm Trọng</option>
              <option value="3">Nghiêm Trọng</option>
            </select>
        </div>
        <div class="col-sm-2">
          <p id="icon-info"></p>
        </div>
      </div>
      <div class="row">
        <p style="color: red" id="error-info"></p>  
      </div>
    </div>
  </div>

  <div class="ln_solid"></div>
  <div class="form-group">
    <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
      <button type="submit" class="btn btn-sm btn-success"><span class="glyphicon glyphicon-edit"></span>  Sửa Thông Tin</button>
    </div>
  </div>

</form>

</div>
</div>
</div>
</div>

</div>
</div>



<!-- footer content -->
<!-- /footer content -->
</div>
</div>

<!-- jQuery -->
<script src="vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->
<script src="vendors/fastclick/lib/fastclick.js"></script>
<!-- NProgress -->
<script src="vendors/nprogress/nprogress.js"></script>
<!-- bootstrap-progressbar -->
<script src="vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<!-- iCheck -->
<script src="vendors/iCheck/icheck.min.js"></script>
<!-- bootstrap-daterangepicker -->
<script src="vendors/moment/min/moment.min.js"></script>
<script src="vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- bootstrap-wysiwyg -->
<script src="vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
<script src="vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
<script src="vendors/google-code-prettify/src/prettify.js"></script>
<!-- jQuery Tags Input -->
<script src="vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
<!-- Switchery -->
<script src="vendors/switchery/dist/switchery.min.js"></script>
<!-- Select2 -->
<script src="vendors/select2/dist/js/select2.full.min.js"></script>
<!-- Parsley -->
<script src="vendors/parsleyjs/dist/parsley.min.js"></script>
<!-- Autosize -->
<script src="vendors/autosize/dist/autosize.min.js"></script>
<!-- jQuery autocomplete -->
<script src="vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
<!-- starrr -->
<script src="vendors/starrr/dist/starrr.js"></script>
<!-- Custom Theme Scripts -->
<script src="build/js/custom.min.js"></script>

</body>
</html>
