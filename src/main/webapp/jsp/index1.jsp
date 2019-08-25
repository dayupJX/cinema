<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
    <title>首页</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="../resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="../resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="../data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="../files/首页/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="../../resources/scripts/axure/events.js"></script>
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
    <script src="../files/首页/data.js"></script>
    <script src="../resources/scripts/axure/legacy.js"></script>
    <script src="../resources/scripts/axure/viewer.js"></script>
    <script src="../resources/scripts/axure/math.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (矩形) -->
      <div id="u0" class="ax_default box_2">
        <div id="u0_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u1" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u2" class="ax_default image">
        <img id="u2_img" class="img " src="images/首页/u2.png"/>
        <!-- Unnamed () -->
        <div id="u3" class="text" style="visibility: visible;">
          <p><span>网站logo</span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u4" class="ax_default text_field">
<!--         <input id="u4_input" type="text" value="默认城市（定位） | 根据ip地址所定位的位置"/> -->
        <input id="u4_input" type="text" value="默认城市（定位） | 根据ip地址所定位的位置"/>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u5" class="ax_default primary_button">
        <div id="u5_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u6" class="text" style="visibility: visible;">
          <p><span>闪电购票</span></p>
        </div>
      </div>

      <!-- 地址选择 (动态面板) -->
      <div id="u7" class="ax_default ax_default_hidden" data-label="地址选择" style="display: none; visibility: hidden">
        <div id="u7_state0" class="panel_state" data-label="&nbsp;A ~ Z 的字母">
          <div id="u7_state0_content" class="panel_state_content">
          </div>
        </div>
        <div id="u7_state1" class="panel_state" data-label="大城市">
          <div id="u7_state1_content" class="panel_state_content">
          </div>
        </div>
        <div id="u7_state2" class="panel_state" data-label="查找">
          <div id="u7_state2_content" class="panel_state_content">
          </div>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u8" class="ax_default image">
<!--         <img id="u8_img" class="img " src="images/首页/u8.png"/> -->
			 <a id="u8_input" href="${pageContext.request.contextPath}/memberUI">会员中心</a>
			
        <!-- Unnamed () -->
        <div id="u9" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u10" class="ax_default text_field">
<!--         <input  id="u10_input" type="text" value="&nbsp; 登录"/> -->
        	<a id="u10_input" href="${pageContext.request.contextPath}/loginUI">登录</a>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u11" class="ax_default text_field">
<!--         <input id="u11_input" type="text" value="&nbsp; 注册"/> -->
		  	<a id="u11_input" href="${pageContext.request.contextPath}/registerUI">注册</a>
      </div>

      <!-- 电影宣传图的循环切换 (动态面板) -->
      <div id="u12" class="ax_default" data-label="电影宣传图的循环切换">
        <div id="u12_state0" class="panel_state" data-label="电影一宣传图">
          <div id="u12_state0_content" class="panel_state_content">

            <!-- Unnamed (图片) -->
            <div id="u13" class="ax_default image">
              <img id="u13_img" class="img " src="images/首页/u13.png"/>
              <!-- Unnamed () -->
              <div id="u14" class="text" style="visibility: visible;">
                <p><span>you see me</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u12_state1" class="panel_state" data-label="电影二宣传图">
          <div id="u12_state1_content" class="panel_state_content">

            <!-- Unnamed (图片) -->
            <div id="u15" class="ax_default image">
              <img id="u15_img" class="img " src="images/首页/u13.png"/>
              <!-- Unnamed () -->
              <div id="u16" class="text" style="visibility: visible;">
                <p><span>you got me？</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u12_state2" class="panel_state" data-label="电影三宣传图">
          <div id="u12_state2_content" class="panel_state_content">

            <!-- Unnamed (图片) -->
            <div id="u17" class="ax_default image">
              <img id="u17_img" class="img " src="images/首页/u13.png"/>
              <!-- Unnamed () -->
              <div id="u18" class="text" style="visibility: visible;">
                <p><span>这东西其实挺有趣的</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u12_state3" class="panel_state" data-label="电影四宣传图">
          <div id="u12_state3_content" class="panel_state_content">

            <!-- Unnamed (图片) -->
            <div id="u19" class="ax_default image">
              <img id="u19_img" class="img " src="images/首页/u13.png"/>
              <!-- Unnamed () -->
              <div id="u20" class="text" style="visibility: visible;">
                <p><span>guess what？</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u12_state4" class="panel_state" data-label="电影五宣传图">
          <div id="u12_state4_content" class="panel_state_content">

            <!-- Unnamed (图片) -->
            <div id="u21" class="ax_default image">
              <img id="u21_img" class="img " src="images/首页/u13.png"/>
              <!-- Unnamed () -->
              <div id="u22" class="text" style="visibility: visible;">
                <p><span>全都是泡沫~</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u23" class="ax_default box_3">
        <div id="u23_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u24" class="text" style="display: none; visibility: hidden">
          <p><span></span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u25" class="ax_default button">
        <div id="u25_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u26" class="text" style="visibility: visible;">
          <p><span>正在热映</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u27" class="ax_default button">
        <div id="u27_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u28" class="text" style="visibility: visible;">
          <p><span>即将上映</span></p>
        </div>
      </div>


