<%--
  Created by IntelliJ IDEA.
  User: qhr74
  Date: 2020/10/26
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>success set mode</title>
    <%@include file="/pages/common/head.jsp" %>
</head>
<body>
<div id="header">
    <img class="logo_img" alt="" src="static/img/logo.png">
    <%@ include file="/pages/common/login_success_menu.jsp" %>
</div>
<div id="modeMain">
    <div class="communication">
        connected
    </div>
    <div class="pacemakerID">
        pacemaker ID: 74426726
    </div>
    <div style="font-size: 30px; position: absolute;top: 15px;left: 12px">Dear<span class="um_span">${sessionScope.user.username}</span>, here are your choice of mode and parameters:</div>
    <table class="modeTable">
        <tr><td>Mode:${requestScope.mode.mode}</td></tr>
        <tr><td>Lower Rate Limit:${empty requestScope.mode.LRL?"null":requestScope.mode.LRL}</td></tr>
        <tr><td>Upper Rate Limit:${empty requestScope.mode.URL?"null":requestScope.mode.URL}</td></tr>
        <tr><td>Atrial Amplitude:${empty requestScope.mode.AA?"null":requestScope.mode.AA}</td></tr>
        <tr><td>Ventricular Amplitude:${empty requestScope.mode.VA?"null":requestScope.mode.VA}</td></tr>
        <tr><td>Atrial Pulse Width:${empty requestScope.mode.APW?"null":requestScope.mode.APW}</td></tr>
        <tr><td>Ventricular Pulse Width:${empty requestScope.mode.VPW?"null":requestScope.mode.VPW}</td></tr>
        <tr><td>VRP:${empty requestScope.mode.VRP?"null":requestScope.mode.VRP}</td></tr>
        <tr><td>ARP:${empty requestScope.mode.ARP?"null":requestScope.mode.ARP}</td></tr>
    </table>
</div>

<%@include file="/pages/common/footer.jsp" %>
</body>
</html>
