<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Home page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css" >
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Quattrocento+Sans&display=swap" rel="stylesheet">
    <jsp:useBean id="product" class="dao.ProductDAO" scope="page"></jsp:useBean>
    </head>
<body>
	
	<div class="container">
            <jsp:include page="header.jsp"></jsp:include>
            <div class="main-content">
                <div class="row">
                    <div class="col-xs-12 col-sm-9 col-lg-9">
                        <div class="page1">
                            <img src="image/comcuon.jpg" width="100%">
                        </div>
                        <c:forEach items="${product.showAll()}" var="p">
                        <div class="page2">
                        	<div class="artical">
                            	<div class="title">
                            		<a href="${pageContext.request.contextPath}/BlogDetailController?id=${p.productID}" class="scrollto">${p.productName}</a>
                            	</div>
                            	<div class="content">
                            		<p class="text"><img src="${p.productImage}" width="50%" class="image">${p.productContent}</p>
                            	</div>
                            </div>
                        </div>
                        </c:forEach>
                        
                    </div>
                    <div class="col-xs-0 col-sm-3 col-lg-3">
                        <jsp:include page="share.jsp"></jsp:include>
                    </div>
                  </div>
            </div>
            <div class="footer">
               	<jsp:include page="counter.jsp"></jsp:include>
            </div>
        </div>
</body>
</html>