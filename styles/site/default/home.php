<div id="canvas">
		<div id="box_wrapper">

			<!-- template sections -->

			<section class="intro_section ds page_mainslider">
				<div class="flexslider" data-nav="false">
					<ul class="slides">

                                              <?php foreach ($sliders as $item): ?>  
						<li>
<img src="<?php echo $item->image ?>" alt="">
<div class="container">
<div class="row">
<div class="col-sm-12 text-center">
<div class="slide_description_wrapper">
<div class="slide_description">
<div class="intro-layer" data-animation="fadeInUp">
<h3>
<?php echo $item->title ?>
</h3>
</div>
<div class="intro-layer" data-animation="fadeInUp">
<h2 class="bold">
	<?php echo $item->description ?>
</h2>
</div>
</div>
<!-- eof .slide_description -->
</div>
<!-- eof .slide_description_wrapper -->
</div>
									<!-- eof .col-* -->
</div>
								<!-- eof .row -->
</div>
							<!-- eof .container -->
</li>

   <?php endforeach ?>
</ul>
</div>
</section>

			<header class="page_header header_white toggler_right with_bottom_border_container"><meta http-equiv="Content-Type" content="text/html; charset=gb18030">
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

<section id="about" class="ls section_padding_top_100 section_padding_bottom_75 columns_margin_bottom_30">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-md-push-3 text-center">
							<div class="horiz_lg_padding">
								<h3>About</h3>
								<h2 class="section_header highlight">Our Church</h2>
								<p class="grey playfair">Our mission is to share the Good of Jesus Christ, loving, faith and serving.</p>
								<p>
 <?php foreach ($this->db
               ->where('aboutus_id=1')
                ->get('aboutus')
                ->result()
                as $item): ?>
                <p><?php $this->load->helper('text') ?>
                                        <?php echo word_limiter($item->benfits, 68) ?></p>
                <?php endforeach;?>
                                                                
                                                                </p>
							</div>
						</div>
						<div class="col-sm-6 col-md-3 col-md-pull-6">
							<div class="with_background with_padding teaser text-center">
								<img src="<?php echo STYLE_IMAGES ?>/icons/priest.png" alt="" />
								<h4 class="bottommargin_0 topmargin_10 grey">Daily Prayers</h4>
							</div>
							<div class="with_background with_padding teaser text-center topmargin_30">
								<img src="<?php echo STYLE_IMAGES ?>/icons/bible.png" alt="" />
								<h4 class="bottommargin_0 topmargin_10 grey">Сontinuous Teaching</h4>
							</div>
						</div>
						<div class="col-sm-6 col-md-3">
							<div class="with_background with_padding teaser text-center">
								<img src="<?php echo STYLE_IMAGES ?>/icons/hands.png" alt="" />
								<h4 class="bottommargin_0 topmargin_10 grey">Community Helpers</h4>
							</div>
							<div class="with_background with_padding teaser text-center topmargin_30">
								<img src="<?php echo STYLE_IMAGES ?>/icons/church.png" alt="" />
								<h4 class="bottommargin_0 topmargin_10 grey">Set of Sermons</h4>
							</div>
						</div>
					</div>
				</div>
			</section>

			<section class="ls">
				<div class="owl-carousel center-scale" data-responsive-lg="5" data-responsive-md="5" data-responsive-sm="3" data-responsive-xs="2" data-center="true" data-loop="true" data-margin="0" data-nav="true">
 <?php foreach ($items as $item): ?> 
					<div class="vertical-item content-absolute corporate consulting">
						<div class="item-media">
							<img src="<?php echo $item->image ?>" alt="">
							<div class="media-links">
								<a class="abs-link prettyPhoto" data-gal="prettyPhoto[gal]" title="" href="<?php echo $item->image ?>"></a>
							</div>
						</div>
					</div> 
             <?php endforeach ?> 
                          </div>
			</section>

			<section id="events" class="ls section_padding_top_100 section_padding_bottom_100">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">

							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li class="active">
									<a href="#tab1" role="tab" data-toggle="tab">Upcoming events</a>
								</li>
								
							</ul>

							<!-- Tab panes -->
<div class="tab-content no-border top-color-border">
<div class="tab-pane fade in active" id="tab1">

<div class="row columns_padding_2">

	<!-- Event listing starts here -->
        <?php foreach ($this->db
                ->order_by('event_id' ,'DESC')
                ->get('events',4, 'DESC')
                ->result()
                as $item): ?>	
<div class="col-md-3 col-sm-6">
<div class="vertical-item content-absolute vertical-center content-bg-hover cs">
<div class="item-media">
<img src="<?php echo $item->image ?>" alt="">
<div class="media-links">
<a class="abs-link" href="<?php echo site_url('eventpost/index/' . $item->event_id) ?>"></a>
</div>
</div>
<div class="item-content">
													<!-- <div> -->
<h3 class="margin_0">
<?php echo ($item->title) ?>
</h3>

<div class="cs hovered-content thin">
<div class="media small-teaser">
<div class="media-left">
																<i class="fa fa-calendar grey fontsize_16"></i>
</div>
<div class="media-body">
<?php echo date('M d, Y', strtotime($item->date)) ?>
</div>
</div>
<div class="media small-teaser">
<div class="media-left">
<i class="fa fa-map-marker grey fontsize_16"></i>
</div>
<div class="media-body">
<?php echo ($item->place) ?>
			</div>
		</div>
	
</div>
	<!-- </div> -->
</div>
</div>
</div>
 <?php endforeach; ?>  

</div>
									<!-- .row -->

	</div>
								

</div>

</div>
</div>
</div>
</section>

<section id="reviews" class="ls ms background_cover page_testimonials section_padding_100">
<div class="container">
<div class="row">
<div class="col-md-6 col-md-push-6">
<h3>Testimonials</h3>
<h2 class="section_header highlight">What They Say</h2>
<div class="owl-carousel topmargin_40" data-responsive-lg="1" data-responsive-md="1" data-responsive-sm="1" data-dots="true">
 <?php foreach ($testimonials as $item): ?>   
<blockquote class="with_quote bottommargin_0">
<?php echo $item->message ?>
    <div class="item-meta">
<h5>
<a href="#"><?php echo $item->name ?></a>
</h5>
<p><?php echo $item->position ?></p>
</div>
</blockquote>
   <?php endforeach ?>


</div>
						</div>
					</div>
				</div>
			</section>

			<section id="blog" class="ls section_padding_top_100 section_padding_bottom_100">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h3>Latest News</h3>
							<h2 class="section_header highlight">From Our Blog</h2>
						</div>
					</div>
					<div class="row topmargin_30">

                                              <?php foreach ($this->db
                ->order_by('blog_id' ,'DESC')
                ->get('blog', 4)
                ->result()
                as $row): ?>
						<div class="col-sm-6">
							<article class="vertical-item post format-standard with_background">

								<div class="item-media entry-thumbnail">
									
									<div class="media-links">
										<a class="abs-link" title="" href="<?php echo site_url('post/index/' . $row->blog_id) ?>"></a>
									</div>
								</div>

								<div class="item-content entry-content">
									<div class="with_padding">
										<header class="entry-header">

											<h3 class="entry-title">
												<a href="<?php echo site_url('post/index/' . $row->blog_id) ?>" rel="bookmark"><?php echo $row->title ?></a>
											</h3>

										</header>
										<!-- .entry-header -->


									</div>

									


								</div>
								<!-- .item-content.entry-content -->
							</article>
						</div>
<?php endforeach;?>

					</div>
				</div>
			</section>