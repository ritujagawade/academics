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
                <div class="page-meta d-flex justify-content-between align-items-center" style="padding-bottom: 15px;">
                    <nav class="breadcrumb-style-one" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Course</a></li>
                            <li class="breadcrumb-item"><a href="#">Course List</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Edit Course</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-sm-12 col-md-12">
                    <div class="dt-buttons" style="float:right;margin-top: -42px !important;">
                        <a href="Course.jsp" class="action-add btn btn-primary" title="Back">Back</a>
                    </div>
                </div>
                <!-- /BREADCRUMB -->
                <div class="modal fade" id="addContactModal" tabindex="-1" role="dialog" aria-labelledby="addContactModalTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                        <div class="modal-content" style="background: white">
                            <div class="modal-header">
                                <h5 class="modal-title add-title" id="addContactModalTitle">Add Lessons</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                                    <svg aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x"></svg>
                                </button>
                            </div>
                            <div class="modal-body" style="padding-top: 1px;">
                                <div class="add-contact-box">
                                    <div class="col-xxl-9 col-xl-12 col-lg-12 col-md-12 col-sm-12" style="margin-left: 10px;">
                                        <form id="addContactForm" enctype="multipart/form-data">
                                            <div class="row w-100 mt-2">
                                                <div class="col-md-6">
                                                    <div>
                                                        <label>Title</label>
                                                        <input type="text" name="title" id="add-title" class="form-control" placeholder="Title"  required/>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div>
                                                        <label>Description</label>
                                                        <textarea name="description" id="add-descr" class="form-control" placeholder="Description" rows="1" required></textarea>
                                                    </div>
                                                </div>
                                        </div>
                                        <div class="row w-100 mt-2">
                                            <div class="col-md-6 ">
                                                <label>Image</label>
                                                <div class="multiple-file-upload">
                                                    <input type="file" id="add-image" name="image" class="form-control" required>
                                                </div>
                                            </div>
                                                <div class="col-md-6">
                                                    <label>Upload file</label>
                                                    <div class="multiple-file-upload">
                                                        <input type="file" id="add-file" accept=".zip" name="lesson_file" class="form-control" multiple>
                                                    </div>
                                                </div>
                                        </div>
                                            <div class="row w-100 mt-2">
                                                <div class="col-md-6">
                                                    <label>Upload Video</label>
                                                    <div class="multiple-file-upload">
                                                        <input type="file" id="add-video" name="upload_video" class="form-control" required>
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
                <!-- Edit Course Modal details -->
                <div class="modal fade" id="editContactModal" tabindex="-1" role="dialog" aria-labelledby="editContactModalTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                        <div class="modal-content" style="background: white">
                            <div class="modal-header">
                                <h5 class="modal-title" id="editContactModalTitle">Edit Lesson</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="edit-contact-box" style="margin-left: 20px;">
                                    <form id="editContactForm1" enctype="multipart/form-data">
                                        <input type="hidden" id="edit-id1" name="id">
                                        <div class="row mt-2 w-100" >
                                            <div class="col-md-6">
                                                <div>
                                                    <label>Title</label>
                                                    <input type="text" name="title" id="edit-t" class="form-control" placeholder="Title"  required/>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <div>
                                                    <label for="edit-d">Description</label>
                                                    <textarea name="description" id="edit-d" class="form-control" placeholder="Description" rows="1" required></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mt-2 w-100" >
                                            <div class="col-md-6">
                                                <label>Image</label>
                                                <div class="multiple-file-upload">
                                                    <input type="file" id="edit-i" name="image" class="form-control" required>
                                                </div>
                                            </div>

                                            <div class="col-md-6">
                                                <label>Upload file</label>
                                                <div class="multiple-file-upload">
                                                    <input type="file" id="edit-f" accept=".zip" name="lesson_file" class="form-control" multiple>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mt-2 w-100" >
                                            <div class="col-md-6">
                                                <label>Upload Video</label>
                                                <div class="multiple-file-upload">
                                                    <input type="file" id="edit-vi" name="upload_video" class="form-control" required>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="col-xxl-12 col-sm-4 col-12 mt-3">
                                            <button type="button" id="btn-upd" class="btn btn-primary">Update</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal-content" style="background: white; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); padding: 20px; margin-top: 15px;">
                    <div class="edit-contact-box">
                        <div class="col-xxl-9 col-xl-12 col-lg-12 col-md-12 col-sm-12 mx-auto">
                            <form id="editContactForm">
                                <input type="hidden" id="edit-id">
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="edit-title" class="form-label">Course Name</label>
                                        <input type="text" id="edit-title" class="form-control" placeholder="Enter Course Name">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="edit-instruct" class="form-label">Instructor Name</label>
                                        <select id="edit-instruct" class="form-select">
                                            <option value="" disabled selected>Select Instructor</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="edit-credit" class="form-label">Credit</label>
                                        <input type="text" id="edit-credit" class="form-control" placeholder="Enter Credit">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="edit-duration" class="form-label">Duration</label>
                                        <input type="text" id="edit-duration" class="form-control" placeholder="Enter Duration">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-12">
                                        <label for="edit-descript" class="form-label">Course Description</label>
                                        <input type="text" id="edit-descript" class="form-control" placeholder="Enter Course Description">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="edit-SDate" class="form-label">Start Date</label>
                                        <input type="date" id="edit-SDate" class="form-control">
                                    </div>
                                    <div class="col-md-6">
                                        <label for="edit-EDate" class="form-label">End Date</label>
                                        <input type="date" id="edit-EDate" class="form-control">
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <label for="edit-image" class="form-label">Image</label>
                                        <input type="file" id="edit-image" name="file" class="form-control">
                                    </div>
                                </div>
                                <div class="text-end">
                                    <button id="btn-update" class="btn btn-primary">Update</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="d-flex justify-content-sm-end justify-content-center mt-3">
                    <button id="btn-adddata" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addContactModal">+Add Lesson</button>
                </div>

                <div class="row layout-top-spacing" style="margin-top: -10px;">
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
        const CourseId = urlParams.get('id');
        $('#zero-config').DataTable({
            ajax: {
                url: config.apiUrl+'/api/lesson/get-all-lessons-of-course',
                method: 'POST',
                contentType: 'application/json',
                data: function(d) {
                    return JSON.stringify({
                        course_id: CourseId
                    });
                },
                dataSrc: 'lessons',
            },
            columns: [
                {
                    title: "Lesson",
                    data: 'title'
                },
                {
                    title: "Description",
                    data: 'description'
                },
                {
                    title: "Video",
                    data: function(row) {
                        return `
                        <video width="50" poster="${row.profile}" controls>
                            <source src="${row.upload_video}" type="video/mp4">
                        </video>`;
                    }
                },
                {
                    title: "Action",
                    data: function(row) {
                        return `
                        <div class="d-flex align-items-center">
                           <div class="dropdown">
                               <a href="#" class="icon-triple-file" id="dropdownMenuButton" data-file-id="${row.id}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="margin-right:8px;">
                               <span class="badge badge-light-dark text-start me-2">
                                  <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-more-vertical"><circle cx="12" cy="12" r="1"></circle><circle cx="12" cy="5" r="1"></circle><circle cx="12" cy="19" r="1"></circle></svg>
                               </span>
                               </a>
                               <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="max-height: 200px; overflow-y: auto; top: -55px !important;margin-right: 55px;">
                               </div>
                           </div>

                           <a title="View" class="badge badge-light-warning text-start me-2 action-view" href="LessonFile.jsp?id=${row.id}">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-eye"><path d="M1 12s3-7 11-7 11 7 11 7-3 7-11 7S1 12 1 12z"></path><circle cx="12" cy="12" r="3"></circle></svg>
                           </a>

                            <a href="#" class="icon-edit-file me-2" data-file-id="${row.id}" title="Update Lesson">
                                <span class="badge badge-light-primary text-start me-2">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-edit-3"><path d="M12 20h9"></path><path d="M16.5 3.5a2.121 2.121 0 0 1 3 3L7 19l-4 1 1-4L16.5 3.5z"></path></svg>
                                </span>
                            </a>

                            <a href="#" class="icon-delete-file" data-file-id="${row.id}" title="Delete Lesson">
                                <span class="badge badge-light-danger text-start">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-trash"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                                </span>
                            </a>
                        </div>
                        `;
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
            const addTitle = $('#add-title').val().trim();
            const addDescription = $('#add-descr').val().trim();
            const addImage = $('#add-image')[0].files[0];
            const addFiles = $('#add-file')[0].files;
            const addVideo = $('#add-video')[0].files[0];

            if(addTitle && addDescription && addImage && addFiles.length > 0 && addVideo) {
                const formData = new FormData();
                formData.append('title', addTitle);
                formData.append('description', addDescription);
                formData.append('image', addImage);
                formData.append('upload_video', addVideo);

                for (let i = 0; i < addFiles.length; i++) {
                    formData.append('lesson_file', addFiles[i]);
                }

                formData.append('course_id', CourseId);

                $.ajax({
                    url: config.apiUrl+'/api/lesson/add-lesson',
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
                                text: 'Lesson added successfully!',
                                confirmButtonText: 'OK'
                            });
                            $('#add-title').val('');
                            $('#add-descr').val('');
                            $('#add-image').val('');
                            $('#add-file').val('');
                            $('#add-video').val('');
                        } else {
                            Swal.fire({
                                icon: 'error',
                                title: 'Error',
                                text: 'Lesson could not be added. Please try again.',
                                confirmButtonText: 'OK'
                            });
                        }
                    },
                    error: function(xhr, status, error) {
                        Swal.fire({
                            icon: 'error',
                            title: 'Error',
                            text: 'Failed to add Lesson. Please try again.',
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
        const urlParams = new URLSearchParams(window.location.search);
        const CourseId = urlParams.get('id');
        e.preventDefault();
        const lessonId = $(this).data('file-id');
        if (lessonId) {
            console.log("Fetching details for lesson ID:", lessonId);

            $.ajax({
                url: config.apiUrl+'/api/lesson/get-lesson',
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify({ id: lessonId }),
                success: function(response) {
                    console.log("lesson data:", response);
                    if (response.success) {
                        const lessonTitle = response.lesson.title;
                        const lessonDescription = response.lesson.description;
                        const lessonImage = response.lesson.image;
                        const lessonFile = response.lesson.lesson_file;
                        const lessonVideo = response.lesson.upload_video;

                        $('#edit-id1').val(lessonId);
                        $('#edit-t').val(lessonTitle);
                        $('#edit-d').val(lessonDescription);
                        $('#edit-i').val('');
                        $('#edit-f').val('');
                        $('#edit-vi').val('');

                        $('#current-image').attr('src', lessonImage);
                        $('#current-video').attr('src', lessonVideo);

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

    $('#btn-upd').click(function(event) {
        const urlParams = new URLSearchParams(window.location.search);
        const CourseId = urlParams.get('id');
        console.log("updated CourseId is ", CourseId);

        if (!CourseId) {
            console.error('Course ID not found in URL');
            return;
        }

        event.preventDefault();

        const lessonId = $('#edit-id1').val().trim();
        const lessonTitle = $('#edit-t').val().trim();
        const lessonDescription = $('#edit-d').val().trim();
        const lessonImage = $('#edit-i')[0].files[0];
        const lessonFiles = $('#edit-f')[0].files;
        const lessonVideo = $('#edit-vi')[0].files[0];

        console.log("Lesson Image:", lessonImage);
        console.log("Lesson Video:", lessonVideo);

        const formData = new FormData();
        formData.append('id', lessonId);
        formData.append('course_id', CourseId);
        formData.append('title', lessonTitle);
        formData.append('description', lessonDescription);

        if (lessonImage) {
            formData.append('image', lessonImage);
            console.log("Image added to FormData");
        } else {
            console.log("No new image file to add");
        }

        if (lessonVideo) {
            formData.append('upload_video', lessonVideo);
            console.log("Video added to FormData");
        } else {
            console.log("No new video file to add");
        }

        for (let i = 0; i < lessonFiles.length; i++) {
            formData.append('lesson_file', lessonFiles[i]);
            console.log("File added to FormData:", lessonFiles[i]);
        }

        $.ajax({
            url: config.apiUrl+'/api/lesson/update-lesson',
            method: 'PUT',
            contentType: false,
            processData: false,
            data: formData,
            success: function(response) {
                $('#editContactModal').modal('hide');
                $('#zero-config').DataTable().ajax.reload();
                Swal.fire({
                    icon: 'success',
                    title: 'Success',
                    text: 'Lesson updated successfully!',
                    confirmButtonText: 'OK'
                });
            },
            error: function(xhr, status, error) {
                console.error("Error updating Lesson:", error);
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'Failed to update Lesson. Please try again.',
                    confirmButtonText: 'OK'
                });
            }
        });
    });


    $(document).ready(function() {
        $.ajax({
            url: config.apiUrl+'/api/instructor/get-all-instructor',
            method: 'GET',
            success: function(response) {
                    const instructors = response.instructors;
                    instructors.forEach(function(instructor) {
                        $('#edit-instruct').append(`<option value="${instructor.id}">${instructor.name}</option>`);
                    });

            },
            error: function(xhr, status, error) {
                console.error('Failed to load instructors:', error);
            }
        });
    });

    $(document).ready(function() {
        const urlParams = new URLSearchParams(window.location.search);
        const courseId = urlParams.get('id');
        if (courseId) {
            console.log("Fetching details for Course ID:", courseId);

            $.ajax({
                url: config.apiUrl+'/api/course/get-course',
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify({ id: courseId }),
                success: function(response) {
                    if(response && response.course) {
                        $('#edit-id').val(response.course.id);
                        $('#edit-title').val(response.course.title);
                        $('#edit-credit').val(response.course.credits);
                        $('#edit-duration').val(response.course.duration);
                        $('#edit-descript').val(response.course.description);
                        $('#edit-SDate').val(response.course.start_date);
                        $('#edit-EDate').val(response.course.end_date);
                        $('#edit-instruct').val(response.course.instructor_id);
                    } else {
                        console.error('Course not found.');
                    }
                },
                error: function(xhr, status, error) {
                    console.error('Failed to load course:', error);
                }
            });        } else {
            alert('Course ID is undefined');
        }
    });

    $('#btn-update').click(function(event) {
        event.preventDefault();

        const courseId = $('#edit-id').val().trim();
        const courseName = $('#edit-title').val().trim();
        const courseDescription = $('#edit-descript').val().trim();
        const courseCredits = $('#edit-credit').val().trim();
        const CourseInstructorId = $('#edit-instruct').val();
        const courseDuration=$('#edit-duration').val();
        const startDate=$('#edit-SDate').val();
        const endDate=$('#edit-EDate').val();
        const Image=$('#edit-image')[0].files[0];

        const instructorId = parseInt(CourseInstructorId, 10);

        if (courseName && courseDescription && courseCredits && instructorId && courseDuration
            && startDate && endDate || Image) {
            const formData=new FormData();
            formData.append('id', courseId);
            formData.append('title', courseName);
            formData.append('description', courseDescription);
            formData.append('credits', courseCredits);
            formData.append('instructor_id', instructorId);
            formData.append('duration',courseDuration);
            formData.append('start_date',startDate);
            formData.append('end_date',endDate);
            formData.append('image',Image);

            $.ajax({
                url: config.apiUrl+'/api/course/update-course',
                method: 'PUT',
                contentType: false,
                processData: false,
                data: formData,
                success: function(response) {
                    // $('#editContactForm').hide();
                    // $('#zero-config').DataTable().ajax.reload();
                    Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        text: 'Course updated successfully!',
                        confirmButtonText: 'OK'
                    });
                },
                error: function(xhr, status, error) {
                    console.error("Error updating Course:", error);
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Failed to update Course. Please try again.',
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
        var lessonId = $(this).data('file-id');
        e.preventDefault();
        console.log('Delete Data ID:', lessonId);

        if (!lessonId) {
            console.error('Lesson ID is undefined or invalid');
            Swal.fire('Error!', 'lesson ID is not valid.', 'error');
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
                fetch(config.apiUrl+'/api/lesson/remove-lesson', {
                    method: 'DELETE',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        id: lessonId })
                })
                    .then(response => response.json())
                    .then(data => {
                        console.log('success:', data);
                        if (data.message === 'lesson details deleted successfully..') {
                            Swal.fire('Deleted!', 'Your Lesson has been deleted.', 'success').then(() => {
                                $('#zero-config').DataTable().ajax.reload();
                            });
                        } else {
                            Swal.fire('Error!', 'There was an issue with deleting the Lesson.', 'error');
                        }
                    })
                    .catch(error => {
                        console.error('Error:', error);
                        Swal.fire('Error!', 'There was an error deleting your Lesson.', 'error');
                    });
            }
        });
    });

    $(document).on('click', '.icon-triple-file', function(event) {
        event.preventDefault();

        var lessonId = $(this).data('file-id');
        var $dropdown = $(this).siblings('.dropdown-menu');

        $('.dropdown-menu').removeClass('show').attr('aria-expanded', 'false');

        $.ajax({
            url: config.apiUrl+'/api/lesson/get-all-files-lesson',
            type: 'POST',
            contentType: 'application/json',
            data: JSON.stringify({ lesson_id: lessonId }),
            success: function(response) {
                console.log(response);
                $dropdown.empty();

                if (response.success && response.lessonFiles && response.lessonFiles.length > 0) {
                    response.lessonFiles.forEach(function(file) {
                        var fileName = file.lesson_file.split('\\').pop();
                        $dropdown.append('<a class="dropdown-item" href="#">' + fileName + '</a>');
                    });
                } else {
                    $dropdown.append('<a class="dropdown-item disabled" href="#">No files found</a>');
                    console.log('No lesson files found in the response');
                }
                $dropdown.parent().addClass('show');
                $dropdown.addClass('show');
                $dropdown.attr('aria-expanded', 'true');
            },
            error: function(error) {
                console.error('Error fetching lesson files:', error);
            }
        });
    });
    $(document).on('click', function(event) {
        if (!$(event.target).closest('.icon-triple-file, .dropdown-menu').length) {
            $('.dropdown-menu').removeClass('show').attr('aria-expanded', 'false');
        }
    });


</script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>
