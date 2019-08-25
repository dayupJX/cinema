//u158_input 手机号
//u165_input 图形验证码
//u170_input 手机验证码
//u174_input 密码1
//u176_input 密码2
//u175_input 真实姓名
//u181_input	email
//u163_span  span id="u163_span">点击获取手机验证码</span>
window.onload = function() {
	document.getElementById("u158_input").addEventListener("blur", validateTelephone, false) ;
	document.getElementById("u175_input").addEventListener("blur", validateName, false) ;
	document.getElementById("u176_input").addEventListener("blur", validatePassword, false) ;
	document.getElementById("u181_input").addEventListener("blur", validateEmail, false) ;
	document.getElementById("u163_span").addEventListener("click", getCode6, false) ;
	
	
//	document.getElementById("registerForm").addEventListener("submit", function(e) {
//		if (!validateAll()) {
//			e.preventDefault() ;
//		}
//	}, false) ;
}

//function validateAll() {
//	return validateTelephone() & validateGraphIdentity() & validatePhoneIdentity()
//	& validateName() & validateEmail() ;
//}

//function validateTelephone() {
//	var num = $("#u158_input").val();
	//	var jsonStr = {
	//		"telephone" : num,
	//		"email" : "123@qq.com"
	//	};

function getCode6() {
	 $.ajax({
		 url:"/sentCode6",
		 type:"post",
		 data:"mobile="+$("#u158_input").val(),
		//  contentType:"application/json;charset=utf-8",
		 success:function(data){
		 }
	 })
}

function validateTelephone() {
	 $.ajax({
		 url:"/validate/telephone",
		 type:"post",
//		 data:'{"telephone" : $("#u158_input").val(),"email" : "123@qq.com"}',
		 data:"param="+$("#u158_input").val(),
		//  contentType:"application/json;charset=utf-8",
		 success:function(data){
			 if(data == "ok") {
				 $("#u158_input").removeClass("wrong");
				 $("#u158_input").addClass("right");
				 return true;
			 } else {
				 $("#u158_input").removeClass("right");
				 $("#u158_input").addClass("wrong");
				 return false;
			 }
		 }
 
	 })
}

//function validatePhoneIdentity() {
//	 $.ajax({
//		 url:"/validate/phoneIdentity",
//		 type:"post",
//		 data:"param="+$("#u170_input").val(),
//		// contentType:"application/json;charset=utf-8",
//		 success:function(data){
//			 if(data == "ok") {
//				 $("#u170_input").removeClass("wrong");
//				 $("#u170_input").addClass("right");
//				 return true;
//			 } else {
//				 $("#u170_input").removeClass("right");
//				 $("#u170_input").addClass("wrong");
//				 return false;
//			 }
//		 }
//
//	 })
//}

function validateName() {
	 $.ajax({
		 url:"/validate/name",
		 type:"post",
		 data:"param="+$("#u175_input").val(),
		// contentType:"application/json;charset=utf-8",
		 success:function(data){
			 if(data == "ok") {
				 $("#u175_input").removeClass("wrong");
				 $("#u175_input").addClass("right");
				 return true;
			 } else {
				 $("#u175_input").removeClass("right");
				 $("#u175_input").addClass("wrong");
				 return false;
			 }
		 }

	 })
}

function validatePassword() {
	 $.ajax({
		 url:"/validate/password",
		 type:"post",
		 data:"password1="+$("#u174_input").val()+"&"+"password2="+$("#u176_input").val(),
		// contentType:"application/json;charset=utf-8",
		 success:function(data){
			 if(data == "ok") {
				 $("#u174_input").removeClass("wrong");
				 $("#u174_input").addClass("right");
				 $("#u176_input").removeClass("wrong");
				 $("#u176_input").addClass("right");
				 return true;
			 } else {
				 $("#u174_input").removeClass("right");
				 $("#u174_input").addClass("wrong");
				 $("#u176_input").removeClass("right");
				 $("#u176_input").addClass("wrong");
				 return false;
			 }
		 }

	 })
}

function validateEmail() {
	 $.ajax({
		 url:"/validate/email",
		 type:"post",
		 data:"param="+$("#u181_input").val(),
		// contentType:"application/json;charset=utf-8",
		 success:function(data){
			 if(data == "ok") {
				 $("#u181_input").removeClass("wrong");
				 $("#u181_input").addClass("right");
				 return true;
			 } else {
				 $("#u181_input").removeClass("right");
				 $("#u181_input").addClass("wrong");
				 return false;
			 }
		 }

	 })
}




