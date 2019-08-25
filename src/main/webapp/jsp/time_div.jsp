<%@ page pageEncoding="UTF-8"%>
<script src="../js/util.js"></script>
<div>
	<div>${msg}</div>
	<div><span id="mytime">5</span>秒后跳转到<a href="${url}">登录页面</a>！</div>
</div>
<script type="text/javascript">
	var goUrl = "${url}" ;
	goTime() ;
</script>