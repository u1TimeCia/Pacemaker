<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>YoRHa Membership</title>
<%@include file="/pages/common/head.jsp"%>
<style type="text/css">
	h1 {
		text-align: center;
		margin-top: 200px;
	}
	
	h1 a {
		color:red;
	}
</style>
</head>
<body>
		<div id="header">
				<img class="logo_img" alt="" src="static/img/logo.png" >
				<%@ include file="/pages/common/login_success_menu.jsp"%>
		</div>
		
		<div id="main">
		
			<h1>Welcome back <a href="pages/mode/mode.jsp">go to select Pacemaker Mode</a></h1>
	
		</div>

		<%@include file="/pages/common/footer.jsp"%>
</body>
</html>