<%-- 	<c:forEach items="${filmList} var="film"> --%>
      <!-- 正在热映的电影 (动态面板) -->
      <div id="u29" class="ax_default" data-label="正在热映的电影">
        <div id="u29_state0" class="panel_state" data-label="State1">
          <div id="u29_state0_content" class="panel_state_content">

            <!-- Unnamed (文本框) -->
            <div id="u30" class="ax_default text_field">
              <input id="u30_input" type="text" value="热门电影 ；"/>
            </div>

            <!-- Unnamed (图片) -->
            <div id="u31" class="ax_default image">
<!--               <img id="u31_img" class="img " src="images/首页/u31.png"/> -->
              <img id="u31_img" class="img " src="images/${filmList[0].mainImage}"/>
<%-- 				<h1>${filmList[0].fname}</h1> --%>

              <!-- Unnamed () -->
              <div id="u32" class="text" style="visibility: visible;">
                <p><span>热门电影一宣传图</span></p>
              </div>
            </div>

            <!-- Unnamed (图片) -->
            <div id="u33" class="ax_default image">
<!--               <img id="u33_img" class="img " src="images/首页/u31.png"/> -->
               <img id="u31_img" class="img " src="images/${filmList[3].mainImage}"/>
              <!-- Unnamed () -->
              <div id="u34" class="text" style="visibility: visible;">
                <p><span>热门电影四宣传图</span></p>
              </div>
            </div>

            <!-- Unnamed (图片) -->
            <div id="u35" class="ax_default image">
<!--           <img id="u35_img" class="img " src="images/首页/u31.png"/> -->
					 <img id="u31_img" class="img " src="images/${filmList[2].mainImage}"/>
              <!-- Unnamed () -->
              <div id="u36" class="text" style="visibility: visible;">
                <p><span>热门电影三宣传图</span></p>
              </div>
            </div>

            <!-- Unnamed (图片) -->
            <div id="u37" class="ax_default image">
<!--               <img id="u37_img" class="img " src="images/首页/u31.png"/> -->
				 <img id="u31_img" class="img " src="images/${filmList[1].mainImage}"/>
              <!-- Unnamed () -->
              <div id="u38" class="text" style="visibility: visible;">
                <p><span>热门电影二宣传图</span></p>
              </div>
            </div>

            <!-- Unnamed (图片) -->
            <div id="u39" class="ax_default image">
<!--               <img id="u39_img" class="img " src="images/首页/u31.png"/> -->
               <img id="u31_img" class="img " src="images/${filmList[4].mainImage}"/>
              <!-- Unnamed () -->
              <div id="u40" class="text" style="visibility: visible;">
                <p><span>热门电影六宣传图</span></p>
              </div>
            </div>

            <!-- Unnamed (图片) -->
            <div id="u41" class="ax_default image">
