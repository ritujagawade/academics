<div class="sidebar-wrapper sidebar-theme" style="height: 100vh; overflow-y: auto; overflow-x: hidden;">
    <nav id="sidebar">
        <div class="navbar-nav theme-brand flex-row  text-center">
            <div class="nav-item theme-text">
                <a class="nav-link">Academics</a>
            </div>
            <div class="nav-item sidebar-toggle">
                <div class="btn-toggle sidebarCollapse">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevrons-left"><polyline points="11 17 6 12 11 7"></polyline><polyline points="18 17 13 12 18 7"></polyline></svg>
                </div>
            </div>
        </div>
        <div class="shadow-bottom"></div>
        <%
            String currentPage = request.getRequestURI();
            boolean isStudentAddPage=currentPage.endsWith("StudentRecord.jsp");
            boolean isCoursePage = currentPage.endsWith("Course.jsp") || currentPage.endsWith("CourseEdit.jsp") ||currentPage.endsWith("LessonFile.jsp");
            boolean isRoles = currentPage.endsWith("Roles.jsp");
            boolean isPermission = currentPage.endsWith("Permissions.jsp");
            boolean isRollPermission = currentPage.endsWith("RollPermission.jsp") || currentPage.endsWith("PermissionGrant.jsp");
            boolean isUser=currentPage.endsWith("User.jsp");
            boolean isInstructor=currentPage.endsWith("InstructorRecord.jsp");
            boolean isManageDataActive =isStudentAddPage;
            boolean isCourse=isCoursePage;
            boolean isManageRoles = isRoles || isPermission || isRollPermission;
            boolean isUserDetails=isUser;
            boolean isInstructorDetails=isInstructor;
        %>
        <!-- Manage ROles Menu -->
        <ul class="list-unstyled menu-categories p-1" id="accordionExample2">
            <li class="menu <%= isManageRoles ? "active" : "" %>">
                <a href="#manageRoles" data-bs-toggle="collapse" aria-expanded="<%= isManageRoles ? "true" : "false" %>" class="dropdown-toggle">
                    <div class="">
                            <svg class="svg-icon" style="fill:#515365 !important;" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg"><path d="M776.68864 226.46784c-24.54528-141.58336-158.12096-236.032-298.28608-211.13344-139.9808 24.90368-258.26304 133.93408-233.53856 275.33824 5.33504 30.592 20.096 78.26432 37.5296 112.59392L28.04224 770.20672c-9.42592 13.5168-14.76608 37.888-11.91936 54.25152l11.02848 62.78656c-10.496-60.47232 2.84672 21.87776 11.02336 21.51936l83.77344 1.24416c16.18944-2.8416 36.46464-16.54272 45.35808-30.4128l100.67456-157.4144 0.88576-1.07008 87.86944 6.9376 117.57056-184.27392s26.16832-53.53984 123.07456-105.05728c88.69376-41.06752 163.04128-32.49152 163.04128-32.49152 21.57056-53.99552 27.20256-117.66784 16.26624-179.75808zM96.86528 795.38176l-22.00064 13.8496 5.12512-24.8832 238.70464-341.62688 16.50688 11.56096-238.336 341.09952zM652.71296 298.8544c-38.59456 55.49568-77.90592 16.36864-132.864-22.58944-54.9632-38.95296-104.94464-62.78144-66.34496-118.45632 38.59456-55.49056 114.36544-69.18656 169.32864-30.23872 54.95808 39.13216 68.47488 115.79392 29.88032 171.28448z" fill="" /><path d="M1013.38112 742.5024c0 148.32128-120.23808 268.55424-268.55424 268.55424s-268.55424-120.23808-268.55424-268.55424 120.23808-268.55424 268.55424-268.55424 268.55424 120.23808 268.55424 268.55424z m-309.00224-136.2432c-0.10752 1.77152 0 96.01024 0 96.01024H606.6688c-43.16672 2.54464-42.37312 40.23296-42.37312 40.23296s0 37.9392 42.37312 40.23296h97.70496v96.01024c3.01056 42.9568 40.23296 42.37312 40.23296 42.37312s38.15424 0 40.23296-42.37312v-96.01024h94.31552c42.37312-2.42176 42.37312-40.23296 42.37312-40.23296s0-37.56032-42.37312-40.23296h-94.3104V606.2592c-2.26816-42.37312-40.23296-42.37312-40.23296-42.37312s-37.71904-0.00512-40.23296 42.37312z" fill="" /></svg>
                            <span style="padding-right: 60px;">Role & Permission</span>
                    </div>
                    <div>
                        <svg  xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
                    </div>
                </a>
                <ul class="collapse submenu list-unstyled <%= isManageRoles ? "show" : "" %>" id="manageRoles" data-bs-parent="#accordionExample2">
                    <li class="<%= isRoles ? "active" : "" %>">
                        <a href="Roles.jsp">Roles</a>
                    </li>
                    <li class="<%= isPermission ? "active" : "" %>">
                        <a href="Permissions.jsp">Permission</a>
                    </li>
                    <li class="<%= isRollPermission ? "active" : "" %>">
                        <a href="RollPermission.jsp">Role Permission</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- Manage User Menu -->
        <ul class="list-unstyled menu-categories p-1" id="accordionExample">
            <li class="menu <%= isUserDetails ? "active" : "" %>">
                <a href="#manageUser" data-bs-toggle="collapse" aria-expanded="<%= isUserDetails ? "true" : "false" %>" class="dropdown-toggle">
                    <div>
                        <svg style="fill:#515365 !important;" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                        <span>User Details</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
                    </div>
                </a>
                <ul class="collapse submenu list-unstyled <%= isUserDetails ? "show" : "" %>" id="manageUser" data-bs-parent="#accordionExample">
                    <li class="<%= isUser ? "active" : "" %>">
                        <a href="User.jsp">Users</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- Manage Instructor Menu -->
        <ul class="list-unstyled menu-categories p-1" id="accordionExample">
            <li class="menu <%= isInstructorDetails ? "active" : "" %>">
                <a href="#manageInstructor" data-bs-toggle="collapse" aria-expanded="<%= isInstructorDetails ? "true" : "false" %>" class="dropdown-toggle">
                    <div>
                        <svg style="fill:#515365 !important;" fill="#000000" height="800px" width="800px" version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                             viewBox="0 0 511.999 511.999" xml:space="preserve">
