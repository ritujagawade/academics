<jsp:include page="HeaderFile.jsp"/>
<!--  BEGIN MAIN CONTAINER  -->
<div class="main-container " id="container">
    <div class="overlay"></div>
    <div class="cs-overlay"></div>
    <div class="search-overlay"></div>

    <!--  BEGIN SIDEBAR  -->
    <jsp:include page="SidebarFile.jsp"/>
    <!--  END SIDEBAR  -->

    <!--  BEGIN CONTENT AREA  -->
    <div id="content" class="main-content">
        <div class="layout-px-spacing">
            <div class="middle-content container-xxl p-0">
                <!-- BREADCRUMB -->
                <div class="page-meta">
                    <nav class="breadcrumb-style-one" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Instructor Details</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Instructor</li>
                        </ol>
                    </nav>
                    <div class="d-flex justify-content-sm-end justify-content-center" style="margin-top: -25px">
                        <button id="btn-adddata" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addContactModal">+Add</button>
                    </div>
                </div>
                <!-- /BREADCRUMB -->
                <!-- Add -->
                <div class="modal fade" id="addContactModal" tabindex="-1" role="dialog" aria-labelledby="addContactModalTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content" style="background: white;height: 320px;width: 400px;">
                            <div class="modal-header">
                                <h5 class="modal-title add-title" id="addContactModalTitle">Add Instructor</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"></svg>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="add-contact-box" style="margin-right: -25px;">
                                    <div class="col-xxl-9 col-xl-12 col-lg-8 col-md-8 col-sm-8">
                                        <form id="addContactForm" enctype="multipart/form-data">
                                        <div class="row w-100 mt-2">
                                            <div class="col-md-12">
                                                <div>
                                                    <label>Name</label>
                                                    <input type="text" id="add-name" class="form-control" placeholder="Name"  required/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row w-100 mt-2">
                                            <div class="col-md-12">
                                                <label>Image</label>
                                                <div class="multiple-file-upload">
                                                    <input type="file" id="add-image" class="form-control" required>
                                                </div>
                                            </div>

                                        </div>

                                        <div class="col-xxl-12 col-sm-4 col-12 mt-3">
                                            <button type="button" id="btn-add" class="btn btn-primary">Add</button>
                                        </div>
                                    </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Edit Modal -->
                <div class="modal fade" id="editContactModal" tabindex="-1" role="dialog" aria-labelledby="editContactModalTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content" style="background: white; height: 320px;width: 400px;">
                            <div class="modal-header">
                                <h5 class="modal-title" id="editContactModalTitle">Edit Instructor</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"></svg>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="edit-contact-box" style="margin-right: -25px;">
                                    <div class="col-xxl-9 col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <form id="editContactForm">
                                            <input type="hidden" id="edit-id">
                                            <input type="hidden" id="existing-image">
                                            <div class="row w-100 mt-2">
                                                <div class="col-md-12">
                                                    <label>Name</label>
                                                    <input type="text" id="edit-name" class="form-control" placeholder="Name" required />
                                                </div>
                                            </div>
                                            <div class="row w-100 mt-2">
                                                <div class="col-md-12">
                                                    <label>Image</label>
                                                    <div class="multiple-file-upload">
                                                        <input type="file" id="edit-image" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xxl-12 col-sm-4 col-12 mt-3">
                                                <button id="btn-update" class="btn btn-primary">Update</button>
                                            </div>
                                        </form>
                                    </div>
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
    <!--  END CONTENT AREA  -->
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
<script>

    $(document).ready(function() {
        $('#zero-config').DataTable({
            ajax: {
                url: config.apiUrl+'/api/instructor/get-all-instructor',
                method: 'GET',
                dataType: 'json',
                dataSrc: 'instructors'
            },
            columns: [
                {
                    title: "Name",
                    data:function (row) {
                        return row.name;
                    }
                },


                {
                    title: "Image",
                    data:function (row) {
                        return `<img src="${row.image}" style="height: 50px; width:50px; border-radius:50%;"/>`;

                    }
                },

                // { title: "Created At", data: function(row) {
                //         return new Date(row.created_at).toLocaleDateString('en-US', {
                //             year: 'numeric',
                //             month: 'short',
                //             day: 'numeric'
                //         });
                //
                //     }},
                // { title: "Updated At", data: function(row) {
                //         return new Date(row.updated_at).toLocaleDateString('en-US', {
                //             year: 'numeric',
                //             month: 'short',
                //             day: 'numeric'
                //         });
                //
                //     }
                // },
                {
                    title: "Action",
                    data: function(row) {
                        return `
                    <a href="#" class="icon-edit-file" data-file-id="${row.id}" title="Update">
                        <span class="badge badge-light-primary text-start me-2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-3"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>
                        </span>
                    </a>
                    `+
                            `<a href="#" class="icon-delete-file" data-file-id="${row.id}" title="Delete Record">
                                <span class="badge badge-light-danger text-start">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                                </span>
                            </a>`;
                    }
                }
            ],
            dom: "<'dt--top-section'<'row'<'col-12 col-sm-6 d-flex justify-content-sm-start justify-content-center'l><'col-12 col-sm-6 d-flex justify-content-sm-end justify-content-center mt-sm-0 mt-3'f>>>" +
                "<'table-responsive'tr>" +
                "<'dt--bottom-section d-sm-flex justify-content-sm-between text-center'<'dt--pages-count  mb-sm-0 mb-3'i><'dt--pagination'p>>",
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

        $('#btn-add').click(function(event) {
            event.preventDefault();

            const addname = $('#add-name').val().trim();
            const addimage = $('#add-image')[0].files[0];
            const token = localStorage.getItem('authToken');

            if (addname && addimage) {
                const formData = new FormData();
                formData.append('name', addname);
                formData.append('image', addimage);

                $.ajax({
                    url: config.apiUrl+'/api/instructor/register-instructor',
                    method: 'POST',
                    headers: {
                        'x-access-token': token
                    },
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function(response) {
                        console.log('success');
                        $('#addContactModal').modal('hide');
                        $('#zero-config').DataTable().ajax.reload();
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: 'Instructor added successfully!',
                            confirmButtonText: 'OK'
                        });
                    },
                    error: function(xhr, status, error) {
                        console.log('error');
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Failed to add Instructor. Please try again.',
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

    $('#zero-config').on('click', '.icon-edit-file', function(e) {
        e.preventDefault();
        const instructorId = $(this).data('file-id');
        const token = localStorage.getItem('authToken');

        if (instructorId) {
            console.log("Fetching details for Instructor ID:", instructorId);

            $.ajax({
                url: config.apiUrl+'/api/instructor/get-instructor',
                method: 'POST',
                contentType: 'application/json',
                headers: {
                    'x-access-token': token
                },
                data: JSON.stringify({ id: instructorId }),
                success: function(response) {
                    console.log("Instructor data:", response);
                    if (response.success) {
                        const Name = response.instructor.name;
                        const Image = response.instructor.image;

                        $('#edit-id').val(instructorId);
                        $('#edit-name').val(Name);
                        $('#existing-image').val(Image);
                        $('#edit-image').val('');

                        $('#editContactModal').modal('show');
                    } else {
                        console.error("Failed to fetch instructor data:", response.message);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("Error fetching instructor data:", status, error);
                }
            });
        } else {
            alert('ID is undefined');
        }
    });


    $('#btn-update').click(function(event) {
        event.preventDefault();

        const token = localStorage.getItem('authToken');
        const instructorId = $('#edit-id').val().trim();
        const Name = $('#edit-name').val().trim();
        const addImage = $('#edit-image')[0].files[0];
        const existingImage = $('#existing-image').val();
        const formData = new FormData();
        formData.append('id', instructorId);
        formData.append('name', Name);

        if (addImage) {
            formData.append('image', addImage);
        } else {
            formData.append('image', existingImage);
        }

        $.ajax({
            url: config.apiUrl+'/api/instructor/update-instructor',
            method: 'PUT',
            contentType: false,
            processData: false,
            headers: {
                'x-access-token': token
            },
            data: formData,
            success: function(response) {
                $('#editContactModal').modal('hide');
                $('#zero-config').DataTable().ajax.reload();
                Swal.fire({
                    icon: 'success',
                    title: 'Success',
                    text: 'Instructor updated successfully!',
                    confirmButtonText: 'OK'
                });
            },
            error: function(xhr, status, error) {
                console.error("Error updating Instructor:", error);
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Failed to update Instructor. Please try again.',
                    confirmButtonText: 'OK'
                });
            }
        });
    });



    $('#zero-config').on('click', '.icon-delete-file', function(e) {
        var instructorId = $(this).data('file-id');
        e.preventDefault();
        console.log('Delete Instructor ID:', instructorId);

        if (!instructorId) {
            console.error('Instructor ID is undefined or invalid');
            Swal.fire('Error!', 'Instructor ID is not valid.', 'error');
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
                fetch(config.apiUrl+'/api/instructor/remove-instructor', {
                    method: 'DELETE',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        id: instructorId })
                })
                    .then(response => response.json())
                    .then(data => {
                        console.log('success:', data);
                        if (data.message === 'instructor details deleted successfully..') {
                            Swal.fire('Deleted!', 'Your Instructor has been deleted.', 'success').then(() => {
                                $('#zero-config').DataTable().ajax.reload();
                            });
                        } else {
                            Swal.fire('Error!', 'There was an issue with deleting the Instructor.', 'error');
                        }
                    })
                    .catch(error => {
                        console.error('Error:', error);
                        Swal.fire('Error!', 'There was an error deleting your Instructor.', 'error');
                    });
            }
        });
    });


</script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>

