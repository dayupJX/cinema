<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@ taglib prefix="s" uri="/struts-tags" %> --%>

<!DOCTYPE html>
<html>
  <head>
    <title>选座购票</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/选座购票/styles.css" type="text/css" rel="stylesheet"/>
    <script src="../resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="../resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="../resources/scripts/axure/axQuery.js"></script>
    <script src="../resources/scripts/axure/globals.js"></script>
    <script src="../resources/scripts/axutils.js"></script>
    <script src="../resources/scripts/axure/annotation.js"></script>
    <script src="../resources/scripts/axure/axQuery.std.js"></script>
    <script src="../resources/scripts/axure/doc.js"></script>
    <script src="../data/document.js"></script>
    <script src="../resources/scripts/messagecenter.js"></script>
    <script src="../resources/scripts/axure/events.js"></script>
    <script src="../resources/scripts/axure/recording.js"></script>
    <script src="../resources/scripts/axure/action.js"></script>
    <script src="../resources/scripts/axure/expr.js"></script>
    <script src="../resources/scripts/axure/geometry.js"></script>
    <script src="../resources/scripts/axure/flyout.js"></script>
    <script src="../resources/scripts/axure/ie.js"></script>
    <script src="../resources/scripts/axure/model.js"></script>
    <script src="../resources/scripts/axure/repeater.js"></script>
    <script src="../resources/scripts/axure/sto.js"></script>
    <script src="../resources/scripts/axure/utils.temp.js"></script>
    <script src="../resources/scripts/axure/variables.js"></script>
    <script src="../resources/scripts/axure/drag.js"></script>
    <script src="../resources/scripts/axure/move.js"></script>
    <script src="../resources/scripts/axure/visibility.js"></script>
    <script src="../resources/scripts/axure/style.js"></script>
    <script src="../resources/scripts/axure/adaptive.js"></script>
    <script src="../resources/scripts/axure/tree.js"></script>
    <script src="../resources/scripts/axure/init.temp.js"></script>
    <script src="../files/选座购票/data.js"></script>
    <script src="../resources/scripts/axure/legacy.js"></script>
    <script src="../resources/scripts/axure/viewer.js"></script>
    <script src="../resources/scripts/axure/math.js"></script>
    <script type=
    "text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
    
    <style type="text/css">
	td {
	color: #ccc;
	font-size: 12px;
	height: 24px;
	}
	
	.btn{
	height: 24px;
	width: 50px;
	background-color: yellow;
	}
	
	</style>
	
	<script language="javaScript">
	
		function back()
		{
			window.history.back();
		}
		
		var selectSeat =new Array();
		
		
      function buttonbgcolor(button)
      {
         var seats = document.getElementById('seats');
         seats.value="";
        
          if(button.style.backgroundColor!="red"){
          	if(button.style.backgroundColor=="green")
         	{
            	button.style.backgroundColor='yellow';;
            
            	for(var i=0;i<selectSeat.length;i++)
            	{
                	if(button.value==selectSeat[i])
                	{
                     	selectSeat.splice(i,1);
               	 	}
            	}
            	
          	}else{
          		button.style.backgroundColor='green';
           		selectSeat.push(button.value);
          	}
         }
         
         for(var j=0;j<selectSeat.length;j++)
         {
            seats.value+=selectSeat[j]+',';
         }
         
      }
      
      function ok()
      {
		 if(selectSeat.length <1)
         {
            alert('请选择座位！');
            return;
         }
 
      	document.forms[0].action = "/order";
		document.forms[0].submit();
      }