<g>
    <g>
        <path d="M302.195,11.833H13.049C5.842,11.833,0,17.675,0,24.882v214.289c0,7.207,5.842,13.049,13.049,13.049h283.839
			l-34.352-21.329c-2.247-1.396-4.282-3.002-6.109-4.768H26.097V37.93h263.049v126.703c4.01,0.847,7.943,2.39,11.625,4.677
			l14.473,8.986V24.882C315.244,17.675,309.402,11.833,302.195,11.833z"/>
    </g>
</g>
                            <g>
                                <g>
                                    <path d="M216.857,134.337c-4.352-3.43-10.665-2.685-14.097,1.668c-3.432,4.353-2.686,10.665,1.668,14.097l44.279,34.914
			c0.63-1.371,1.34-2.719,2.156-4.034c2.883-4.643,6.649-8.401,10.94-11.206L216.857,134.337z"/>
                                </g>
                            </g>
                            <g>
                                <g>
                                    <circle cx="419.71" cy="81.405" r="37.557"/>
                                </g>
                            </g>
                            <g>
                                <g>
                                    <path d="M511.33,173.609c-0.118-23.528-19.355-42.67-42.884-42.67H450.26c-17.831,46.242-11.329,29.381-22.507,58.37l4.709-23.724
			c0.346-1.744,0.067-3.555-0.79-5.113l-7.381-13.424l6.551-11.914c0.454-0.826,0.438-1.829-0.041-2.64
			c-0.479-0.811-1.352-1.308-2.293-1.308h-17.96c-0.942,0-1.813,0.497-2.293,1.308s-0.495,1.815-0.041,2.64l6.537,11.889
			l-7.367,13.4c-0.873,1.589-1.147,3.438-0.77,5.211l5.438,23.675c-3.119-8.087-21.08-52.728-23.255-58.37h-17.83
			c-23.529,0-42.766,19.141-42.884,42.67c-0.098,19.565-0.016,3.179-0.17,33.884l-36.702-22.787
			c-8.501-5.28-19.674-2.667-24.953,5.836c-5.279,8.503-2.666,19.675,5.836,24.954l64.219,39.873
			c12.028,7.47,27.609-1.167,27.68-15.304c0.036-7.091,0.292-57.809,0.334-66.275c0.013-2.092,1.714-3.776,3.805-3.769
			c2.089,0.007,3.779,1.703,3.779,3.794c-0.018,87.323-0.394,111.735-0.394,304.606c0,12.01,9.736,21.746,21.746,21.746
			s21.746-9.736,21.746-21.746V304.604h9.388v173.817c0,12.01,9.736,21.746,21.746,21.746s21.746-9.736,21.746-21.746l0.008-304.612
			c0-1.981,1.604-3.589,3.586-3.595c1.981-0.006,3.595,1.594,3.605,3.577l0.669,133.132c0.05,9.977,8.154,18.03,18.119,18.03
			c0.031,0,0.062,0,0.094,0c10.007-0.05,18.081-8.205,18.03-18.212L511.33,173.609z"/>
                                </g>
                            </g>