<!--               <img id="u41_img" class="img " src="images/首页/u31.png"/> -->
               <img id="u31_img" class="img " src="images/${filmList[4].mainImage}"/>
              <!-- Unnamed () -->
              <div id="u42" class="text" style="visibility: visible;">
                <p><span>热门电影五宣传图</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u43" class="ax_default button">
              <div id="u43_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u44" class="text" style="visibility: visible;">
                <p><span>选座购票</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u45" class="ax_default button">
              <div id="u45_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u46" class="text" style="visibility: visible;">
                <p><span>选座购票</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u47" class="ax_default button">
              <div id="u47_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u48" class="text" style="visibility: visible;">
                <p><span>选座购票</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u49" class="ax_default button">
              <div id="u49_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u50" class="text" style="visibility: visible;">
                <p><span>选座购票</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u51" class="ax_default button">
              <div id="u51_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u52" class="text" style="visibility: visible;">
                <p><span>选座购票</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u53" class="ax_default button">
              <div id="u53_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u54" class="text" style="visibility: visible;">
                <p><span>选座购票</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>
<%--       </c:forEach> --%>
      
      
      
      

      <!-- 即将上映的电影 (动态面板) -->
      <div id="u55" class="ax_default ax_default_hidden" data-label="即将上映的电影" style="display: none; visibility: hidden">
        <div id="u55_state0" class="panel_state" data-label="State1">
          <div id="u55_state0_content" class="panel_state_content">

            <!-- Unnamed (文本框) -->
            <div id="u56" class="ax_default text_field">
              <input id="u56_input" type="text" value="热门电影；"/>
            </div>

            <!-- Unnamed (图片) -->
            <div id="u57" class="ax_default image">
              <img id="u57_img" class="img " src="images/首页/u31.png"/>
              <!-- Unnamed () -->
              <div id="u58" class="text" style="visibility: visible;">
                <p><span>未上映电影一信息情况</span></p>
              </div>
            </div>

            <!-- Unnamed (图片) -->
            <div id="u59" class="ax_default image">
              <img id="u59_img" class="img " src="images/首页/u31.png"/>
              <!-- Unnamed () -->
              <div id="u60" class="text" style="visibility: visible;">
                <p><span>未上映电影五情况 </span></p>
              </div>
            </div>

            <!-- Unnamed (图片) -->
            <div id="u61" class="ax_default image">
              <img id="u61_img" class="img " src="images/首页/u31.png"/>
              <!-- Unnamed () -->
              <div id="u62" class="text" style="visibility: visible;">
                <p><span>未上映电影四信息情况</span></p>
              </div>
            </div>

            <!-- Unnamed (图片) -->
            <div id="u63" class="ax_default image">
              <img id="u63_img" class="img " src="images/首页/u31.png"/>
              <!-- Unnamed () -->
              <div id="u64" class="text" style="visibility: visible;">
                <p><span>未上映电影三信息情况</span></p>
              </div>
            </div>

            <!-- Unnamed (图片) -->
            <div id="u65" class="ax_default image">
              <img id="u65_img" class="img " src="images/首页/u31.png"/>
              <!-- Unnamed () -->
              <div id="u66" class="text" style="visibility: visible;">
                <p><span>未上映电影二信息情况</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u67" class="ax_default button">
              <div id="u67_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u68" class="text" style="visibility: visible;">
                <p><span>我想看</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u69" class="ax_default button">
              <div id="u69_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u70" class="text" style="visibility: visible;">
                <p><span>我想看</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u71" class="ax_default button">
              <div id="u71_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u72" class="text" style="visibility: visible;">
                <p><span>我想看</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u73" class="ax_default button">
              <div id="u73_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u74" class="text" style="visibility: visible;">
                <p><span>我想看</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u75" class="ax_default button">
              <div id="u75_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u76" class="text" style="visibility: visible;">
                <p><span>我想看</span></p>
              </div>
            </div>

            <!-- 用户登录界面 (动态面板) -->
            <div id="u77" class="ax_default ax_default_hidden" data-label="用户登录界面" style="display: none; visibility: hidden">
              <div id="u77_state0" class="panel_state" data-label="State1">
                <div id="u77_state0_content" class="panel_state_content">

                  <!-- Unnamed (矩形) -->
                  <div id="u78" class="ax_default box_1">
                    <div id="u78_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u79" class="text" style="display: none; visibility: hidden">
                      <p><span></span></p>
                    </div>
                  </div>

                  <!-- Unnamed (文本框) -->
                  <div id="u80" class="ax_default text_field">
                    <input id="u80_input" type="text" value="&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 会员登录"/>
                  </div>

                  <!-- Unnamed (文本框) -->
                  <div id="u81" class="ax_default text_field">
                    <input id="u81_input" type="text" value="请输入您的用户名！"/>
                  </div>

                  <!-- Unnamed (文本框) -->
                  <div id="u82" class="ax_default text_field">
                    <input id="u82_input" type="text" value="请输入验证码"/>
                  </div>

                  <!-- Unnamed (文本框) -->
                  <div id="u83" class="ax_default text_field">
                    <input id="u83_input" type="password" value="请输入您的用户密码！"/>
                  </div>

                  <!-- 验证图 (动态面板) -->
                  <div id="u84" class="ax_default" data-label="验证图">
                    <div id="u84_state0" class="panel_state" data-label="State1">
                      <div id="u84_state0_content" class="panel_state_content">

                        <!-- Unnamed (图片) -->
                        <div id="u85" class="ax_default image">
                          <img id="u85_img" class="img " src="images/首页/u85.png"/>
                          <!-- Unnamed () -->
                          <div id="u86" class="text" style="visibility: visible;">
                            <p><span>是验证码</span></p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Unnamed (矩形) -->
                  <div id="u87" class="ax_default button">
                    <div id="u87_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u88" class="text" style="visibility: visible;">
                      <p><span>登录</span></p>
                    </div>
                  </div>

                  <!-- Unnamed (矩形) -->
                  <div id="u89" class="ax_default link_button">
                    <div id="u89_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u90" class="text" style="visibility: visible;">
                      <p><span>换一张</span></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u91" class="ax_default text_field ax_default_hidden" style="display: none; visibility: hidden">
              <input id="u91_input" type="text" value="&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 关注成功!"/>
            </div>
          </div>
        </div>
      </div>

      <!-- 选择影片 (动态面板) -->
      <div id="u92" class="ax_default ax_default_hidden" data-label="选择影片" style="display: none; visibility: hidden">
        <div id="u92_state0" class="panel_state" data-label="State1">
          <div id="u92_state0_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u93" class="ax_default box_1">
              <div id="u93_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u94" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u95" class="ax_default box_3">
              <div id="u95_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u96" class="text" style="visibility: visible;">
                <p><span>选择影片</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u97" class="ax_default button">
              <div id="u97_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u98" class="text" style="visibility: visible;">
                <p><span>独立日</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u99" class="ax_default button">
              <div id="u99_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u100" class="text" style="visibility: visible;">
                <p><span>独立日3</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u101" class="ax_default button">
              <div id="u101_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u102" class="text" style="visibility: visible;">
                <p><span>独立日2</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u92_state1" class="panel_state" data-label="State2">
          <div id="u92_state1_content" class="panel_state_content">
          </div>
        </div>
      </div>

      <!-- 选择影院 (动态面板) -->
      <div id="u103" class="ax_default ax_default_hidden" data-label="选择影院" style="display: none; visibility: hidden">
        <div id="u103_state0" class="panel_state" data-label="State1">
          <div id="u103_state0_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u104" class="ax_default box_1">
              <div id="u104_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u105" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u106" class="ax_default box_3">
              <div id="u106_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u107" class="text" style="visibility: visible;">
                <p><span>选择影院</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u108" class="ax_default button">
              <div id="u108_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u109" class="text" style="visibility: visible;">
                <p><span>水立方</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u110" class="ax_default button">
              <div id="u110_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u111" class="text" style="visibility: visible;">
                <p><span>鼎盛</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u112" class="ax_default button">
              <div id="u112_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u113" class="text" style="visibility: visible;">
                <p><span>不知道什么鬼的影院</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- 选择场次 (动态面板) -->
      <div id="u114" class="ax_default ax_default_hidden" data-label="选择场次" style="display: none; visibility: hidden">
        <div id="u114_state0" class="panel_state" data-label="State1">
          <div id="u114_state0_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u115" class="ax_default box_1">
              <div id="u115_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u116" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u117" class="ax_default box_3">
              <div id="u117_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u118" class="text" style="visibility: visible;">
                <p><span>6月22日 周三</span></p>
              </div>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u119" class="ax_default button">
              <div id="u119_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u120" class="text" style="visibility: visible;">
                <p><span>20:30&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 3D&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ￥100</span></p>
              </div>
            </div>
          </div>
        </div>
        <div id="u114_state1" class="panel_state" data-label="State2">
          <div id="u114_state1_content" class="panel_state_content">
          </div>
        </div>
      </div>

      <!-- Unnamed (图片) -->
      <div id="u121" class="ax_default image">
        <img id="u121_img" class="img " src="images/首页/u121.png"/>
        <!-- Unnamed () -->
        <div id="u122" class="text" style="visibility: visible;">
          <p><span>网页logo</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u123" class="ax_default link_button">
        <div id="u123_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u124" class="text" style="visibility: visible;">
          <p><span>关于我们</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u125" class="ax_default link_button">
        <div id="u125_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u126" class="text" style="visibility: visible;">
          <p><span>加入我们</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u127" class="ax_default link_button">
        <div id="u127_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u128" class="text" style="visibility: visible;">
          <p><span>联系我们</span></p>
        </div>
      </div>

      <!-- Unnamed (矩形) -->
      <div id="u129" class="ax_default link_button">
        <div id="u129_div" class=""></div>
        <!-- Unnamed () -->
        <div id="u130" class="text" style="visibility: visible;">
          <p><span>影院公告</span></p>
        </div>
      </div>

      <!-- 关于我们 (动态面板) -->
      <div id="u131" class="ax_default ax_default_hidden" data-label="关于我们" style="display: none; visibility: hidden">
        <div id="u131_state0" class="panel_state" data-label="State1">
          <div id="u131_state0_content" class="panel_state_content">

            <!-- Unnamed (矩形) -->
            <div id="u132" class="ax_default box_1">
              <div id="u132_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u133" class="text" style="display: none; visibility: hidden">
                <p><span></span></p>
              </div>
            </div>

            <!-- Unnamed (文本框) -->
            <div id="u134" class="ax_default text_field">
              <input id="u134_input" type="text" value="关于我们"/>
            </div>

            <!-- Unnamed (矩形) -->
            <div id="u135" class="ax_default box_3">
              <div id="u135_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u136" class="text" style="visibility: visible;">
                <p><span>公司简介：</span></p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u137" class="ax_default text_field">
        <input id="u137_input" type="text" value="会员名称"/>
      </div>
    </div>
  </body>
  
  <script>
	$(function(){
		$("#u43").click(function(){
			location.href="${pageContext.request.contextPath}/filmInfo/"+"${filmList[0].fid}";
		});
	});
	
	$(function(){
		$("#u45").click(function(){
			location.href="${pageContext.request.contextPath}/filmInfo/"+"${filmList[1].fid}";
		});
	});	
	
	$(function(){
		$("#u47").click(function(){
			location.href="${pageContext.request.contextPath}/filmInfo/"+"${filmList[2].fid}";
		});
	});
	
	$(function(){
		$("#u49").click(function(){
			location.href="${pageContext.request.contextPath}/filmInfo/"+"${filmList[3].fid}";
		});
	});
	
	$(function(){
		$("#u51").click(function(){
			location.href="${pageContext.request.contextPath}/filmInfo/"+"${filmList[4].fid}";
		});
	});
	
	$(function(){
		$("#u53").click(function(){
			location.href="${pageContext.request.contextPath}/filmInfo/"+"${filmList[5].fid}";
		});
	});			
	
	
	
	//IP定位
	 $.ajax({
		 url:"/IPAdress",
		 type:"post",
		 //data:"param="+$("#u158_input").val(),
		 contentType:"application/json;charset=utf-8",
		 dataType: "JSON",//自总：js中的json和http传输中的json形式一样，
		 				       //但前者是对象，后者是字符串，要装换后能使用
		 success:function(data){
				alert("系统定位到你在:" + data.content.address);
				$("#u4_input").val(data.content.address) ;
		 }
 
	 })
  </script>
  
  
</html>