</script>
    
    
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u366" class="ax_default box_2">
        <div id="u366_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u367" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u368" class="ax_default image">
        <img id="u368_img" class="img " src="images/首页/u2.png"/>
        <!-- Unnamed () -->
        <div id="u369" class="text" style="visibility: visible;">
          <p><span>网站logo</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u370" class="ax_default text_field">
        <input id="u370_input" type="text" value="默认城市（定位） | 根据ip地址所定位的位置"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u371" class="ax_default primary_button">
        <div id="u371_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u372" class="text" style="visibility: visible;">
          <p><span>闪电购票</span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u373" class="ax_default image">
        <img id="u373_img" class="img " src="images/首页/u8.png"/>
        <!-- Unnamed () -->
        <div id="u374" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u375" class="ax_default text_field">
        <input id="u375_input" type="text" value="&nbsp; 登录"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u376" class="ax_default text_field">
        <input id="u376_input" type="text" value="&nbsp; 注册"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u377" class="ax_default box_1">
        <div id="u377_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u378" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (椭圆形) -->
      <div id="u379" class="ax_default ellipse">
        <img id="u379_img" class="img " src="images/选座购票/u379.png"/>
        <!-- Unnamed () -->
        <div id="u380" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (水平线) -->
      <div id="u381" class="ax_default line">
        <img id="u381_img" class="img " src="images/选座购票/u381.png"/>
        <!-- Unnamed () -->
        <div id="u382" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (椭圆形) -->
      <div id="u383" class="ax_default ellipse">
        <img id="u383_img" class="img " src="images/选座购票/u379.png"/>
        <!-- Unnamed () -->
        <div id="u384" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (椭圆形) -->
      <div id="u385" class="ax_default ellipse">
        <img id="u385_img" class="img " src="images/选座购票/u379.png"/>
        <!-- Unnamed () -->
        <div id="u386" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (水平线) -->
      <div id="u387" class="ax_default line">
        <img id="u387_img" class="img " src="images/选座购票/u387.png"/>
        <!-- Unnamed () -->
        <div id="u388" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (水平线) -->
      <div id="u389" class="ax_default line">
        <img id="u389_img" class="img " src="images/选座购票/u389.png"/>
        <!-- Unnamed () -->
        <div id="u390" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (椭圆形) -->
      <div id="u391" class="ax_default ellipse">
        <img id="u391_img" class="img " src="images/选座购票/u379.png"/>
        <!-- Unnamed () -->
        <div id="u392" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u393" class="ax_default label">
        <div id="u393_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u394" class="text" style="visibility: visible;">
          <p><span>1、选择场次</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u395" class="ax_default label">
        <div id="u395_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u396" class="text" style="visibility: visible;">
          <p><span>2、选座订票</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u397" class="ax_default label">
        <div id="u397_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u398" class="text" style="visibility: visible;">
          <p><span>3、确认订单</span></p>
        </div>
      </div>

      <!-- Unnamed (水平线) -->
      <div id="u399" class="ax_default line">
        <img id="u399_img" class="img " src="images/选座购票/u389.png"/>
        <!-- Unnamed () -->
        <div id="u400" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u401" class="ax_default label">
        <div id="u401_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u402" class="text" style="visibility: visible;">
          <p><span>4、股票成功</span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u403" class="ax_default image">
        <img id="u403_img" class="img " src="images/首页/u8.png"/>
        <!-- Unnamed () -->
        <div id="u404" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u405" class="ax_default image">
        <img id="u405_img" class="img " src="images/首页/u8.png"/>
        <!-- Unnamed () -->
        <div id="u406" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u407" class="ax_default image">
        <img id="u407_img" class="img " src="images/首页/u8.png"/>
        <!-- Unnamed () -->
        <div id="u408" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u409" class="ax_default image">
        <img id="u409_img" class="img " src="images/首页/u8.png"/>
        <!-- Unnamed () -->
        <div id="u410" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u411" class="ax_default box_3">
        <div id="u411_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u412" class="text" style="visibility: visible;">
          <p><span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 影片&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 影院&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 日期&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 时间&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 语言/制式&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 影厅&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 票价</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u413" class="ax_default box_1">
        <div id="u413_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u414" class="text" style="visibility: visible;">
          <p><span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 1 2只猴子&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 鼎盛广场那个&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 2016-6-21&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 12：30&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 英 语/3D&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 二号厅&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 28</span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u415" class="ax_default image">