</svg>                        <span>Instructor Details</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
                    </div>
                </a>
                <ul class="collapse submenu list-unstyled <%= isInstructorDetails ? "show" : "" %>" id="manageInstructor" data-bs-parent="#accordionExample">
                    <li class="<%= isInstructor ? "active" : "" %>">
                        <a href="InstructorRecord.jsp">Instructor</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- Manage Student Menu -->
        <ul class="list-unstyled menu-categories p-1" id="accordionExample">
            <li class="menu <%= isManageDataActive ? "active" : "" %>">
                <a href="#manageData" data-bs-toggle="collapse" aria-expanded="<%= isManageDataActive ? "true" : "false" %>" class="dropdown-toggle">
                    <div>
                        <svg style="fill:#515365 !important;" fill="#000000" version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                             width="800px" height="800px" viewBox="0 0 190.06 190.06"
                             xml:space="preserve">
<g>
    <g>
        <path d="M74.855,43.025c-10.73-14.002-31.93-16.26-47.206-8.84C11.909,41.831,7.812,54.189,5.331,70.255
			c-0.938,6.078-2.285,12.806-1.322,18.95c0.025,0.162,0.148,0.505,0.327,0.88c0.007,0.106,0.011,0.211,0.019,0.317
			c-0.033,0.006-0.065,0.013-0.097,0.02c-1.345,0.311-1.339,2.391,0,2.705c5.374,1.262,11.005,1.763,16.698,1.952
			c5.135,8,17.062,12.442,26.559,12.487c7.552,0.036,15.428-2.715,20.226-8.733c0.595-0.747,1.134-1.584,1.619-2.48
			c4.592,0.026,9.123-0.193,13.455-0.919c0.473-0.079,0.822-0.326,1.102-0.637c1.289,0.093,2.675-0.687,2.715-2.354
			C87.047,75.596,85.46,56.863,74.855,43.025z"/>
        <path d="M140.683,68.427c-12.234-0.564-27.683,1.199-38.47,7.469c-0.698,0.406-0.768,1.209-0.467,1.808
			c-5.535,12.933,7.087,23.47,22.425,26.943c-0.466,1.787-0.215,3.979-0.291,5.595c-0.209,4.429,0.03,9.219,1.852,13.322
			c3.709,8.352,11.908,6.092,19.282,4.73c1.091-0.201,1.843-1.381,1.849-2.427c0.021-4.707,0.046-9.414,0.039-14.122
			c-0.004-2.491,0.173-5.111,0.148-7.698c8.583-2.807,15.386-9.011,17.029-19.646c0.069-0.451,0.019-0.86-0.104-1.229
			c0.194-0.224,0.352-0.498,0.41-0.877C166.14,71.033,148.104,68.769,140.683,68.427z"/>
        <path d="M161.333,44.139c-7.608-6.377-18.305-12.044-28.522-10.951c-13.587,1.454-44.702,16.072-34.179,34.116
			c0.109,0.187,0.245,0.335,0.393,0.458c0.067,0.688,0.7,1.342,1.523,1.119c13.963-3.786,29.942-11.271,44.73-7.76
			c4.397,1.044,8.683,3.013,12.773,4.878c1.761,0.803,3.478,1.695,5.172,2.628c0.673,0.379,1.331,0.784,1.974,1.214
			c0.29,0.187,0.501,0.337,0.667,0.463c-0.024,0.986,0.73,1.927,1.877,1.99c2.062,0.112,2.972-1.106,2.997-2.554
			c0.817,0.1,1.712-0.226,2.147-0.977C177.918,60.074,167.328,49.165,161.333,44.139z"/>
        <path d="M183.553,130.486c-3.356-5.223-15.951-21.392-24.495-19.159c-0.874-0.67-2.129-0.81-3.009,0.176
			c-2.332,2.615-2.227,6.881-2.574,10.188c-0.56,5.334-0.686,10.795-1.759,16.064c-11.903-1.195-23.748,2.08-35.601,0.652
			c0.069-8.096,0.336-16.262-1.424-24.183c0.96-1.025,0.695-3.035-0.553-3.806c-7.473-4.607-18.241,8.033-22.205,12.755
			c-1.031,1.229-3.695,4.444-5.631,7.689c-5.083-8.275-14.536-14.853-23.763-14.402c-1.467-1.078-4.24-0.385-4.409,2.054
			c-0.263,3.776,0.083,7.613-0.471,11.366c-0.789,5.345-5.969,5.386-10.087,5.3c-5.248-0.109-10.593-1.166-15.792-0.375
			c-0.109-4.39-0.211-8.777-0.375-13.164c-0.059-1.582,0.349-4.753-1.262-5.852l-0.002-0.002c-0.041-0.027-0.068-0.069-0.112-0.095
			c-0.048-0.028-0.093-0.027-0.141-0.048c-0.096-0.049-0.194-0.083-0.302-0.104c-0.077-0.015-0.15-0.021-0.224-0.021
			c-0.028,0-0.056,0.007-0.084,0.008c-1.172-2.561-5.591-1.17-7.808-0.216c-6.328,2.722-12.717,9.518-16.765,14.914
			c-4.222,5.629-5.735,14.696-4,21.452c1.713,6.668,11.312,5.716,16.411,5.56c10.735-0.33,21.159-1.408,31.94-1.192
			c16.462,0.329,32.908,1.225,49.365,1.727c15.853,0.482,31.634,0.683,47.471,1.645c7.742,0.472,15.485,0.764,23.24,0.536
			c5.145-0.15,11.948,0.197,16.566-2.534c0.951-0.562,1.288-1.381,1.22-2.168C193.839,148.863,187.771,137.051,183.553,130.486z"/>
    </g>
