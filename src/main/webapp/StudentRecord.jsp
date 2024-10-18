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
                            <li class="breadcrumb-item"><a href="#">Student</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Student List</li>
                        </ol>
                    </nav>
                    <div class="d-flex justify-content-sm-end justify-content-center" style="margin-top: -25px">
                        <button id="btn-adddata" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addContactModal">+Add</button>
                    </div>
                </div>
                <!-- /BREADCRUMB -->
                <!-- Add -->
                <div class="modal fade" id="addContactModal" tabindex="-1" role="dialog" aria-labelledby="addContactModalTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                        <div class="modal-content" style="background: white">
                            <div class="modal-header">
                                <h5 class="modal-title add-title" id="addContactModalTitle">Add Student</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"></svg>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="add-contact-box" style="margin-right: -25px;">
                                    <div class="col-xxl-9 col-xl-12 col-lg-12 col-md-12 col-sm-12">                                    <form id="addContactForm" enctype="multipart/form-data">
                                        <div class="row w-100 mt-2">
                                            <div class="col-md-6">
                                                <div>
                                                    <label>First Name</label>
                                                    <input type="text" name="first_name" id="add_fname" class="form-control" placeholder="First Name"  required/>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div>
                                                    <label>Last Name</label>
                                                    <input type="text" name="last_name" id="add_lname" class="form-control" placeholder="Last Name"  required/>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row w-100 mt-2">
                                            <div class="col-md-6">
                                                <div>
                                                    <label class="form-label">Gender</label>
                                                    <select class="form-select" name="gender" id="add-gender">
                                                        <option value="" disabled selected>Select Gender</option>
                                                        <option value="Male">Male</option>
                                                        <option value="Female">Female</option>
                                                        <option value="Other">Other</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <label class="form-label">Date of Birth</label>
                                                <input type="date" name="dob" id="add_dob" class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="row w-100 mt-2">
                                            <div class="col-md-6">
                                                <label class="form-label">Phone</label>
                                                <div class="input-group">
                                                    <span class="input-group-text" id="inputGroupPrepend2">+91</span>
                                                    <input type="text" class="form-control" id="add-contact" aria-describedby="inputGroupPrepend2" pattern="[0-9]{10}" title="Please enter a 10-digit phone number" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <label>Address</label>
                                                <input type="text" id="add-address" class="form-control" placeholder="Address">
                                                <span class="validation-text"></span>
                                            </div>
                                        </div>
                                        <div class="row w-100 mt-2">
                                            <div class="col-md-12">
                                                <label>Image</label>
                                                <div class="multiple-file-upload">
                                                    <input type="file" id="add-image" name="file" class="form-control" required>
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
                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                        <div class="modal-content" style="background: white">
                            <div class="modal-header">
                                <h5 class="modal-title" id="editContactModalTitle">Edit Course</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"></svg>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="edit-contact-box">
                                    <div class="col-xxl-9 col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <form id="editContactForm" style="margin-right: -25px;">
                                            <input type="hidden" id="edit-id" name="id">
                                            <div class="row mt-2 w-100" >
                                                <div class="col-md-6">
                                                    <div>
                                                        <label>First Name</label>
                                                        <input type="text" name="first_name" id="edit-fname" class="form-control" placeholder="First Name"  required/>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div>
                                                        <label>Last Name</label>
                                                        <input type="text" name="last_name" id="edit-lname" class="form-control" placeholder="Last Name"  required/>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row mt-2 w-100" >
                                                <div class="col-md-6">
                                                    <div>
                                                        <label class="form-label" for="edit-gender">Gender</label>
                                                        <select class="form-select" name="gender" id="edit-gender">
                                                            <option value="" disabled selected>Select Gender</option>
                                                            <option value="Male">Male</option>
                                                            <option value="Female">Female</option>
                                                            <option value="Other">Other</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <label class="form-label">Date of Birth</label>
                                                    <input type="date" name="dob" id="edit-dob" class="form-control" required>
                                                </div>
                                            </div>
                                            <div class="row mt-2 w-100" >
                                                <div class="col-md-6">
                                                    <label class="form-label">Phone</label>
                                                    <div class="input-group">
                                                        <span class="input-group-text">+91</span>
                                                        <input type="text" class="form-control" id="edit-contact" aria-describedby="inputGroupPrepend2" pattern="[0-9]{10}" title="Please enter a 10-digit phone number" required>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <label>Address</label>
                                                    <input type="text" id="edit-address" class="form-control" placeholder="Address">
                                                    <span class="validation-text"></span>
                                                </div>
                                            </div>
                                            <div class="row mt-2 w-100">
                                                <div class="col-md-12">
                                                    <label>Image</label>
                                                    <div class="multiple-file-upload">
                                                        <input type="hidden" id="existing-image">
                                                        <input type="file" id="edit-image" name="file" class="form-control" >
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xxl-12 col-sm-4 col-12 mt-3" >
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
                url: config.apiUrl+'/api/student/get-all-students',
                method: 'GET',
                dataType: 'json',
                dataSrc: 'users'
            },
            columns: [
                {
                    title: "First Name",
                    data:function (row) {
                        return row.student.first_name;
                    }
                },
                {
                    title: "Last Name",
                    data:function (row) {
                        return row.student.last_name;
                    }
                },
                {
                    title: "Contact",
                    data:function (row) {
                        return row.student.contact;
                    }
                },
                {
                    title:"Date of Birth",
                    data:function (row) {
                        return row.student.dob;

                    }
                },
                { title: "Address",
                    data: function(row) {
                        return row.student.address;
                    }},
                {
                    title: "Image",
                    data:function (row) {
                        return `<img src="${row.student.image}" style="height: 50px; width:50px; border-radius:50%;"/>`;

                    }
                },

                // { title: "Created At", data: function(row) {
                //         return new Date(row.student.created_at).toLocaleDateString('en-US', {
                //             year: 'numeric',
                //             month: 'short',
                //             day: 'numeric'
                //         });
                //
                //     }},
                // { title: "Updated At", data: function(row) {
                //         return new Date(row.student.updated_at).toLocaleDateString('en-US', {
                //             year: 'numeric',
                //             month: 'short',
                //             day: 'numeric'
                //         });
                //
                //     }},
                {
                    title: "Action",
                    data: function(row) {
                        console.log(row);
                        return `
                    <a href="#" class="icon-edit-file" data-file-id="${row.student.id}" title="Update">
                        <span class="badge badge-light-primary text-start me-2">
                             <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-3"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>
                        </span>
                    </a>`+
                            `<a href="#" class="icon-delete-file" data-file-id="${row.student.id}" title="Delete Record">
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

            const addfname = $('#add_fname').val().trim();
            const adddlname = $('#add_lname').val().trim();
            const addgender = $('#add-gender').val().trim();
            const adddob = $('#add_dob').val().trim();
            const addcontact = $('#add-contact').val().trim();
            const addaddress = $('#add-address').val().trim();
            const addimage = $('#add-image')[0].files[0];

            const token = localStorage.getItem('authToken');

            if (addfname && adddlname && addgender && adddob && addcontact && addaddress && addimage)
            {
                const formData = new FormData();
                formData.append('first_name', addfname);
                formData.append('last_name', adddlname);
                formData.append('gender', addgender);
                formData.append('dob', adddob);
                formData.append('contact', addcontact);
                formData.append('address', addaddress);
                formData.append('image', addimage);

                $.ajax({
                    url: config.apiUrl+'/api/student/register-student',
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
                            text: 'Student added successfully!',
                            confirmButtonText: 'OK'
                        });
                    },
                    error: function(xhr, status, error) {
                        console.log('error');
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Failed to add Student. Please try again.',
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
        const studentId = $(this).data('file-id');
        const token = localStorage.getItem('authToken');
        if (studentId) {
            console.log("Fetching details for Student ID:", studentId);

            $.ajax({
                url: config.apiUrl+'/api/student/get',
                method: 'POST',
                contentType: 'application/json',
                headers: {
                    'x-access-token': token
                },
                data: JSON.stringify({ id: studentId }),
                success: function(response) {
                    console.log("Student data:", response);
                    if (response.success) {
                        const FirstName = response.student.first_name;
                        const LastName = response.student.last_name;
                        const GenderStud = response.student.gender;
                        const DOB = response.student.dob;
                        const Contact = response.student.contact;
                        const Address = response.student.address;
                        const Image = response.student.image;

                        $('#edit-id').val(studentId);
                        $('#edit-fname').val(FirstName);
                        $('#edit-lname').val(LastName);
                        $('#edit-gender').val(GenderStud);
                        $('#edit-dob').val(DOB);
                        $('#edit-contact').val(Contact);
                        $('#edit-address').val(Address);
                        $('#existing-image').val(Image);

                        $('#edit-image').val('');
                        $('#editContactModal').modal('show');
                    } else {
                        console.error("Failed to fetch student data:", response.message);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("Error fetching student data:", status, error);
                }
            });
        } else {
            alert('ID is undefined');
        }
    });

    $('#btn-update').click(function(event) {
        event.preventDefault();

        const token = localStorage.getItem('authToken');

        const studentId = $('#edit-id').val().trim();
        const FirstName = $('#edit-fname').val().trim();
        const LastName = $('#edit-lname').val().trim();
        const Gender = $('#edit-gender').val().trim();
        const StudDob = $('#edit-dob').val().trim();
        const Contact = $('#edit-contact').val().trim();
        const Address = $('#edit-address').val().trim();
        const addimage = $('#edit-image')[0].files[0];
        const existingImage = $('#existing-image').val();

        if (FirstName && LastName && Gender && StudDob && Contact && Address || addimage) {

            const formData = new FormData();
            formData.append('id', studentId);
            formData.append('first_name', FirstName);
            formData.append('last_name', LastName);
            formData.append('gender', Gender);
            formData.append('dob', StudDob);
            formData.append('contact', Contact);
            formData.append('address', Address);
            // formData.append('image', addimage);
            if (addimage) {
                formData.append('image', addimage);
            } else {
                formData.append('image', existingImage);
            }

            $.ajax({
                url: config.apiUrl+'/api/student/update-student',
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
                        text: 'Student updated successfully!',
                        confirmButtonText: 'OK'
                    });
                },
                error: function(xhr, status, error) {
                    console.error("Error updating Student:", error);
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Failed to update Student. Please try again.',
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
        var studentId = $(this).data('file-id');

        alert(studentId);
        e.preventDefault();
        console.log('Delete Student ID:', studentId);

        if (!studentId) {
            console.error('Student ID is undefined or invalid');
            Swal.fire('Error!', 'Student ID is not valid.', 'error');
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
                fetch(config.apiUrl+'/api/student/remove-student', {
                    method: 'DELETE',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        id: studentId })
                })
                    .then(response => response.json())
                    .then(data => {
                        console.log('success:', data);
                        if (data.message === 'student details deleted successfully..') {
                            Swal.fire('Deleted!', 'Your Student has been deleted.', 'success').then(() => {
                                $('#zero-config').DataTable().ajax.reload();
                            });
                        } else {
                            Swal.fire('Error!', 'There was an issue with deleting the Student.', 'error');
                        }
                    })
                    .catch(error => {
                        console.error('Error:', error);
                        Swal.fire('Error!', 'There was an error deleting your User.', 'error');
                    });
            }
        });
    });


</script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>
