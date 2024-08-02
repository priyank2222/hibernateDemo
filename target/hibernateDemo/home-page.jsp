<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <style>
        .table-actions .btn {
            padding: 0.5em;
        }
    </style>
</head>
<body>
   
   <%@ page import = "com.priyank.dao.ProductDAO" %>
   <%@ page import = "java.util.List" %>
   <%@ page import = "com.priyank.model.Product" %>
   
   <%@ include file = "header-navigation.jsp" %>
   
   <%
   
   ProductDAO dao = new ProductDAO();
   List<Product> products = dao.getAllProducts();
   
   %>

    <!-- Main Content -->
    <div class="container mt-5">
        <h2 class="mb-4">Products</h2>
        <table class="table table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Place</th>
                    <th>Warranty</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            	<c:forEach var="product" items="${products}">
                    <tr>
                        <td>${product.getName()}</td>
                        <td>${product.getType()}</td>
                        <td>${product.getPlace()}</td>
                        <td>${product.getWarranty()}</td>
                        <td class="table-actions">
                        	<button class="btn btn-sm btn-warning" title="Edit"><i class="fas fa-edit"></i></button>
                        	<button class="btn btn-sm btn-danger" title="Delete"><i class="fas fa-trash-alt"></i></button>
                    	</td>
                    </tr>
                </c:forEach>
                
                <!-- Add more rows as needed -->
            </tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
