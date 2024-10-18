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
                            <li class="breadcrumb-item"><a href="#">User Details</a></li>
                            <li class="breadcrumb-item active" aria-current="page">User</li>
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
                                <h5 class="modal-title add-title" id="addContactModalTitle">Add User</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"></svg>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="add-contact-box">
                                    <form id="addContactForm" enctype="multipart/form-data">
                                        <div class="row mb-2">
                                            <div class="lawyer-name">
                                                <label>User Name</label>
                                                <input type="text" id="add-name" class="form-control" placeholder="User Name">
                                                <span class="validation-text"></span>
                                            </div>
                                        </div>
                                        <div class="row mb-2">
                                                <div class="contact-status">
                                                    <label>Role Name</label>
                                                    <select id="c-roll" class="form-select custom-input-width">
                                                        <option value="" disabled selected>Select Role</option>
                                                    </select>
                                                </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="lawyer-name">
                                                <label>Email</label>
                                                <input type="text" id="add-email" class="form-control" placeholder="Email">
                                                <span class="validation-text"></span>
                                            </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="password-field">
                                                <label>Password</label>
                                                <div class="input-group">
                                                    <input type="password" id="add-pass" class="form-control" placeholder="Password">
                                                        <span class="input-group-text">
                                                        <i class="fa fa-eye" id="toggle-password" style="cursor: pointer;"></i>
                                                        </span>
                                                </div>
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
                                <h5 class="modal-title" id="editContactModalTitle">Edit User</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="edit-contact-box">
                                    <form id="editContactForm" enctype="multipart/form-data">
                                        <input type="hidden" id="edit-id">
                                        <div class="row mb-2">
                                            <div class="lawyer-name">
                                                <label>Name</label>
                                                <input type="text" id="edit-name" name="name" class="form-control" required>
                                                <span class="validation-text"></span>
                                            </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="contact-status">
                                                <label>Role Name</label>
                                                <select id="edit-roll" class="form-select custom-input-width" name="role">
                                                    <option value="" disabled selected>Select Role</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="lawyer-name">
                                                <label>Email</label>
                                                <input type="text" id="edit-email" class="form-control" placeholder="Email">
                                                <span class="validation-text"></span>
                                            </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="password-field">
                                                <label>Password</label>
                                                <div class="input-group">
                                                    <input type="password" id="edit-pass" class="form-control" placeholder="Password">
                                                    <span class="input-group-text">
                                                        <i class="fa fa-eye" id="toggle-password1" style="cursor: pointer;"></i>
                                                        </span>
                                                </div>
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
<script src="../src/assets/configuration.js"></script>
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="../src/plugins/src/table/datatable/datatables.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>

