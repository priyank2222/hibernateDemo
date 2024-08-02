<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Delete Products</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .form-inline {
            display: flex;
            align-items: center;
        }
        .form-inline select, .form-inline input {
            margin-right: 10px;
        }
    </style>
     <script>
    
		function validateForm() {
			
	    	const searchType = document.getElementById("searchType").value;
	    	
	    	if (searchType === "default") {
	        	alert("Please select an option from the Search By menu.");
	       		return false;
	    	}
	    	return true;
		}
	
	</script>
</head>
<body>

	<%@ page import = "com.priyank.dao.ProductDAO" %>
	<%@ page import = "java.util.List" %>
	<%@ page import = "com.priyank.model.Product" %>
   
	<%@ include file = "header-navigation.jsp" %>
	
    <div class="container mt-5">
        <h2 class="mb-4">Delete Products</h2>
        <form class="form-inline" onsubmit="return validateForm()">
            <label for="searchType"> Search By : </label>
            <select class="form-control" id="searchType" name="searchType">
            	<option value="default" disabled selected>Search By</option>
                <option value="name">Name</option>
                <option value="type">Type</option>
                <option value="place">Place</option>
                <option value="warranty">Warranty</option>
            </select>
            <input type="text" class="form-control" id="searchValue" name="searchValue" placeholder="Enter value" required>
            <button type="submit" class="btn btn-primary">Search</button>
        </form>
        
        
        <h3 class="mt-4">Search Results</h3>
        <table class="table">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Place</th>
                    <th>Warranty</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody id="searchResults">
            
            <%
   				if(request.getParameter("searchType") != null)
   				{
   					ProductDAO dao = new ProductDAO();
   					List<Product> products = dao.searchProducts(request.getParameter("searchType"), request.getParameter("searchValue"));
   					
   					if(!products.isEmpty() && products != null) {
   						for(Product product : products) {
  		 	%>
  		 	 <tr>
             	<td><%= product.getName()%></td>
                <td><%= product.getType()%></td>
                <td><%= product.getPlace()%></td>
                <td><%= product.getWarranty()%></td>
                <td class="table-actions">
                	<button class="btn btn-primary btn-sm delete-btn" title="Delete" data-toggle="modal" data-target="#confirmModal" data-id="<%= product.getId()%>">Delete</button>
                </td>
             </tr>
                    
            <%
           				}
   					}
   					else {
   			%>
   			<tr>
   				<td colspan="5" class="text-center bg-danger">No such product available to delete!!</td>
   			</tr>
   			<%
   					}
   				}
            %>
            </tbody>
        </table>
    </div>
    
   <%@ include file = "delete-confirmation-modal.jsp" %>
    
    <%@ include file = "footer.jsp" %>
</body>
</html>