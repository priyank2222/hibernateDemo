<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
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
</head>
<body>

 <!-- Delete Confirmation Modal -->
    <div class="modal fade" id="confirmModal" tabindex="-1" aria-labelledby="confirmModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="confirmModalLabel">Confirm Delete</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Are you sure you want to delete this product?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-danger btn-primary" id="confirmDeleteBtn">Confirm</button>
                </div>
            </div>
        </div>
    </div>
    
    <form id="deleteForm" action="delete-product" style="display:none;">
        <input type="hidden" name="productId" id="deleteProductId">
    </form>
    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
    
    var productIdToDelete;
    
    $('#confirmModal').on('show.bs.modal', function (event) {
    	var button = $(event.relatedTarget); // Button that triggered the modal
        productIdToDelete = button.data('id');
    });
    
    $('#confirmDeleteBtn').on('click', function() {
        $('#deleteProductId').val(productIdToDelete);
        $('#deleteForm').submit();
    });
    
    
    </script>
    
</body>
</html>