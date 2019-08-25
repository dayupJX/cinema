<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>电影一信息情况</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="../resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="../resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="../data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="../files/电影一信息情况/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="../files/电影一信息情况/data.js"></script>
    <script src="../resources/scripts/axure/legacy.js"></script>
    <script src="../resources/scripts/axure/viewer.js"></script>
    <script src="../resources/scripts/axure/math.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
    <style type="text/css">
    	.div1{
    		position:absolute;
    		top:540px;
   		  left:155px;
		  width:140px;
		  height:40px;
    	}
    </style>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u184" class="ax_default box_1">
        <div id="u184_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u185" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u186" class="ax_default box_2">
        <div id="u186_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u187" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u188" class="ax_default image">
        <img id="u188_img" class="img " src="images/首页/u2.png"/>
        <!-- Unnamed () -->
        <div id="u189" class="text" style="visibility: visible;">
          <p><span>网站logo</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u190" class="ax_default text_field">
        <input id="u190_input" type="text" value="默认城市（定位） | 根据ip地址所定位的位置"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u191" class="ax_default primary_button">
        <div id="u191_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u192" class="text" style="visibility: visible;">
          <p><span>闪电购票</span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u193" class="ax_default image">
        <img id="u193_img" class="img " src="images/首页/u8.png"/>
        <!-- Unnamed () -->
        <div id="u194" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u195" class="ax_default text_field">
        <input id="u195_input" type="text" value="&nbsp; 登录"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u196" class="ax_default text_field">
        <input id="u196_input" type="text" value="&nbsp; 注册"/>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u197" class="ax_default image">
<!--         <img id="u197_img" class="img " src="images/电影一信息情况/u197.png"/> -->
        <img id="u197_img" class="img " src="${pageContext.request.contextPath}/images/${film.mainImage}"/>
        <!-- Unnamed () -->
        <div id="u198" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
<!--       <div id="u199" class="ax_default button"> -->
<!--         <div id="u199_div" class=""></div> -->
<!--         Unnamed () -->
<!--         <div id="u200" class="text" style="visibility: visible;"> -->
<!--           <p><span>选座购票</span></p> -->
<!--         </div> -->
<!--       </div> -->
      
      <form action="/bookTicket/${ film.fid }" method="post">
	      <div class="div1">
	      	<input type="submit" value="购票">
	      </div>
      </form>
      

      <!-- Unnamed (文本框) -->
      <div id="u201" class="ax_default text_field">
        <input id="u201_input" type="text" value="${film.fname}"/>
      </div>

      <!-- Unnamed (水平线) -->
      <div id="u202" class="ax_default line">
        <img id="u202_img" class="img " src="images/电影一信息情况/u202.png"/>
        <!-- Unnamed () -->
        <div id="u203" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u204" class="ax_default _文本段落">
        <div id="u204_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u205" class="text" style="visibility: visible;">
          <p><span>&nbsp;&nbsp;&nbsp; 上映日期：${film.dateToOn}</span></p><p><span>&nbsp;&nbsp;&nbsp; 导演：${film.fdirector}</span></p><p><span>&nbsp;&nbsp;&nbsp; 主演：${film.mainStar}</span></p><p><span>&nbsp;&nbsp;&nbsp; 类型： ${film.type}</span></p><p><span>&nbsp;&nbsp;&nbsp; 国家：${film.country}</span></p><p><span>&nbsp;&nbsp;&nbsp; 版本：</span></p><p><span>&nbsp;&nbsp;&nbsp; 片长：${film.filmLength}</span></p>
        </div>
      </div>

      <!-- Unnamed (形状) -->
      <div id="u206" class="ax_default label">
        <img id="u206_img" class="img " src="resources/images/transparent.gif"/>
        <!-- Unnamed () -->
        <div id="u207" class="text" style="visibility: visible;">
          <p><span>影片剧情</span></p>
        </div>
      </div>

      <!-- Unnamed (水平线) -->
      <div id="u208" class="ax_default line">
        <img id="u208_img" class="img " src="images/电影一信息情况/u202.png"/>
        <!-- Unnamed () -->
        <div id="u209" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u210" class="ax_default _文本段落">
        <div id="u210_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u211" class="text" style="visibility: visible;">