<!--         <img id="u415_img" class="img " src="images/选座购票/u415.png"/> -->

<!-- !!!!!!!!!!!!!!!!这里是订票页面  283-318 -->
			<form action="" method="post">
		
				<input type="hidden" name="seats" id="seats" />
				<input type="hidden" name="pid" value="${play.pid }" />
		         <table align="center" border="1" style="margin-top: 10px;">
		         	<c:forEach begin="0" end="${hall.seatRow}" varStatus="str" >
		         	<tr>
		         		<c:forEach begin="0" end="${hall.seatRow}"  varStatus="stc">
						<td><input type="button" name="0${str.count}-0${stc.count}"   id="0${str.count}-0${stc.count}" 
									value="0${str.count}-0${stc.count}" onclick="buttonbgcolor(this)"  class="btn"/>
							<c:forEach items="${orders}" var="o">
<!-- 									<script> -->
<%-- // 										alert("${o.seatRow} - ${str.count} & ${o.seatCol} - ${stc	.count}"); --%>
<!-- 									</script> -->
<!-- 								<s:if test="#o.row==#str.count&& #o.col==#stc.count">  -->
								<c:if test="${o.seatRow  == str.count && o.seatCol  == stc.count}">
									<script >  
 											document.getElementById("0${str.count}-0${stc.count}").style.backgroundColor = 'red';
									</script>
								</c:if>
							</c:forEach>
						</td>
						</c:forEach>
					</tr>
		         	</c:forEach>
				</table>
		
				<table align="center" width="200" style="font-size: 12px ;">
					<tr>
						<td ><a href="javascript:back();" style="color:black" >选择影片</a><< </td>
						<td>>><a href="javascript:ok(); " style="color:black">确定订票</a></td>
					</tr>
				</table>
				
			<div style="border: red 1px dotted; margin-left: 60px;margin-right: 60px;margin-bottom: 20px; position:relative">
			</div>
				</div>
        </form>
        
        



        <!-- Unnamed () -->
        <div id="u416" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u417" class="ax_default image">
        <img id="u417_img" class="img " src="images/选座购票/u417.png"/>
        <!-- Unnamed () -->
        <div id="u418" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u419" class="ax_default box_3">
        <div id="u419_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u420" class="text" style="visibility: visible;">
          <p><span>已选择&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 个座位，再次点击取消</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u421" class="ax_default text_field">
        <input id="u421_input" type="text" value=""/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u422" class="ax_default button">
        <div id="u422_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u423" class="text" style="visibility: visible;">
          <p><span>选座确认</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u424" class="ax_default label">
        <div id="u424_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u425" class="text" style="visibility: visible;">
          <p><span>座位：</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u426" class="ax_default text_field">
        <input id="u426_input" type="text" value=""/>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u427" class="ax_default image">
        <img id="u427_img" class="img " src="images/首页/u121.png"/>
        <!-- Unnamed () -->
        <div id="u428" class="text" style="visibility: visible;">
          <p><span>网页logo</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u429" class="ax_default link_button">
        <div id="u429_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u430" class="text" style="visibility: visible;">
          <p><span>关于我们</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u431" class="ax_default link_button">
        <div id="u431_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u432" class="text" style="visibility: visible;">
          <p><span>加入我们</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u433" class="ax_default link_button">
        <div id="u433_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u434" class="text" style="visibility: visible;">
          <p><span>联系我们</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u435" class="ax_default link_button">
        <div id="u435_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u436" class="text" style="visibility: visible;">
          <p><span>影院公告</span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u437" class="ax_default image">
        <img id="u437_img" class="img " src="images/选座购票/u437.png"/>
        <!-- Unnamed () -->
        <div id="u438" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>
    </div>
  </body>
</html>
