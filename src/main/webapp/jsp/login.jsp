<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>会员登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/会员登录/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/axure/axQuery.js"></script>
    <script src="resources/scripts/axure/globals.js"></script>
    <script src="resources/scripts/axutils.js"></script>
    <script src="resources/scripts/axure/annotation.js"></script>
    <script src="resources/scripts/axure/axQuery.std.js"></script>
    <script src="resources/scripts/axure/doc.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/messagecenter.js"></script>
    <script src="resources/scripts/axure/events.js"></script>
    <script src="resources/scripts/axure/recording.js"></script>
    <script src="resources/scripts/axure/action.js"></script>
    <script src="resources/scripts/axure/expr.js"></script>
    <script src="resources/scripts/axure/geometry.js"></script>
    <script src="resources/scripts/axure/flyout.js"></script>
    <script src="resources/scripts/axure/ie.js"></script>
    <script src="resources/scripts/axure/model.js"></script>
    <script src="resources/scripts/axure/repeater.js"></script>
    <script src="resources/scripts/axure/sto.js"></script>
    <script src="resources/scripts/axure/utils.temp.js"></script>
    <script src="resources/scripts/axure/variables.js"></script>
    <script src="resources/scripts/axure/drag.js"></script>
    <script src="resources/scripts/axure/move.js"></script>
    <script src="resources/scripts/axure/visibility.js"></script>
    <script src="resources/scripts/axure/style.js"></script>
    <script src="resources/scripts/axure/adaptive.js"></script>
    <script src="resources/scripts/axure/tree.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="files/会员登录/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script src="resources/scripts/axure/math.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
       
//        自加
        function refresh() {
            document.getElementById('u148_img').src="/kaptcha?"+Math.random();
        }
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u138" class="ax_default box_1">
        <div id="u138_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u139" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u140" class="ax_default image">
        <img id="u140_img" class="img " src="images/会员登录/u140.png"/>
        <!-- Unnamed () -->
        <div id="u141" class="text" style="visibility: visible;">
          <p><span>影院logo</span></p>
        </div>
      </div>
			

<!-- 自制表单	-->
	<form action="${pageContext.request.contextPath}/login" method="post">
      <!-- Unnamed (文本框) -->
      <div id="u142" class="ax_default text_field">
        <input id="u142_input" type="text" value="会员登录          ${msg}" >
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u143" class="ax_default text_field" >
        <input id="u143_input" type="text" placeholder="请输入手机号" name="telephone"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u144" class="ax_default text_field">
        <input id="u144_input" type="password"  name="password" placeholder="请输入密码"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u145" class="ax_default text_field">
        <input id="u145_input" type="text" placeholder="请输入验证码" name="verifyCodeActual"/>
      </div>


      <!-- Unnamed (矩形) -->
      <div id="u146" class="ax_default link_button">
        <div id="u146_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u147" class="text" style="visibility: visible;">
          <p><span onclick="refresh()">换一张</span></p>
        </div>
      </div>
      <!-- Unnamed (图片) -->
      <div id="u148" class="ax_default image">
        <img id="u148_img" class="img " alt="点击更换" title="点击更换" onclick="refresh()" src="/kaptcha"/>
        <!-- Unnamed () -->
        <div id="u149" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u150" class="ax_default button">
        <div id="u150_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u151" class="text" style="visibility: visible;">
          <p> <input type="submit"  ></p>
        </div>
      </div>
	</from>
	
	
      <!-- Unnamed (文本框) -->
      <div id="u152" class="ax_default text_field">
        <input id="u152_input" type="text" value="返回 影院首页"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u153" class="ax_default text_field">
<!--         <input id="u153_input" type="text" value="注册新用户"/> -->
			<a href="/registerUI">注册新用户</a>
      </div>
    </div>
  </body>
</html>
