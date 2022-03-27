<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->


<!-- Mirrored from webdesign-finder.com/html/betterlife/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 12 Nov 2019 11:39:22 GMT -->
<head>
	<title><?php echo $item->title ?></title>
	<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	 <meta name="author" content="Awolu Faith <awolu_faith@live.com>" />
        <meta name="description" content="<?php echo $item->short ?>">
        <meta name="Keywords" content="<?php echo $item->keyword ?>">
       
        <meta property="og:title" content="<?php echo $item->title ?>" />
         <meta property="og:image" content="<?php echo $item->image ?>" />
        
        
        <link rel="shortcut icon" href="<?php echo config('favicon') ?>" type="image/x-icon" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->

	<link rel="stylesheet" href="<?php echo STYLE_CSS ?>/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo STYLE_CSS ?>/animations.css">
	<link rel="stylesheet" href="<?php echo STYLE_CSS ?>/fonts.css">
	<link rel="stylesheet" href="<?php echo STYLE_CSS ?>/main.css" class="color-switcher-link">
	<script src="<?php echo STYLE_JS ?>/vendor/modernizr-2.6.2.min.js"></script>
 <?php echo config('analytic') ?>
	<!--[if lt IE 9]>
		<script src="js/vendor/html5shiv.min.js"></script>
		<script src="js/vendor/respond.min.js"></script>
		<script src="js/vendor/jquery-1.12.4.min.js"></script>
	<![endif]-->

</head>

<body>
	<!--[if lt IE 9]>
		<div class="bg-danger text-center">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/" class="highlight">upgrade your browser</a> to improve your experience.</div>
	<![endif]-->
<!-- eof .modal -->

	<!-- wrappers for visual page editor and boxed version of template -->
	<div id="canvas">
		<div id="box_wrapper">

			<!-- template sections -->

			<header class="page_header header_white toggler_right">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 display_table">
							<div class="header_left_logo display_table_cell">
								<a href="<?php echo site_url() ?>" class="logo top_logo">
									<img src="<?php echo config('logo') ?>" alt="<?php echo config('title') ?>">
								</a>
							</div>

<div class="header_mainmenu display_table_cell text-right">
<nav class="mainmenu_wrapper">
<ul class="mainmenu nav sf-menu">
<li><a href="<?php echo site_url() ?>">Home</a></li>
<li><a href="#">About</a>
<ul>
<li><a href="<?php echo site_url('aboutus') ?>">About Us</a></li>
<li><a href="<?php echo site_url('sermon') ?>">Sermons</a></li>	
<li><a href="<?php echo site_url('faqs') ?>">FAQs</a></li> 
<li><a href="<?php echo site_url('home/contactus') ?>">Contact</a></li>	
</ul>
</li>
<li><a href="#">Groups</a>
<ul>
    <?php foreach ($this->db->get('group')->result() as $row): ?>
                                    <li><a href="<?php echo site_url('group/index/' . $row->group_id . '-' . permalink($row->title)) ?>"> <?php echo $row->title ?></a></li>
                                <?php endforeach ?>
</ul>
</li>	
<li>
<a href="#">Gallery</a>
<ul>
<li><a href="<?php echo site_url('projects') ?>">Photos</a></li>
<li><a href="<?php echo site_url('videos') ?>">Videos</a></li>	
</ul>
</li>
<li><a href="#">Pages</a>
<ul>
  <li><a href="<?php echo site_url('request') ?>">Prayer Request</a></li>

 <?php foreach ($this->db->get('pages')->result() as $row): ?>
                                    <li><a href="<?php echo site_url('page/' . $row->page_id . '-' . permalink($row->title)) ?>"> <?php echo $row->title ?></a></li>
                                <?php endforeach ?>
                                
    
</ul>
</li>
<li><a href="#">Updates</a>
<ul>
<li><a href="<?php echo site_url('news') ?>">News</a></li>
<li><a href="<?php echo site_url('events') ?>">Events</a></li>
</ul>
</li>
<!-- eof contacts -->
</ul>
</nav>
								<!-- eof main nav -->
								<!-- header toggler -->
