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
                            <li class="breadcrumb-item"><a href="#">Users</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Account Settings</li>
                        </ol>
                    </nav>
                </div>
                <!-- /BREADCRUMB -->

                <div class="account-settings-container layout-top-spacing">

                    <div class="account-content">

                        <div class="tab-content" id="animateLineContent-4">
                            <div class="tab-pane fade show active" id="animated-underline-home" role="tabpanel" aria-labelledby="animated-underline-home-tab">
                                <div class="row">
                                    <div class="col-xl-12 col-lg-12 col-md-12 layout-spacing">
                                        <form class="section general-info">
                                            <div class="info">
                                                <h6 class="">General Information</h6>
                                                <div class="row">
                                                    <div class="col-lg-11 mx-auto">
                                                        <div class="row">
                                                            <div class="col-xl-2 col-lg-12 col-md-4">
                                                                <div class="profile-image  mt-4 pe-md-4">

                                                                    <div class="img-uploader-content">
                                                                        <input type="file" class="filepond"
                                                                               name="filepond" accept="image/png, image/jpeg, image/gif"/>
                                                                    </div>

                                                                </div>
                                                            </div>
                                                            <div class="col-xl-10 col-lg-12 col-md-8 mt-md-0 mt-4">
                                                                <div class="form">
                                                                    <div class="row">
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label for="fullName">Full Name</label>
                                                                                <input type="text" class="form-control mb-3" id="fullName" placeholder="Full Name" value="Jimmy Turner">
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label for="profession">Profession</label>
                                                                                <input type="text" class="form-control mb-3" id="profession" placeholder="Designer" value="Web Developer">
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label for="country">Country</label>
                                                                                <select class="form-select mb-3" id="country">
                                                                                    <option>All Countries</option>
                                                                                    <option selected>United States</option>
                                                                                    <option>India</option>
                                                                                    <option>Japan</option>
                                                                                    <option>China</option>
                                                                                    <option>Brazil</option>
                                                                                    <option>Norway</option>
                                                                                    <option>Canada</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label for="address">Address</label>
                                                                                <input type="text" class="form-control mb-3" id="address" placeholder="Address" value="New York" >
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label for="phone">Phone</label>
                                                                                <input type="text" class="form-control mb-3" id="phone" placeholder="Write your phone number here" value="+1 (530) 555-12121">
                                                                            </div>
                                                                        </div>
                                                                        <div class="col-md-6">
                                                                            <div class="form-group">
                                                                                <label for="email">Email</label>
                                                                                <input type="text" class="form-control mb-3" id="email" placeholder="Write your email here" value="Jimmy@gmail.com">
                                                                            </div>
                                                                        </div>

                                                                        <div class="col-md-12 mt-1">
                                                                            <div class="form-group text-end">
                                                                                <button class="btn btn-secondary">Save</button>
                                                                            </div>
                                                                        </div>

                                                                    </div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
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
<script src="../src/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../src/plugins/src/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="../src/plugins/src/mousetrap/mousetrap.min.js"></script>
<script src="../layouts/vertical-light-menu/app.js"></script>
<!-- END GLOBAL MANDATORY SCRIPTS -->

<!--  BEGIN CUSTOM SCRIPTS FILE  -->
<script src="../src/plugins/src/filepond/filepond.min.js"></script>
<script src="../src/plugins/src/filepond/FilePondPluginFileValidateType.min.js"></script>
<script src="../src/plugins/src/filepond/FilePondPluginImageExifOrientation.min.js"></script>
<script src="../src/plugins/src/filepond/FilePondPluginImagePreview.min.js"></script>
<script src="../src/plugins/src/filepond/FilePondPluginImageCrop.min.js"></script>
<script src="../src/plugins/src/filepond/FilePondPluginImageResize.min.js"></script>
<script src="../src/plugins/src/filepond/FilePondPluginImageTransform.min.js"></script>
<script src="../src/plugins/src/filepond/filepondPluginFileValidateSize.min.js"></script>
<script src="../src/plugins/src/notification/snackbar/snackbar.min.js"></script>
<script src="../src/plugins/src/sweetalerts2/sweetalerts2.min.js"></script>
<script src="../src/assets/js/users/account-settings.js"></script>
<!--  END CUSTOM SCRIPTS FILE  -->
</body>
</html>