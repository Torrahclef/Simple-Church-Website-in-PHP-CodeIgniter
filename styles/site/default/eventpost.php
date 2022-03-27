
			<section class="page_breadcrumbs ds parallax section_padding_top_65 section_padding_bottom_65">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h2 class="highlight bold"><?php echo $item->title ?></h2>
							<ol class="breadcrumb">
								<li>
									<a href="<?php echo site_url() ?>">
							Home
						</a>
								</li>
								<li>
                                                                    <a href="<?php echo site_url('events') ?>">Events</a>
                                                                    </li>
                                                                <li class="active"><?php echo $item->title ?></li>
							</ol>
						</div>
					</div>
				</div>
			</section>


			<section class="ls section_padding_top_100 section_padding_bottom_100 columns_padding_25">
				<div class="container">
					<div class="row">

						<div class="col-sm-10 col-sm-push-1">
    <article class="post side-item content-padding with_background">

								<div class="row">

									<div class="col-md-5">
										<div class="item-media">
											<img src="<?php echo $item->image ?>" alt="photo">
											<div class="media-links">
											</div>
										</div>
									</div>

									<div class="col-md-7">
										<div class="item-content">
											<h3>
												<?php echo $item->title ?>
											</h3>

											<p class="item-meta grey darklinks">
											<i class="fa fa-calendar highlight"></i> <?php echo date('M d, Y', strtotime($item->date)) ?><br>
											<i class="fa fa-map-marker highlight"></i> <?php echo ($item->place) ?>
										</p>
										<?php echo $item->description ?>
										</div>
									</div>
<!-- AddToAny BEGIN -->
<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
<a class="a2a_dd" href="https://www.addtoany.com/share"></a>
<a class="a2a_button_facebook"></a>
<a class="a2a_button_twitter"></a>
<a class="a2a_button_whatsapp"></a>
<a class="a2a_button_telegram"></a>
<a class="a2a_button_email"></a>
<a class="a2a_button_copy_link"></a>
</div>
<script async src="https://static.addtoany.com/menu/page.js"></script>
<!-- AddToAny END -->
								</div>
							</article>
							
						</div>
						<!--eof .col-sm-* (main content)-->

					</div>
				</div>
			</section>

		