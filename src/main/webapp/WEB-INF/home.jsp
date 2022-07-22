<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<jsp:include page="include/head.jsp" />

<body>
	<jsp:include page="include/header.jsp" />
	
	<div id=pageHeader class="container-fluid">
		<h2>Java App Home</h2>
	</div>
	
	<div id=main class="container-fluid">
		<div id=welcome class="container-fluid">
			<h2>Welcome, <c:out value="${user.userName}"></c:out>!</h2>
			<h3>Thanks for being part of our growing community.  Let's talk more soon.</h3>
		</div>
		
		<div id=productList class="container-fluid">
			<h3>Product List</h3>
			<!-- <a href= "/store/product/new"><button class="btn btn-primary">Add Product</button></a> -->
			<a href= "/product/new"><button class="btn btn-primary">Add Product</button></a>
<%-- 			
			<c:choose>
				<c:when test="${mgmtPermissionErrorMsg != null}">
					<p class="errorText">${mgmtPermissionErrorMsg}</p>
				</c:when>
				<c:otherwise></c:otherwise>
			</c:choose> 
--%>
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">id</th>
						<th scope="col">productName</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="record" items="${productList}">
						<tr>
							<td>${record.id}</td>
							<%-- <td><a href="/store/product/${record.id}">${record.productName}</a></td> --%>
							<td><a href="/product/${record.id}">${record.productName}</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<div id=categoryList class="container-fluid">
			<h3>Category List</h3>
			<!-- <a href= "/store/category/new"><button class="btn btn-primary">Add Category</button></a> -->
			<a href= "/category/new"><button class="btn btn-primary">Add Category</button></a>
<%-- 			
			<c:choose>
				<c:when test="${mgmtPermissionErrorMsg != null}">
					<p class="errorText">${mgmtPermissionErrorMsg}</p>
				</c:when>
				<c:otherwise></c:otherwise>
			</c:choose> 
--%>
			<table class="table table-striped">
				<thead>
					<tr>
						<th scope="col">id</th>
						<th scope="col">categoryName</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="record" items="${categoryList}">
						<tr>
							<td>${record.id}</td>
							<%-- <td><a href="/store/category/${record.id}">${record.categoryName}</a></td> --%>
							<td><a href="/category/${record.id}">${record.categoryName}</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
	</div>
	<jsp:include page="include/footer.jsp"/>
			
			
</body>
</html>