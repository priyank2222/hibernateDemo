<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Product</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .alert {
            display: none;
        }
    </style>
</head>
<body>
	<%@ include file = "header-navigation.jsp" %>
	
    <div class="container mt-5">
        <h2 class="mb-4">Add Product</h2>
        <form id="addProductForm" action="add-product">
            <div class="form-group">
                <label for="productName">Product Name</label>
                <input type="text" class="form-control" id="productName" name="productName" required>
            </div>
            <div class="form-group">
                <label for="productType">Product Type</label>
                <input type="text" class="form-control" id="productType" name="productType" required>
            </div>
            <div class="form-group">
                <label for="productPlace">Product Place</label>
                <input type="text" class="form-control" id="productPlace" name="productPlace" required>
            </div>
            <div class="form-group">
                <label for="productWarranty">Product Warranty(Year)</label>
                <input type="number" class="form-control" id="productWarranty" name="productWarranty" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    
    <%@ include file = "footer.jsp" %>
   
</body>
</html>