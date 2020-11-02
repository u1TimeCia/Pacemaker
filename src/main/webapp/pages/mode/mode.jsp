<%@ page import="java.math.BigDecimal" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: qhr74
  Date: 2020/10/18
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pacemaker Mode</title>
    <%@include file="/pages/common/head.jsp" %>
    <script type="text/javascript">
        $(function () {

            $("#AAO").click(function () {
                var mode = document.getElementById('mode');
                mode.innerHTML = $(this).val();
                document.getElementById("modeToServer").value = "AAO"
                document.getElementById("Lower Rate Limit").disabled = false;
                document.getElementById("Upper Rate Limit").disabled = false;
                document.getElementById("Atrial Amplitude").disabled = false;
                document.getElementById("Ventricular Amplitude").disabled = true;
                document.getElementById("Atrial Pulse Width").disabled = false;
                document.getElementById("Ventricular Pulse Width").disabled = true;
                document.getElementById("VRP").disabled = true;
                document.getElementById("ARP").disabled = true;
            })
            $("#VOO").click(function () {
                var mode = document.getElementById('mode');
                mode.innerHTML = $(this).val();
                document.getElementById("modeToServer").value = "VOO"
                document.getElementById("Lower Rate Limit").disabled = false;
                document.getElementById("Upper Rate Limit").disabled = false;
                document.getElementById("Atrial Amplitude").disabled = true;
                document.getElementById("Ventricular Amplitude").disabled = false;
                document.getElementById("Atrial Pulse Width").disabled = true;
                document.getElementById("Ventricular Pulse Width").disabled = false;
                document.getElementById("VRP").disabled = true;
                document.getElementById("ARP").disabled = true;
            })
            $("#AAI").click(function () {
                var mode = document.getElementById('mode');
                mode.innerHTML = $(this).val();
                document.getElementById("modeToServer").value = "AAI"
                document.getElementById("Lower Rate Limit").disabled = false;
                document.getElementById("Upper Rate Limit").disabled = false;
                document.getElementById("Atrial Amplitude").disabled = false;
                document.getElementById("Ventricular Amplitude").disabled = true;
                document.getElementById("Atrial Pulse Width").disabled = false;
                document.getElementById("Ventricular Pulse Width").disabled = true;
                document.getElementById("VRP").disabled = true;
                document.getElementById("ARP").disabled = false;
            })
            $("#VVI").click(function () {
                var mode = document.getElementById('mode');
                mode.innerHTML = $(this).val();
                document.getElementById("modeToServer").value = "VVI"
                document.getElementById("Lower Rate Limit").disabled = false;
                document.getElementById("Upper Rate Limit").disabled = false;
                document.getElementById("Atrial Amplitude").disabled = true;
                document.getElementById("Ventricular Amplitude").disabled = false;
                document.getElementById("Atrial Pulse Width").disabled = true;
                document.getElementById("Ventricular Pulse Width").disabled = false;
                document.getElementById("VRP").disabled = false;
                document.getElementById("ARP").disabled = true;
            })
        })
    </script>
</head>
<body>
<div id="header">
    <img class="modeSelection" src="static/img/mode_selection.png">
    <%@ include file="/pages/common/login_success_menu.jsp" %>
