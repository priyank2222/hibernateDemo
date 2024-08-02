<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        .table-actions .btn {
            padding: 0.5em;
        }
    </style>
</head>
<body>

<!-- Edit Modal -->
    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form id="editProductForm" action="update-product">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editModalLabel">Edit Product</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" id="editProductId" name="productId">
                        <div class="form-group">
                            <label for="editProductName">Product Name</label>
                            <input type="text" class="form-control" id="editProductName" name="productName" required>
                        </div>
                        <div class="form-group">
                            <label for="editProductType">Product Type</label>
                            <input type="text" class="form-control" id="editProductType" name="productType" required>
                        </div>
                        <div class="form-group">
                            <label for="editProductPlace">Product Place</label>
                            <input type="text" class="form-control" id="editProductPlace" name="productPlace" required>
                        </div>
                        <div class="form-group">
                            <label for="editProductWarranty">Product Warranty (in years)</label>
                            <input type="number" class="form-control" id="editProductWarranty" name="productWarranty" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $('#editModal').on('show.bs.modal', function (event) {
            var button = $(event.relatedTarget); // Button that triggered the modal
            var id = button.data('id');
            var name = button.data('name');
            var type = button.data('type');
            var place = button.data('place');
            var warranty = button.data('warranty');

            var modal = $(this);
            modal.find('#editProductId').val(id);
            modal.find('#editProductName').val(name);
            modal.find('#editProductType').val(type);
            modal.find('#editProductPlace').val(place);
            modal.find('#editProductWarranty').val(warranty);
        });
	</script>
</body>
</html>