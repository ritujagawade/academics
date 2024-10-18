<jsp:include page="HeaderFile.jsp"/>
<!-- BEGIN MAIN CONTAINER -->
<div class="main-container" id="container">
    <div class="overlay"></div>
    <div class="cs-overlay"></div>
    <div class="search-overlay"></div>

    <!-- BEGIN SIDEBAR -->
    <jsp:include page="SidebarFile.jsp"/>
    <!-- END SIDEBAR -->

    <!-- BEGIN CONTENT AREA -->
    <div id="content" class="main-content">
        <div class="layout-px-spacing">
            <div class="middle-content container-xxl p-0">
                <!-- BREADCRUMB -->
                <div class="page-meta d-flex justify-content-between align-items-center">
                    <nav class="breadcrumb-style-one" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Roles & Permissions</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Permissions</li>
                        </ol>
                    </nav>
                    <div class="d-flex justify-content-sm-end justify-content-center">
                        <button id="btn-adddata" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addContactModal">+Add</button>
                    </div>
                </div>
                <!-- /BREADCRUMB -->
                <!-- Add Modal -->
                <div class="modal fade" id="addContactModal" tabindex="-1" role="dialog" aria-labelledby="addContactModalTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content" style="background: white">
                            <div class="modal-header">
                                <h5 class="modal-title add-title" id="addContactModalTitle">Add Permission</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"></svg>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="add-contact-box">
                                    <form id="addContactForm" enctype="multipart/form-data">
                                        <div class="col-md-12 p-2">
                                            <div class="lawyer-name">
                                                <label>Permission</label>
                                                <input type="text" id="add-name" class="form-control" placeholder="Permission">
                                            </div>
                                        </div>
                                        <div class="col-md-12 p-2">
                                            <div class="lawyer-name">
                                                <label>Catrgory Name</label>
                                                <input type="text" id="add-cname" class="form-control" placeholder="Category Name">
                                            </div>
                                        </div>
                                        <div class="col-xxl-12 col-sm-4 col-12 p-2">
                                            <button type="button" id="btn-add" class="btn btn-primary">Add</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Edit Modal -->
                <div class="modal fade" id="editContactModal" tabindex="-1" role="dialog" aria-labelledby="editContactModalTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content" style="background: white">
                            <div class="modal-header">
                                <h5 class="modal-title" id="editContactModalTitle">Edit Permission</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="edit-contact-box">
                                    <form id="editContactForm" enctype="multipart/form-data">
                                        <input type="hidden" id="edit-id" name="id">
                                        <div class="col-md-12 p-2">
                                            <div class="lawyer-name">
                                                <label>Permission</label>
                                                <input type="text" id="edit-name" name="name" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-md-12 p-2">
                                            <div class="lawyer-name">
                                                <label>Category Name</label>
                                                <input type="text" id="edit-cname" name="name" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="col-xxl-12 col-sm-4 col-12">
                                            <button type="submit" id="btn-update" class="btn btn-primary mt-2 ms-2">Update</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row layout-top-spacing" style="margin-top: -7px">
                    <div class="col-xl-12 col-lg-12 col-sm-12 layout-top-spacing layout-spacing">
                        <div class="widget-content widget-content-area br-8">
                            <table id="zero-config" class="table dt-table-hover" style="width:100%">
                                <thead>
                                <tr>

                                </tr>
                                </thead>
                                <tbody>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END CONTENT AREA -->
</div>
<!-- END MAIN CONTAINER -->

<!-- BEGIN GLOBAL MANDATORY SCRIPTS -->
<script src="../src/plugins/src/global/vendors.min.js"></script>
<script src="../src/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../src/plugins/src/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="../src/plugins/src/mousetrap/mousetrap.min.js"></script>
<script src="../layouts/vertical-light-menu/app.js"></script>
<script src="../src/assets/js/custom.js"></script>
<!-- END GLOBAL MANDATORY SCRIPTS -->

