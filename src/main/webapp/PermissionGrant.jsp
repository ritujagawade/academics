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
                            <li class="breadcrumb-item"><a href="#">Role Permissions</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Permission Grant</li>
                        </ol>
                    </nav>
                </div>
                <div class="col-sm-12 col-md-12">
                    <div class="dt-buttons" style="float:right;margin-top: -21px !important;">
                        <a href="RollPermission.jsp" class="action-add btn btn-primary" title="Back">Back</a>
                    </div>
                </div>
                <!-- /BREADCRUMB -->
                <form id="editContactForm" enctype="multipart/form-data">
                    <input type="hidden" id="edit-id" name="id">
                    <div class="col-md-2 p-2 ps-0">
                        <div class="lawyer-name">
<%--                            <label>Role Name</label>--%>
                            <input type="text" id="edit-name" name="name" class="form-control" required style="border: none; background-color: #fafafa;font-size:18px;margin-left: -17px;margin-top: -17px;color: #3f435f;">
                        </div>
                    </div>
                </form>


                <div class="row layout-top-spacing" style="margin-top: -34px;">
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
        var urlParams = new URLSearchParams(window.location.search);
        var roleId = urlParams.get('id');
        if (!roleId) {
            console.error("Role ID is missing from the URL.");
            return;
        }
        $('#zero-config').DataTable({
            ajax: {
                url: config.apiUrl+'/api/role-permission/get-all-permissions-of-role',
                method: 'POST',
                dataType: 'json',
                contentType: 'application/json',
                data: function(d) {
                    return JSON.stringify({ role_id: roleId });
                },
                dataSrc: function(response) {
                    return response.grantedPermissions;
                }
            },
            columns: [
                {
                    title: "Tab",
                    data: "category_name"
                },
                {
                    title: "Permission",
                    data: "name"
                },
                {
                    title: "Grant",
                    data: function(row) {
                        return `<input type="checkbox" class="grant-checkbox" data-role-id="${row.role_id}" data-permission-id="${row.id}" ${row.grant ? 'checked' : ''} />`;
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
                sLengthMenu: "Results :  _MENU_"
            },
            stripeClasses: [],
            lengthMenu: [7, 10, 20, 50],
            pageLength: 10
        });
        $.ajax({
            url: config.apiUrl+'/api/role/get',
            method: 'POST',
            dataType: 'json',
            contentType: 'application/json',
            data: JSON.stringify({ id: roleId }),
            success: function(response) {
               if (response && response.role) {
                    $('#edit-id').val(response.role.id);
                    $('#edit-name').val(response.role.name);
                } else {
                    console.error("Role details not found.");
                }
            },
            error: function(xhr, status, error) {
                console.error("Error fetching role details:", error);
            }
        });
    });


    $(document).on('change', '.grant-checkbox', function() {
            var roleId = $('#edit-id').val();
            var permissionId = $(this).data('permission-id');
            var isChecked = $(this).is(':checked');
        console.log("Role ID:", roleId);
        console.log("Permission ID:", permissionId);
        console.log("Is Checked:", isChecked);
        var requestData = {
            "role_id": roleId,
            "permission_id": permissionId
        };
        var apiUrl = isChecked
            ? config.apiUrl+'/api/role-permission/add-role-permission'
            : config.apiUrl+'/api/role-permission/remove-permission-of-role';

        var httpMethod = isChecked ? 'POST' : 'DELETE';

        $.ajax({
            url: apiUrl,
            type: httpMethod,
            contentType: 'application/json',
            data: JSON.stringify(requestData),
            success: function(response) {
                if (response.success) {
                    var message = isChecked
                        ? 'Permission granted successfully!'
                        : 'Permission removed successfully!';

                    Swal.fire({
                        icon: 'success',
                        title: 'Success',
                        text: message
                    });

                    $('#zero-config').DataTable().ajax.reload();
                } else {
                    Swal.fire({
                        icon: 'error',
                        title: 'Error',
                        text: 'Failed to update role permission'
                    });
                }
            },
            error: function(xhr, status, error) {
                Swal.fire({
                    icon: 'error',
                    title: 'Error',
                    text: 'An error occurred while updating the role permission'
                });
            }
        });
    });

</script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>

