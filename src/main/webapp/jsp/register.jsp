<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <title>会员注册</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-t
    ype" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/会员注册/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/会员注册/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script src="resources/scripts/axure/math.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
      
      //        自加
        function refresh() {
            document.getElementById('u166_img').src="/kaptcha?"+Math.random();
        }
    </script>
    <script type="text/javascript" src="js/register.js"></script>
    <link rel="stylesheet" type="text/css" href="css/check.css">
  </head>
  <body>
  
  	<form id="registerForm" action="/register" method="post">
    <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u154" class="ax_default box_1">
        <div id="u154_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u155" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u156" class="ax_default text_field">
        <input id="u156_input" type="text" value=" ${msg}     会员注册"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u157" class="ax_default text_field">
        <input id="u157_input" type="text" value="手机号："/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u158" class="ax_default text_field" value="">
        <input id="u158_input" type="text" name="telephone"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u159" class="ax_default text_field">
        <input id="u159_input" type="text" value="*必填项"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u160" class="ax_default text_field">
        <input id="u160_input" type="text" value="*必填项"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u161" class="ax_default text_field">
        <input id="u161_input" type="text" value="*必填项"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u162" class="ax_default text_field">
        <input id="u162_input" type="text" value="*必填项"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u163" class="ax_default text_field">
<!--         <input id="u163_input" type="text" value="点击获取手机验证码"/> -->
			<span id="u163_span">点击获取手机验证码</span>
			
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u164" class="ax_default text_field">
        <input id="u164_input" type="text" value="图形验证码："/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u165" class="ax_default text_field">
        <input id="u165_input" type="text" name="graphIdentity"/>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u166" class="ax_default image">
        <img id="u166_img" class="img " src="/kaptcha"/>
        <!-- Unnamed () -->
        <div id="u167" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u168" class="ax_default text_field">
<!--         <input id="u168_input" type="text" value="换一张" onclick="refresh()"/> -->
			<span onclick="refresh()">换一张</span>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u169" class="ax_default text_field">
        <input id="u169_input" type="text" value="手机验证码 :" />
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u170" class="ax_default text_field">
        <input id="u170_input" type="text" name="phoneIdentity"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u171" class="ax_default text_field">
        <input id="u171_input" type="text" value="密码："/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u172" class="ax_default text_field">
        <input id="u172_input" type="text" value="确认密码："/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u173" class="ax_default text_field">
        <input id="u173_input" type="text" value="真实姓名："/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u174" class="ax_default text_field">
        <input id="u174_input" type="password" name="password"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u175" class="ax_default text_field">
        <input id="u175_input" type="text" name="name"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u176" class="ax_default text_field">
        <input id="u176_input" type="password" name="password2"/>
      </div>

      <!-- Unnamed (水平线) -->
      <div id="u177" class="ax_default line">
        <img id="u177_img" class="img " src="images/会员注册/u177.png"/>
        <!-- Unnamed () -->
        <div id="u178" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u179" class="ax_default text_field">
        <input id="u179_input" type="text" value="更多信息"/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u180" class="ax_default text_field">
        <input id="u180_input" type="text" value="电子邮箱："/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u181" class="ax_default text_field">
        <input id="u181_input" type="text" name="email"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u182" class="ax_default button">
        <div id="u182_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u183" class="text" style="visibility: visible;">
<!--           <p><span>注册</span></p> -->
				<button id="btn">注册</button>
        </div>
      </div>
    </div>
    </form>
    
  </body>
</html>