</g>
</svg>
                        <span>Students</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
                    </div>
                </a>
                <ul class="collapse submenu list-unstyled <%= isManageDataActive ? "show" : "" %>" id="manageData" data-bs-parent="#accordionExample">
                    <li class="<%= isStudentAddPage ? "active" : "" %>">
                        <a href="StudentRecord.jsp">Student List</a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- Manage Data Menu -->
        <ul class="list-unstyled menu-categories p-1" id="accordionExample">
            <li class="menu <%= isCourse ? "active" : "" %>">
                <a href="#manageCourses" data-bs-toggle="collapse" aria-expanded="<%= isCourse ? "true" : "false" %>" class="dropdown-toggle">
                    <div>
                        <svg  style="fill:#515365 !important;" fill="#000" width="800px" height="800px" viewBox="0 0 1920 1920" xmlns="http://www.w3.org/2000/svg">
                            <path d="M1750.176 0v1468.235h-225.882v338.824h169.412V1920H451.353c-82.447 0-161.506-36.141-215.718-99.388-42.917-50.824-66.635-116.33-66.635-182.965V282.353C169 126.494 295.494 0 451.353 0h1298.823Zm-338.823 1468.235H463.776c-89.223 0-166.023 60.989-179.576 140.047-1.13 9.036-2.259 18.07-2.259 25.977v3.388c0 40.659 13.553 79.059 40.659 109.553 31.624 38.4 79.059 59.859 128.753 59.859h960v-112.941H408.435v-112.942h1002.918v-112.94Zm-56.47-564.706h-790.59v112.942h790.588V903.529Zm56.47-564.705h-903.53v451.764h903.53V338.824ZM620.765 677.647h677.647V451.765H620.765v225.882Z" fill-rule="evenodd"/>
                        </svg>
                        <span>Courses</span>
                    </div>
                    <div>
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-right"><polyline points="9 18 15 12 9 6"></polyline></svg>
                    </div>
                </a>
                <ul class="collapse submenu list-unstyled <%= isCourse ? "show" : "" %>" id="manageCourses" data-bs-parent="#accordionExample">
                    <li class="<%= isCoursePage ? "active" : "" %>">
                        <a href="Course.jsp">Course List</a>
                    </li>
                </ul>
            </li>
        </ul>

    </nav>
</div>

