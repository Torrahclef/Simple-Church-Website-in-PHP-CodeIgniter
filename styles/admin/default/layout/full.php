<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="author" content="Awolu Faith <awolu_faith@live.com>" />
        <link rel="shortcut icon" href="<?php echo config('favicon') ?>" type="image/x-icon" />

        <title><?php echo config('title') ?></title>
        <!-- Scripts -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Arimo:400,700,400italic">
        <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/bootstrap.css">
        <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/core.css">
        <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/forms.css">
        <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/components.css">
        <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/skins.css">
        <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/custom.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

        <script src="<?php echo STYLE_JS ?>/jquery-1.11.1.min.js"></script>
        <style>
            @media screen and (max-width: 768px){
                .page-container .sidebar-menu .sidebar-menu-inner .logo-env .mobile-menu-toggle {
                    float: left;
                }}
            </style>
            <!-- Scripts -->
            <script src="<?php echo STYLE_JS ?>/bootstrap.min.js"></script>
            <script src="<?php echo STYLE_JS ?>/TweenMax.min.js"></script>
            <script src="<?php echo STYLE_JS ?>/resizeable.js"></script>
            <script src="<?php echo STYLE_JS ?>/joinable.js"></script>
            <script src="<?php echo STYLE_JS ?>/api.js"></script>
            <script src="<?php echo STYLE_JS ?>/custom.js"></script>
            <script src="<?php echo STYLE_JS ?>/toggles.js"></script>

        </head>
        <body class="page-body">

        <div class="settings-pane">

            <a href="#" data-toggle="settings-pane" data-animate="true">
                &times;
            </a>

            <div class="settings-pane-inner">

                <div class="row">

                    <div class="col-md-4">

                        <div class="user-info">

                            <div class="user-details">

                                <h3>
                                    <span class="user-status is-online"></span> 
                                    <a href="#"><?php echo session('username') ?></a>

                                    <!-- Available statuses: is-online, is-idle, is-busy and is-offline -->

                                </h3>

                                <p class="user-title">Administrator</p>

                                <div class="user-links">
                                    <a href="<?php echo site_url('admin/users/manage/' . session('user_id')) ?>" class="btn btn-primary"> <i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit Profile</a>
                                    <a href="<?php echo site_url('admin/logout') ?>" class="btn btn-success"> <i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a>
                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

        </div>

        <div class="page-container">   
            <div class="sidebar-menu toggle-others fixed">

                <div class="sidebar-menu-inner">

                    <header class="logo-env">

                        <!-- logo -->
                        <div class="logo">
                            <a href="<?php echo site_url('admin/dashboard') ?>" class="logo-expanded">
                                <img style="width:180px;" src="<?php echo config('logo') ?>" alt="<?php echo config('title') ?>" />
                            </a>

                            <a href="<?php echo site_url('admin/dashboard') ?>" class="logo-collapsed">
                                <img src="<?php echo config('favicon') ?>" width="40" alt="<?php echo config('title') ?>" />
                            </a>
                        </div>

                        <div class="mobile-menu-toggle visible-xs">


                            <a href="#" data-toggle="mobile-menu">
                                <i class="fa-bars"></i>
                            </a>
                        </div>
                        <div class="settings-icon">
                            <a href="#" data-toggle="settings-pane" data-animate="true">
                                <i class="fa fa-cog" aria-hidden="true"></i>
                            </a>
                        </div>
                    </header>
                    <ul id="main-menu" class="main-menu">
                        <li>
                            <a href="<?php echo site_url('admin/dashboard') ?>">
                                <i class="fa-home"></i>
                                <span class="title">Dashboard</span>
                            </a>
                        </li>
                     <li>
                            <a href="<?php echo site_url('admin/events') ?>">
                                <i class="fa fa-clock-o"></i>
                                <span class="title">Manage Events</span>
                            </a>
                        </li>
                     
                       <li>
                            <a href="<?php echo site_url('admin/categories') ?>">
                                <i class="fa fa-book"></i>
                                <span class="title">Manage Sermons</span>
                            </a>	
                        </li>
                       
                        <li>
                            <a href="<?php echo site_url('admin/projects') ?>">
                                <i class="fa fa-camera"></i>
                                <span class="title">Manage Photos</span>
                            </a>	
                        </li>
                         <li>
                            <a href="<?php echo site_url('admin/videos') ?>">
                                <i class="fa fa-video-camera"></i>
                                <span class="title">Manage Videos</span>
                            </a>	
                        </li>
                        
                        <li>
                            <a href="<?php echo site_url('admin/news') ?>">
                                <i class="fa fa-newspaper-o"></i>
                                <span class="title">Manage News</span>
                            </a>	
                        </li>
                        
                        <li>
                            <a href="<?php echo site_url('admin/testimonials') ?>">
                               <i class="fa fa-comments-o"></i>
                                <span class="title">Testimonials</span>
                            </a>	
                        </li>
                        
                        <li>
                            <a href="<?php echo site_url('admin/faqs') ?>">
                               <i class="fa fa-question-circle"></i>
                                <span class="title">Manage Faqs</span>
                            </a>	
                        </li>
                          <li>
                            <a href="<?php echo site_url('admin/aboutus/manage/1') ?>">
                                <i class="fa fa-home"></i>
                                <span class="title"> Church Info</span>
                            </a>	
                        </li>
                         <li>
                            <a href="<?php echo site_url('admin/group') ?>">
                                <i class="fa fa-globe"></i>
                                <span class="title"> Church Groups</span>
                            </a>	
                        </li>
                             <li>
                            <a href="<?php echo site_url('admin/users') ?>">
                                <i class="fa fa-users"></i>
                                <span class="title">Manage Users</span>
                            </a>
                        </li>
     <li>
                            <a href="<?php echo site_url('admin/sliders') ?>">
                                <i class="fa fa-picture-o"></i>
                                <span class="title">Manage Sliders</span>
                            </a>	
                        </li>
                         <li>
                            <a href="<?php echo site_url('admin/pages') ?>">
                                <i class="fa fa-flag"></i>
                                <span class="title">Manage Pages</span>
                            </a>	
                        </li>
                        <li>
                            <a href="<?php echo site_url('admin/settings') ?>">
                                <i class="fa fa-spinner"></i>
                                <span class="title">Settings / SEO</span>
                            </a>
                        </li>
                    </ul>

                </div>

            </div>

            <div class="main-content">

                {layout}
                <footer class="main-footer sticky footer-type-1">

                    <div class="footer-inner">
                        <div class="footer-text">

                            <strong>&copy; 2020 | Designed by <a href="tel:+2347039101629">Technosoft Nigeria </a></strong>.
                        </div>
                        <div class="go-up">

                            <a href="#" rel="go-top">
                                <i class="fa-angle-up"></i>
                            </a>

                        </div>

                    </div>

                </footer>
            </div>
        </div>

    </body>
</html>































