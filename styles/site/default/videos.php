<section class="page_breadcrumbs ds parallax section_padding_top_65 section_padding_bottom_65">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h2 class="highlight bold">Video Gallery</h2>
							<ol class="breadcrumb">
								<li>
									<a href="<?php echo site_url() ?>">
							Home
						</a>
								</li>
								<li class="active">Video Gallery</li>
							</ol>
						</div>
					</div>
				</div>
			</section>

			<section class="ls page_portfolio section_padding_top_100 section_padding_bottom_75">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">

							
							<div class="isotope_container isotope row masonry-layout columns_margin_top_0 columns_margin_bottom_30" data-filters=".isotope_filters">
 <?php foreach ($items as $item): ?> 
								<div class="isotope-item col-lg-4 col-md-6 col-sm-12 category3">
									<div class="vertical-item gallery-item content-absolute text-center ds">
										<div class="item-media">
											<iframe src="https://www.youtube.com/embed/<?php echo $item->link ?>?loop=1&modestbranding=1" 
                                                                                                        width=100% height=100% frameborder=0 allowfullscreen><p></iframe>
											
										</div>
										
									</div>
								</div>
                                                <?php endforeach ?>              
                                                            
                                                      </div>
							<!-- eof .isotope_container.row -->

						

						</div>
					</div>
				</div>
			</section>
