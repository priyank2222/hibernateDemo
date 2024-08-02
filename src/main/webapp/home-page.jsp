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
            	<%
            	if(!products.isEmpty() && products != null) {
            		for(Product product : products) {
            	%>
                    <tr>
                        <td><%= product.getName()%></td>
                        <td><%= product.getType()%></td>
                        <td><%= product.getPlace()%></td>
                        <td><%= product.getWarranty()%></td>
                        <td class="table-actions">
                        	<button class="btn btn-sm btn-warning" title="Edit"><i class="fas fa-edit" data-toggle="modal" data-target="#editModal" data-id="<%= product.getId()%>" data-name="<%= product.getName()%>" data-type="<%= product.getType()%>" data-place="<%= product.getPlace()%>" data-warranty="<%= product.getWarranty()%>"></i></button>
                        	<button class="btn btn-sm btn-danger" title="Delete"><i class="fas fa-trash-alt" data-toggle="modal" data-target="#confirmModal" data-id="<%= product.getId()%>" data-name="<%= product.getName()%>" data-type="<%= product.getType()%>" data-place="<%= product.getPlace()%>" data-warranty="<%= product.getWarranty()%>"></i></button>
                    	</td>
                    </tr>
                    
                <%
            		}
            	}
            	else {
                %>
                	<tr>
                		<td colspan="5" class="text-center bg-danger">There are no products available right now!!</td>
                	<tr>
                <%
            	}
                %>
                
                <!-- Add more rows as needed -->
            </tbody>
        </table>
    </div>
    
    <!-- Edit Modal -->
    <%@ include file="edit-modal.jsp" %>
    
    <!-- Delete Confirmation Modal -->
    <%@ include file = "delete-confirmation-modal.jsp" %>
    
    <%@ include file = "footer.jsp" %>
   
</body>
</html>