<span class="toggle_menu">
<span></span>
</span>
</div>
</div>
</div>
</div>

			</header>
  
                        {layout}     
      
                          <footer class="page_footer ds section_padding_top_75 section_padding_bottom_65">
				<div class="container">

					<div class="row">

						<div class="col-md-4 col-sm-6 text-center">
							<a href="<?php echo site_url() ?>" class="logo top_logo text-left bottommargin_10">
								<img src="<?php echo config('logo') ?>" alt="">
								
							</a>

							<p>
					 <?php echo config('description') ?>
				</p>

							<p class="greylinks">
					<a href="<?php echo config('facebook') ?>" class="social-icon color-icon border-icon rounded-icon soc-facebook"></a>
					<a href="<?php echo config('twitter') ?>" class="social-icon color-icon border-icon rounded-icon soc-twitter"></a>
					<a href="<?php echo config('youtube') ?>" class="social-icon color-icon border-icon rounded-icon soc-youtube"></a>
					<a href="<?php echo config('linkedin') ?>" class="social-icon color-icon border-icon rounded-icon soc-linkedin"></a>
					<a href="<?php echo config('instagram') ?>" class="social-icon color-icon border-icon rounded-icon soc-instagram"></a>
				</p>
						</div>

						<div class="col-md-4 col-sm-6 text-center">
							<div class="widget topmargin_20">
								<h3 class="widget-title">Contact Us</h3>

								<div>
									<div class="media small-teaser inline-block margin_0">
										<div class="media-left">
											<i class="fa fa-map-marker highlight fontsize_16"></i>
										</div>
										<div class="media-body">
											<?php echo config('address') ?>
										</div>
									</div>
									<br>

									<div class="media small-teaser inline-block">
										<div class="media-left">
											<i class="fa fa-envelope highlight fontsize_16"></i>
										</div>
										<div class="media-body underlined-links greylinks">
											<a href="mailto:<?php echo config('webmaster_email') ?>" class="bold"><?php echo config('webmaster_email') ?> </a>
										</div>
									</div>
									<br>

									<div class="media small-teaser inline-block">
										<div class="media-left">
											<i class="fa fa-phone highlight fontsize_16"></i>
										</div>
										<div class="media-body">
											<strong><?php echo config('phone') ?></strong>
										</div>
									</div>
									<br>

									<div class="media small-teaser inline-block">
										<div class="media-left">
											<i class="fa fa-whatsapp highlight fontsize_16"></i>
										</div>
										<div class="media-body">
											<strong><?php echo config('whatsapp') ?></strong>
										</div>
									</div>
								</div>

							</div>
						</div>

						<div class="col-md-4 col-sm-6 text-center">
							<div class="topmargin_20">
								<div class="widget widget_twitter">
									<h3 class="widget-title">News Updates</h3>
                                                                        <div >
                                                                    <ul>
                                    <?php foreach ($this->db->limit('3')->get('blog')->result() as $row): ?>
                                        <li>
                                            <a href="<?php echo site_url('post/index/' . $row->blog_id) ?>">  <?php echo $row->title ?></a>
                                        </li>
                                    <?php endforeach ?>
                                </ul>        
                                                                            
                                                                            
                                                                        </div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</footer>

			<section class="ls page_copyright table_section section_padding_50">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<p class="grey thin">&copy; <?php echo config('copyright') ?> | Designed by: <a href="tel:+2347039101629">Technosoft Nigeria </a></p>
						</div>
					</div>
				</div>
			</section>

		</div>
		<!-- eof #box_wrapper -->
	</div>
	<!-- eof #canvas -->

	<script src="<?php echo STYLE_JS ?>/compressed.js"></script>
	<script src="<?php echo STYLE_JS ?>/main.js"></script>
</body>


<!-- Mirrored from webdesign-finder.com/html/betterlife/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 12 Nov 2019 11:42:14 GMT -->
</html>