<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/* body {font-family: Arial, Helvetica, sans-serif;} */
form {
	border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

button {
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}

.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#login").click(function() {
			let checkValue = $('#checkBox').is(':checked');
			alert("value is" + checkValue);
			if (checkValue) {
				$("form").attr("action", "/project/admin/login");
				alert(url);
				console.log(url);
			} else {
				$("form").attr("action", "/project/customer/login");
				alert(url);
				console.log(url);

			}

		});

	});
</script>
</head>
<body>

	<h2>Login Form</h2>

	<h3 style="background-cloor: red;">${requestScope.msg}</h3>
	<h3 style="background-cloor: red;">${requestScope.resetPasswordMsg}</h3>
	<h3 style="background-cloor: red;">${requestScope.LoginMsg}</h3>
	<h3 style="background-cloor: red;">${requestScope.Regmsg}</h3>
	<spring:url var="Url" value="/admin/login" />
	<br>
	<form action="${Url}" method="post">
		<table>
			<label for="uname"><b>Email id</b></label>
			<input type="text" placeholder="Enter Username" name="uname" required maxlength="30">

			<label for="psw"><b>Password</b></label>
			<input type="password" placeholder="Enter Password" name="password"
				required maxlength="20">
                 
                 <label> <input type="checkbox" checked="checked"
				name="remember" id="checkBox"> Show Password
			</label>    
			<button type="submit" value="/project/admin/login" id="login">Login</button>

	
			<spring:url var="register" value="/admin/register" />
			&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="${register}">Register</a>
			<spring:url var="password" value="/forgot/Password" />
			<br>
				
			<span class="psw">Forgot <a href="${password}">password?</a></span>
			</div>
		</table>

	</form>


</body>
</html>
