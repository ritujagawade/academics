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
                            <li class="breadcrumb-item"><a href="Course.jsp">Course</a></li>
                            <li class="breadcrumb-item">Course List</li>
                            <li class="breadcrumb-item">Edit Course</li>
                            <li class="breadcrumb-item active" aria-current="page">Lessonfiles</li>
                        </ol>
                    </nav>

                    <div class="d-flex justify-content-sm-end" style="margin-left: 450px">
                        <button id="btn-adddata" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addContactModal">+Add</button>
                    </div>

                    <div class="dt-buttons">
                        <a href="javascript:window.history.back();" class="action-add btn btn-primary" title="Back">Back</a>
                    </div>
                </div>
                <!-- /BREADCRUMB -->

                <!-- Add Modal -->
                <div class="modal fade" id="addContactModal" tabindex="-1" role="dialog" aria-labelledby="addContactModalTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content" style="background: white;width: 400px">
                            <div class="modal-header">
                                <h5 class="modal-title add-title" id="addContactModalTitle">Add Lesson File</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"></svg>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="add-contact-box" >
                                    <div class="col-xxl-9 col-xl-12 col-lg-12 col-md-12 col-sm-12">
                                        <form id="addContactForm" style="margin-right: -22px;">
                                            <div class="row mt-2 w-100 " >
                                                <div class="col-md-12">
                                                    <div>
                                                        <label>lesson Name</label>
                                                        <input type="text" id="add-title" class="form-control custom-input-width" placeholder="Lesson Name" style="background-color: white;color: #0e1726;">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mt-2 w-100" >
                                                <div class="col-md-12">
                                                    <label>Upload file</label>
                                                    <div class="multiple-file-upload">
                                                        <input type="file" id="add-file" accept=".zip" name="lesson_file" class="form-control" multiple>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-xxl-12 col-sm-4 col-12 mt-3" >
                                                <button id="btn-add" class="btn btn-primary">Add</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!--Get Lesson Name-->
                <form id="editForm" enctype="multipart/form-data">
                    <input type="hidden" id="edit-id" name="id">
                    <div class="col-md-12 p-2 ps-0">
                        <div class="lesson-name">
                            <%--<label>Lesson Name</label>--%>
                            <input type="text" id="edit-name" name="name" class="form-control" required style="border: none; background-color: #fafafa;font-size:18px;margin-left: -17px;margin-top: -17px;color: #3f435f;">
                        </div>
                    </div>
                </form>

                <div class="row layout-top-spacing" style="margin-top: -40px">
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
        const urlParams = new URLSearchParams(window.location.search);
        const LessonId = urlParams.get('id');

        let lessonTitle = '';
        $('#zero-config').DataTable({
            ajax: {
                url: config.apiUrl+'/api/lesson/get-all-files-lesson',
                method: 'POST',
                contentType: 'application/json',
                data: function(d) {
                    return JSON.stringify({
                        lesson_id: LessonId
                    });
                },
                dataSrc: function(json) {
                    if (json.lessonFiles && json.lessonFiles.length > 0) {
                        lessonTitle = json.lessonFiles[0].lesson.title;
                        return json.lessonFiles;
                    }
                    return [];
                }
            },
            columns: [
                {
                    title: "Lesson Files",
                    data: function(row) {
                        var fileName = row.lesson_file.split('\\').pop();
                        return fileName;
                    }
                },
                {
                    title: "Created At",
                    data: function(row) {
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
                        <a href="#" class="icon-delete-file" data-file-id="${row.file_id}" title="Delete Record">
                            <span class="badge badge-light-danger text-start">
                                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                            </span>
                        </a>
                    `;
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
                "emptyTable":"No Lesson Files Available"
            },
            stripeClasses: [],
            lengthMenu: [7, 10, 20, 50],
            pageLength: 10
        });

        $.ajax({
            url: config.apiUrl+'/api/lesson/get-lesson',
            method: 'POST',
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({ id: LessonId }),
            success: function(response) {
                if (response && response.lesson) {
                    $('#edit-id').val(response.lesson.id);
                    $('#edit-name').val(response.lesson.title);
                } else {
                    console.error("lesson details not found.");
                }
            },
            error: function(xhr, status, error) {
                console.error("Error fetching lesson details:", error);
            }
        });


        $('#addContactModal').on('show.bs.modal', function() {
            $('#add-title').val(lessonTitle).prop('readonly', true);
        });

        $('#btn-add').click(function(event) {
            event.preventDefault();

            const addFiles = $('#add-file')[0].files;

            if (addFiles.length > 0) {
                const formData = new FormData();

                for (let i = 0; i < addFiles.length; i++) {
                    formData.append('lesson_file', addFiles[i]);
                }

                formData.append('lesson_id', LessonId);

                $.ajax({
                    url: config.apiUrl+'/api/lesson/add-lesson-file',
                    method: 'POST',
                    data: formData,
                    processData: false,
                    contentType: false,
                    success: function(response) {
                        if (response && response.success) {
                            $('#addContactModal').modal('hide');
                            $('#zero-config').DataTable().ajax.reload();
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: 'Lesson File added successfully!',
                                confirmButtonText: 'OK'
                            });

                            $('#add-file').val('');
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: 'Lesson file could not be added. Please try again.',
                                confirmButtonText: 'OK'
                            });
                        }
                    },
                    error: function(xhr, status, error) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Failed to add Lesson File. Please try again.',
                            confirmButtonText: 'OK'
                        });
                    }
                });
            } else {
                Swal.fire({
                    icon: 'warning',
                    title: 'Incomplete Form',
                    text: 'Please select a file to upload.',
                    confirmButtonText: 'OK'
                });
            }
        });
    });

    $('#zero-config').on('click', '.icon-delete-file', function(e) {
        const urlParams = new URLSearchParams(window.location.search);
        const LessonId = urlParams.get('id');
        var fileId = $(this).data('file-id');
        e.preventDefault();
        console.log('Delete File ID:', fileId);

        if (!fileId) {
            console.error('File ID is undefined or invalid');
            Swal.fire('Error!', 'File ID is not valid.', 'error');
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
                fetch(config.apiUrl+'/api/lesson/remove-lesson-file', {
                    method: 'DELETE',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        file_id: fileId,
                        lesson_id:LessonId
                    })
                })
                    .then(response => response.json())
                    .then(data => {
                        console.log('success:', data);
                        if (data.message === 'lesson file details deleted successfully..') {
                            Swal.fire('Deleted!', 'lesson file deleted successfully..', 'success').then(() => {
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




</script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>