<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="../src/plugins/src/table/datatable/datatables.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
<script>
    $(document).ready(function() {
        $('#zero-config').DataTable({
            ajax: {
                url: config.apiUrl+'/api/permission/permissions',
                method: 'GET',
                dataType: 'json',
                dataSrc: 'permissions'
            },
            columns: [

                {
                    title: "Permission",
                    data: 'name'
                },
                {
                    title: "Category Name",
                    data: 'category_name'
                },
                { title: "Created At", data: function(row) {
                        return new Date(row.created_at).toLocaleDateString('en-US', {
                            year: 'numeric',
                            month: 'short',
                            day: 'numeric'
                        });
                    }
                },
                {
                    title: "Action",
                    data: function(row) {
                        return `
                        <a href="#" class="icon-edit-file" data-file-id="${row.id}" title="Update">
                            <span class="badge badge-light-primary text-start me-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-3"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>
                            </span>
                        </a>
                     ` + `<a href="#" class="icon-file" data-file-id="${row.id}" title="Delete Record">
                             <span class="badge badge-light-danger text-start">
                                 <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                             </span>
                        </a>`;
                    }
                }

            ],
            dom: "<'dt--top-section'<'row'<'col-12 col-sm-6 d-flex justify-content-sm-start justify-content-center'l><'col-12 col-sm-6 d-flex justify-content-sm-end justify-content-center mt-sm-0 mt-3'f>>>" +
                "<'table-responsive'tr>" +
                "<'dt--bottom-section d-sm-flex justify-content-sm-between text-center'<'dt--pages-count mb-sm-0 mb-3'i><'dt--pagination'p>>",
            oLanguage: {
                oPaginate: {
                    sPrevious: '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-left"><line x1="19" y1="12" x2="5" y2="12"></line><polyline points="12 19 5 12 12 5"></polyline></svg>',
                    sNext: '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right"><line x1="5" y1="12" x2="19" y2="12"></line><polyline points="12 5 19 12 12 19"></polyline></svg>'
                },
                sInfo: "Showing page _PAGE_ of _PAGES_",
                sSearch: '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>',
                sSearchPlaceholder: "Search...",
                sLengthMenu: "Results :  _MENU_",
            },
            stripeClasses: [],
            lengthMenu: [7, 10, 20, 50],
            pageLength: 10
        });

        $(document).ready(function() {
            $('#btn-add').click(function(event) {
                event.preventDefault();
                const addName = $('#add-name').val().trim();
                const addCName=$('#add-cname').val().trim();
                if (addName && addCName) {
                    $.ajax({
                        url: config.apiUrl+'/api/permission/add-permission',
                        method: 'POST',
                        contentType: 'application/json',
                        data: JSON.stringify
                        ({
                            name: addName,
                            category_name:addCName
                        }),

                        success: function(response) {
                            console.log('success');
                            $('#addContactModal').modal('hide');
                            $('#zero-config').DataTable().ajax.reload();
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: 'Permission added successfully!',
                                confirmButtonText: 'OK'
                            });
                        },
                        error: function(xhr, status, error) {
                            console.log('error');
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: 'Failed to add Permission. Please try again.',
                                confirmButtonText: 'OK'
                            });
                        }
                    });
                } else {
                    Swal.fire({
                        icon: 'warning',
                        title: 'Incomplete Form',
                        text: 'Please fill in all fields.',
                        confirmButtonText: 'OK'
                    });
                }
            });
        });

        $('#zero-config').on('click', '.icon-edit-file', function() {
            const permissionId = $(this).data('file-id');
            console.log("Fetching details for Permission ID:", permissionId);
            $.ajax({
                url: config.apiUrl+'/api/permission/get',
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify({
                    id: permissionId
                }),
                success: function(response) {
                    console.log("permission data:", response);
                    if (response.success)
                    {
                        let permission = response.permission;
                        let permissionName = permission.name;
                        let categoryName=permission.category_name;

                        $('#edit-id').val(permissionId);
                        $('#edit-name').val(permissionName);
                        $('#edit-cname').val(categoryName);

                        $('#editContactModal').modal('show');
                    }
                    else
                    {
                        console.error("Failed to fetch permission data:", response.message);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("Error fetching permission data:", status, error);
                }
            });
        });

        $('#btn-update').click(function(event) {
            event.preventDefault();
            const permissionId = $('#edit-id').val().trim();
            const permissionName = $('#edit-name').val().trim();
            const categoryName=$('#edit-cname').val().trim();
            if (permissionName && categoryName) {
                $.ajax({
                    url: config.apiUrl+'/api/permission/update-permission',
                    method: 'PUT',
                    contentType: 'application/json',
                    data: JSON.stringify({
                        id:permissionId,
                        name:permissionName,
                        category_name:categoryName
                    }),
                    success: function(response) {
                        $('#editContactModal').modal('hide');
                        $('#zero-config').DataTable().ajax.reload();
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: 'Permission updated successfully!',
                            confirmButtonText: 'OK'
                        });
                    },
                    error: function(xhr, status, error) {
                        console.log("Error updating permission:", error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Failed to update Permission. Please try again.',
                            confirmButtonText: 'OK'
                        });
                    }
                });
            } else {
                Swal.fire({
                    icon: 'warning',
                    title: 'Incomplete Form',
                    text: 'Please fill in all fields.',
                    confirmButtonText: 'OK'
                });
            }
        });

        $('#zero-config').on('click', '.icon-file', function(e) {
            var dataId = $(this).data('file-id');
            e.preventDefault();

            console.log('Delete Data ID:', dataId);

            if (!dataId) {
                console.error('Data ID is undefined or invalid');
                Swal.fire('Error!', 'Data ID is not valid.', 'error');
                return;
            }

            Swal.fire({
                title: 'Are you sure?',
                text: "You won't be able to revert this!",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it',
                cancelButtonText: 'Cancel'
            }).then((result) => {
                if (result.isConfirmed) {
                    fetch(config.apiUrl+'/api/permission/remove-permission', {
                        method: 'DELETE',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({
                            id: dataId })
                    })
                        .then(response => response.json())
                        .then(data => {
                            console.log('success:', data);
                            if (data.message === 'Permission deleted') {
                                Swal.fire('Deleted!', 'Your Permission has been deleted.', 'success').then(() => {
                                    $('#zero-config').DataTable().ajax.reload();
                                });
                            } else {
                                Swal.fire('Error!', 'There was an issue with deleting the permission.', 'error');
                            }
                        })
                        .catch(error => {
                            console.error('Error:', error);
                            Swal.fire('Error!', 'There was an error deleting your permission.', 'error');
                        });
                }
            });
        });
    });
</script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>

