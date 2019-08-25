<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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

	<c:if test="${empty user}">
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
	</c:if>

	<c:if test="${not empty user }">
		 <div id="u137" class="ax_default text_field">
       	欢迎:<input id="u137_input" type="text" value="${user.username }" readonly/>
     	 </div>
	</c:if>

    </div>