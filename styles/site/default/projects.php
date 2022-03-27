<section class="page_breadcrumbs ds parallax section_padding_top_65 section_padding_bottom_65">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h2 class="highlight bold">Photo Gallery</h2>
							<ol class="breadcrumb">
								<li>
									<a href="<?php echo site_url() ?>">
							Home
						</a>
								</li>
								<li class="active">Photo Gallery</li>
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
											<img src="<?php echo $item->image ?>" alt="">
											<div class="media-links">
												<div class="links-wrap">
													<a class="p-view prettyPhoto " title="" data-gal="prettyPhoto[gal]" href="<?php echo $item->image ?>"></a>
													
												</div>
											</div>
										</div>
										<div class="item-content darken_gradient">
											<h4>
												<p><?php echo $item->title ?></p>
											</h4>
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
