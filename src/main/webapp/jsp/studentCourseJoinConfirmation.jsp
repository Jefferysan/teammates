<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="teammates.common.util.Const" %>
<%@ page import="teammates.ui.controller.PageData"%>
<%@ page import="teammates.ui.controller.StudentCourseJoinConfirmationPageData"%>
<%
    StudentCourseJoinConfirmationPageData data = (StudentCourseJoinConfirmationPageData) request.getAttribute("data");
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="shortcut icon" href="/favicon.png">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>TEAMMATES - Student</title>
    <link rel="stylesheet" href="/stylesheets/common.css" type="text/css" media="screen">
    <link rel="stylesheet" href="/stylesheets/studentHome.css" type="text/css" media="screen">
    <link rel="stylesheet" href="/stylesheets/common-print.css" type="text/css" media="print">
    <link rel="stylesheet" href="/stylesheets/studentHome-print.css" type="text/css" media="print">
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
    <link href="/stylesheets/studentCourseJoin.css" rel="stylesheet">

    <script type="text/javascript" src="/js/googleAnalytics.js"></script>
    <script type="text/javascript" src="/js/jquery-minified.js"></script>
    <script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/tooltip.js"></script>
    <script type="text/javascript" src="/js/common.js"></script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
    
    <jsp:include page="../enableJS.jsp"></jsp:include>    
</head>

<body>
    <div id="dhtmltooltip"></div>
    <div id="frameTop">
        <jsp:include page="<%=Const.ViewURIs.STUDENT_HEADER%>" />
    </div>
    <div class="container">
        <div id="topOfPage"></div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h2>Confirm your Google account</h2>
                </div>
            <div class="panel-body">
                <br>
                <jsp:include page="<%=Const.ViewURIs.STATUS_MESSAGE%>" />
                <br>
                <p class="lead">
                    You are currently logged in as <span class="bold"><%=data.account.googleId%></span>. 
                    <br>If this is not you please <a href="/logout.jsp">log out</a> and re-login using your own Google account.
                    <br>If this is you, please confirm below to complete your registration.
                    <br><br><br>
                </p>
                <div class="center-align">
                <a href="<%=Const.ActionURIs.STUDENT_COURSE_JOIN_AUTHENTICATED + "?regkey=" + data.regkey%>" 
                    class="btn btn-success"
                    id="button_confirm">Yes, this is my account</a>
                <a href="/logout.jsp" 
                    class="btn btn-danger"
                    id="button_cancel">No, this is not my account</a>
                </div>
                
            </div>
        </div>
    </div>
    <div class="footer" id="frameBottom" style="position: fixed;">
        <jsp:include page="<%=Const.ViewURIs.FOOTER%>" />
    </div>
</body>
</html>