<script>

    $(document).ready(function() {
        $('#zero-config').DataTable({
            ajax: {
                url: config.apiUrl+'/api/user/get-all-users',

                method: 'GET',
                dataType: 'json',
                dataSrc: 'users'
            },
            columns: [
                {
                    title: "Name",
                    data: 'name'
                },
                {
                    title: "Role Name",
                    data: function(row) {
                        return row.role.name;
                    }
                },
                {
                    title: "Email",
                    data: 'email'
                },
                {
                    title: "Status",
                    data: function(row) {
                        const statusText = row.status === true ? 'Active' : 'Inactive';
                        const statusClass = row.status === true ? 'btn-success' : 'btn-danger';
                        return `
                        <button class="btn ${statusClass} btn-sm change-status"
                                data-company-id="${row.id}"
                                data-status="${row.status}">
                            ${statusText}
                        </button>
                    `;
                    }
                },

                {
                    title:'Last Login',
                    data: function(row) {
                        return new Date(row.last_logged_in).toLocaleDateString('en-US', {
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
            $.ajax({
                url: config.apiUrl+'/api/role/roles',
                method: 'GET',
                success: function(response) {
                    const roles = response.roles;
                    roles.forEach(function(role) {
                        $('#c-roll').append(`<option value="${role.id}">${role.name}</option>`);
                    });
                },
                error: function(xhr, status, error) {
                    console.log('Failed to load roles:', error);
                }
            });

            $('#toggle-password').click(function() {
                const passwordField = $('#add-pass');
                const passwordFieldType = passwordField.attr('type');

                if (passwordFieldType === 'password') {
                    passwordField.attr('type', 'text');
                    $('#toggle-password').removeClass('fa-eye').addClass('fa-eye-slash');
                } else {
                    passwordField.attr('type', 'password');
                    $('#toggle-password').removeClass('fa-eye-slash').addClass('fa-eye');
                }
            });

            $('#addContactModal').on('shown.bs.modal', function () {
                $('#add-name').val('');
                $('#c-roll').val('');
                $('#add-email').val('');
                $('#add-pass').val('');
            });

            $('#btn-add').click(function(event) {
                event.preventDefault();

                const addName = $('#add-name').val().trim();
                const addRole = $('#c-roll').val();
                const addEmail = $('#add-email').val().trim();
                const addPassword = $('#add-pass').val().trim();

                if (addName && addRole && addEmail && addPassword) {
                    $.ajax({
                        url: config.apiUrl+'/api/user/register-user',
                        method: 'POST',
                        contentType: 'application/json',
                        data: JSON.stringify({
                            name: addName,
                            password: addPassword,
                            email: addEmail,
                            role_id: addRole
                        }),
                        success: function(response) {
                            console.log('success');
                            $('#addContactModal').modal('hide');
                            $('#zero-config').DataTable().ajax.reload();

                            $('#add-name').val('');
                            $('#c-roll').val('');
                            $('#add-email').val('');
                            $('#add-pass').val('');

                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: 'User added successfully!',
                                confirmButtonText: 'OK'
                            });
                        },
                        error: function(xhr, status, error) {
                            console.log('error');
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: 'Failed to add User. Please try again.',
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

        $(document).ready(function() {
            $.ajax({
                url: config.apiUrl+'/api/role/roles',
                method: 'GET',
                success: function(response) {
                    const roles = response.roles;
                    const $roleSelect = $('#edit-roll');
                    roles.forEach(function(role) {
                        $roleSelect.append(`<option value="${role.id}">${role.name}</option>`);
                    });
                },
                error: function(xhr, status, error) {
                    console.error('Failed to load roles:', error);
                }
            });
        });

        $('#toggle-password1').click(function() {
            const passwordField = $('#edit-pass');
            const passwordFieldType = passwordField.attr('type');

            if (passwordFieldType === 'password') {
                passwordField.attr('type', 'text');
                $('#toggle-password1').removeClass('fa-eye').addClass('fa-eye-slash');
            } else {
                passwordField.attr('type', 'password');
                $('#toggle-password1').removeClass('fa-eye-slash').addClass('fa-eye');
            }
        });

        $('#zero-config').on('click', '.icon-edit-file', function(e) {
            e.preventDefault();
            const UserId = $(this).data('file-id');

            if (UserId) {
                console.log("Fetching details for User ID:", UserId);

                $.ajax({
                    url: config.apiUrl+'/api/user/get',
                    method: 'POST',
                    contentType: 'application/json',
                    data: JSON.stringify({ id: UserId }),
                    success: function(response) {
                        console.log("User data:", response);
                        if (response.success) {
                            const Username = response.user.name;
                            const UserEmail = response.user.email;
                            const UserRoleId = response.user.role_id;
                            const UserPassword = response.user.password;

                            $('#edit-id').val(UserId);
                            $('#edit-name').val(Username);
                            $('#edit-email').val(UserEmail);
                            $('#edit-roll').val(UserRoleId);
                            $('#edit-pass').val(UserPassword);

                            $('#editContactModal').modal('show');
                        } else {
                            console.error("Failed to fetch user data:", response.message);
                        }
                    },
                    error: function(xhr, status, error) {
                        console.error("Error fetching user data:", status, error);
                    }
                });
            } else {
                alert('ID is undefined');
            }
        });


        $('#btn-update').click(function(event) {
            event.preventDefault();

            const userId = $('#edit-id').val().trim();
            const userName = $('#edit-name').val().trim();
            const userEmail = $('#edit-email').val().trim();
            const userPassword = $('#edit-pass').val().trim();
            const userRoleId = $('#edit-roll').val();

            const roleId = parseInt(userRoleId, 10);

            if (userName && userEmail && userPassword && roleId) {
                $.ajax({
                    url: config.apiUrl+'/api/user/update-user',
                    method: 'PUT',
                    contentType: 'application/json',
                    data: JSON.stringify({
                        id: userId,
                        name: userName,
                        email: userEmail,
                        password: userPassword,
                        role_id: roleId
                    }),
                    success: function(response) {
                        $('#editContactModal').modal('hide');
                        $('#zero-config').DataTable().ajax.reload();
                        Swal.fire({
                            icon: 'success',
                            title: 'Success',
                            text: 'User updated successfully!',
                            confirmButtonText: 'OK'
                        });
                    },
                    error: function(xhr, status, error) {
                        console.error("Error updating user:", error);
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Failed to update user. Please try again.',
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

        $('#zero-config').on('click', '.icon-delete-file', function(e) {
            var userId = $(this).data('file-id');
            e.preventDefault();
            console.log('Delete Data ID:', userId);

            if (!userId) {
                console.error('User ID is undefined or invalid');
                Swal.fire('Error!', 'User ID is not valid.', 'error');
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
                    fetch('http://192.168.0.199:8001/api/user/remove-user', {
                        method: 'DELETE',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({
                            id: userId })
                    })
                        .then(response => response.json())
                        .then(data => {
                            console.log('success:', data);
                            if (data.message === 'user details deleted successfully..') {
                                Swal.fire('Deleted!', 'Your User has been deleted.', 'success').then(() => {
                                    $('#zero-config').DataTable().ajax.reload();
                                });
                            } else {
                                Swal.fire('Error!', 'There was an issue with deleting the User.', 'error');
                            }
                        })
                        .catch(error => {
                            console.error('Error:', error);
                            Swal.fire('Error!', 'There was an error deleting your User.', 'error');
                        });
                }
            });
        });

        $('#zero-config').on('click', '.change-status', function() {
            const button = $(this);
            const userId = button.data('company-id');
            const currentStatus = button.data('status');
            const newStatus = currentStatus === true ? false : true;

            $.ajax({
                url:config.apiUrl+'/api/user/change-status-user',
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify({
                    id: userId,
                    status: newStatus
                }),
                success: function(response) {

                    button.text(newStatus === true ? 'Active' : 'Inactive');
                    button.toggleClass('btn-success btn-danger');
                    button.data('status', newStatus);

                    $('#zero-config').DataTable().ajax.reload();

                    Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        text: 'User status changed successfully!',
                        confirmButtonText: 'OK'
                    });
                },
                error: function(xhr, status, error) {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Failed to update User status. Please try again.',
                        confirmButtonText: 'OK'
                    });
                }
            });
        });


    });
</script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>

