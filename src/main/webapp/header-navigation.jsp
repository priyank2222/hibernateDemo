<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .navbar-nav .nav-link {
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header class="bg-primary text-white text-center py-3">
        <div class="container">
            <h1>My Product Application</h1>
            <a href="home-page.jsp" class="btn btn-light">Home</a>
        </div>
    </header>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="add-product.jsp">Add Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="update-product.jsp">Update Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="delete-product.jsp">Delete Product</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="search-product.jsp">Search Product</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</body>
</html>