</div>
<div id="modeMain">
    <div class="communication">
        connected
    </div>
    <div class="pacemakerID">
        pacemaker ID: 74426726
    </div>
    <div class="mode_wel_word">
        Dear <span class="um_span">${sessionScope.user.username}</span>, you are using mode <span id="mode"></span>
    </div>
    <div>
        <input type="button" id="AAO" value="AAO">
        <input type="button" id="VOO" value="VOO">
        <input type="button" id="AAI" value="AAI">
        <input type="button" id="VVI" value="VVI">
    </div>
    <div>
        <form action="modeServlet" method="post">
            <input type="hidden" name="action" value="storeMode">
            <input type="hidden" name="mode" id="modeToServer" value="">
            <div class="modeForm">
                Lower Rate Limit:
                <select class="itxt" id="Lower Rate Limit" name="Lower Rate Limit" disabled="disabled">
                    <c:forEach begin="30" end="50" step="5" var="i">
                        <option>${i}ppm</option>
                    </c:forEach>
                    <c:forEach begin="50" end="90" step="1" var="i">
                        <c:choose>
                            <c:when test="${i==60}">
                                <option selected="selected">${i}ppm</option>
                            </c:when>
                            <c:otherwise>
                                <option>${i}ppm</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:forEach begin="90" end="175" step="5" var="i">
                        <option>${i}ppm</option>
                    </c:forEach>
                </select><br/><br/>
                Upper Rate Limit:
                <select class="itxt" id="Upper Rate Limit" name="Upper Rate Limit" disabled="disabled" value="120ppm">
                    <c:forEach begin="50" end="175" step="5" var="i">
                        <c:choose>
                            <c:when test="${i==120}">
                                <option selected="selected">${i}ppm</option>
                            </c:when>
                            <c:otherwise>
                                <option>${i}ppm</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select><br/><br/>
                Atrial Amplitude:
                <select class="itxt" id="Atrial Amplitude" name="Atrial Amplitude" disabled="disabled" value="3.5V">
                    <c:forEach begin="0" end="50" step="1" var="i">
                        <c:choose>
                            <c:when test="${i==35}">
                                <option selected="selected">${String.format("%.1f", i*0.1)}V</option>
                            </c:when>
                            <c:otherwise>
                                <option>${String.format("%.1f", i*0.1)}V</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <option>OFF</option>
                </select><br/><br/>
                Ventricular Amplitude:
                <select class="itxt" id="Ventricular Amplitude" name="Ventricular Amplitude" disabled="disabled" value="3.5V">
                    <c:forEach begin="0" end="50" step="1" var="i">
                        <c:choose>
                            <c:when test="${i==35}">
                                <option selected="selected">${String.format("%.1f", i*0.1)}V</option>
                            </c:when>
                            <c:otherwise>
                                <option>${String.format("%.1f", i*0.1)}v</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <option>OFF</option>
                </select><br/><br/>
                Atrial Pulse Width:
                <select class="itxt" id="Atrial Pulse Width" name="Atrial Pulse Width" disabled="disabled" value="0.4ms">
                    <c:forEach begin="1" end="19" step="1" var="i">
                        <c:choose>
                            <c:when test="${i==4}">
                                <option selected="selected">${String.format("%.1f", i*0.1)}ms</option>
                            </c:when>
                            <c:otherwise>
                                <option>${String.format("%.1f", i*0.1)}ms</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select><br/><br/>
                Ventricular Pulse Width:
                <select class="itxt" id="Ventricular Pulse Width" name="Ventricular Pulse Width" disabled="disabled" value="0.4ms">
                    <c:forEach begin="1" end="19" step="1" var="i">
                        <c:choose>
                            <c:when test="${i==4}">
                                <option selected="selected">${String.format("%.1f", i*0.1)}ms</option>
                            </c:when>
                            <c:otherwise>
                                <option>${String.format("%.1f", i*0.1)}ms</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select><br/><br/>
                VRP:
                <select class="itxt" id="VRP" name="VRP" disabled="disabled" value="320ms">
                    <c:forEach begin="150" end="500" step="10" var="i">
                        <option>${i}ms</option>
                    </c:forEach>
                </select><br/><br/>
                ARP:
                <select class="itxt" id="ARP" name="ARP" disabled="disabled" value="250ms">
                    <c:forEach begin="150" end="500" step="10" var="i">
                        <option>${i}ms</option>
                    </c:forEach>
                </select><br/><br/>
                <input type="submit" value="submit" id="submit">
            </div>

        </form>
    </div>
</div>
<%@include file="/pages/common/footer.jsp"%>
</body>
</html>