<!--           <p><span>平静祥和的艾泽拉斯大陆陷入战争即将爆发的边缘，它的文明遭到令人畏惧的种族的侵略：兽人战士逃离濒临灭亡的家园，意欲占领新的土地。黑暗之门开启，两个世界连接在了一起。一方阵营面临着毁灭，一方阵营面临着消亡。敌对的两位英雄不得不展开生死较量，他们各自的家人、人民和家园的命运悬于一线……</span></p> -->
          <p><span>${film.fdesc}</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u212" class="ax_default label">
        <div id="u212_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u213" class="text" style="visibility: visible;">
          <p><span>预告片</span></p>
        </div>
      </div>

      <!-- Unnamed (水平线) -->
      <div id="u214" class="ax_default line">
        <img id="u214_img" class="img " src="images/电影一信息情况/u214.png"/>
        <!-- Unnamed () -->
        <div id="u215" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u216" class="ax_default image">
<!--         <img id="u216_img" class="img " src="images/电影一信息情况/u216.png"/> -->
        <img id="u216_img" class="img " src="${pageContext.request.contextPath}/images/${film.trailer}"/>
        <!-- Unnamed () -->
        <div id="u217" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u218" class="ax_default label">
        <div id="u218_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u219" class="text" style="visibility: visible;">
          <p><span>精彩剧照</span></p>
        </div>
      </div>

      <!-- Unnamed (水平线) -->
      <div id="u220" class="ax_default line">
        <img id="u220_img" class="img " src="images/电影一信息情况/u214.png"/>
        <!-- Unnamed () -->
        <div id="u221" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u222" class="ax_default image">
<!--         <img id="u222_img" class="img " src="images/电影一信息情况/u216.png"/> -->
        <img id="u222_img" class="img " src="${pageContext.request.contextPath}/images/${film.fimage1}"/>
        <!-- Unnamed () -->
        <div id="u223" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u224" class="ax_default image">
<!--         <img id="u224_img" class="img " src="images/电影一信息情况/u216.png"/> -->
        <img id="u224_img" class="img " src="${pageContext.request.contextPath}/images/${film.fimage3}"/>
        <!-- Unnamed () -->
        <div id="u225" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u226" class="ax_default image">
<!--         <img id="u226_img" class="img " src="images/电影一信息情况/u216.png"/> -->
        <img id="u226_img" class="img " src="${pageContext.request.contextPath}/images/${film.fimage2}"/>
        <!-- Unnamed () -->
        <div id="u227" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u228" class="ax_default image">
        <img id="u228_img" class="img " src="images/首页/u121.png"/>
        <!-- Unnamed () -->
        <div id="u229" class="text" style="visibility: visible;">
          <p><span>网页logo</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u230" class="ax_default link_button">
        <div id="u230_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u231" class="text" style="visibility: visible;">
          <p><span>关于我们</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u232" class="ax_default link_button">
        <div id="u232_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u233" class="text" style="visibility: visible;">
          <p><span>加入我们</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u234" class="ax_default link_button">
        <div id="u234_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u235" class="text" style="visibility: visible;">
          <p><span>联系我们</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u236" class="ax_default link_button">
        <div id="u236_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u237" class="text" style="visibility: visible;">
          <p><span>影院公告</span></p>
        </div>
      </div>
    </div>
  </body>
  
<!--   <script> -->
<!-- //   	$(function() { -->
<!-- //   		$("#u199_div").click(function() { -->
<!-- //   			location.href = "${pageContext.request.contextPath}/bookTicket/${film.fid}" --%>
<!-- //   		}); -->
<!-- //   	}) -->
<!--   </script> -->
  
</html>
