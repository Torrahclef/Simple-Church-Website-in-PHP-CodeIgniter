
			<section class="page_breadcrumbs ds parallax section_padding_top_65 section_padding_bottom_65">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h2 class="highlight bold">About</h2>
							<ol class="breadcrumb">
								<li>
									<a href="<?php echo site_url() ?>">
							Home
						</a>
								</li>
								
								<li class="active">About</li>
							</ol>
						</div>
					</div>
				</div>
			</section>

			<section id="about" class="ls section_padding_top_100 section_padding_bottom_75 columns_margin_bottom_30">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-md-push-3 text-center">
							<div class="horiz_lg_padding">
								<h3>About</h3>
								<h2 class="section_header highlight">Our Church</h2>
								<p class="grey playfair">Our mission is to share the Good of Jesus Christ, loving, faith and serving.</p>
								  <?php foreach ($items as $item): ?> 
                                                    <?php echo $item->about ?>
					<?php endforeach ?> 	
                                                        
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

			<section class="ls page_testimonials section_padding_100">
				<div class="container">
					<div class="row">
<div class="col-md-8 col-md-offset-2 text-center">
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

