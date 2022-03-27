
			<section class="page_breadcrumbs ds parallax section_padding_top_65 section_padding_bottom_65">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h2 class="highlight bold">Our Events</h2>
							<ol class="breadcrumb">
								<li>
									<a href="<?php echo site_url() ?>">
							Home
						</a>
								</li>
								
								<li class="active">Events</li>
							</ol>
						</div>
					</div>
				</div>
			</section>


			<section class="ls section_padding_top_100 section_padding_bottom_100 columns_padding_25">
				<div class="container">
					<div class="row">

						<div class="col-sm-10 col-sm-push-1">
    <?php if(is_array($items)): ?>
                <?php foreach ($items as $item): ?> 

							<article class="post side-item content-padding with_background">

								<div class="row">

									<div class="col-md-5">
										<div class="item-media">
											<img src="<?php echo $item->image ?>" alt="photo">
											<div class="media-links">
												<a class="abs-link" title="" href="<?php echo site_url('eventpost/index/' . $item->event_id) ?>"></a>
											</div>
										</div>
									</div>

									<div class="col-md-7">
										<div class="item-content">
											<h3>
												<a href="<?php echo site_url('eventpost/index/' . $item->event_id) ?>"><?php echo $item->title ?></a>
											</h3>

											<p class="item-meta grey darklinks">
											<i class="fa fa-calendar highlight"></i> <?php echo date('M d, Y', strtotime($item->date)) ?><br>
											<i class="fa fa-map-marker highlight"></i> <?php echo ($item->place) ?>
										</p>
											<p><?php $this->load->helper('text') ?>
                                        <?php echo word_limiter($item->description, 25) ?> </p>
										</div>
									</div>

								</div>
							</article>
  <?php endforeach; ?>
              <?php endif; ?>     
                            
							
						</div>
						<!--eof .col-sm-* (main content)-->

					</div>
				</div>
			</section>

		