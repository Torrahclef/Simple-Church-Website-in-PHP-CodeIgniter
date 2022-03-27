<section class="page_breadcrumbs ds parallax section_padding_top_65 section_padding_bottom_65">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h2 class="highlight bold">Frequently Asked Questions</h2>
							<ol class="breadcrumb">
								<li>
									<a href="<?php echo site_url() ?>">
							Home
						</a>
								</li>
								<li class="active">FAQ</li>
							</ol>
						</div>
					</div>
				</div>
			</section>


			<section class="ls section_padding_100 columns_padding_25">
				<div class="container">
					<div class="row vertical-tabs">
                                              
						<div class="col-sm-5">

							<!-- Nav tabs -->
							<ul class="nav" role="tablist">
							   <?php foreach ($items as $item): ?> 
                                                            <li>
									<a href="#<?php echo $item->faq_id ?>" role="tab" data-toggle="tab"><?php echo $item->question ?></a>
								</li>
                                                                <?php endforeach ?>
							</ul>

						</div>
						<div class="col-sm-7">
                                               <div class="tab-content no-border">
                                                   <?php foreach ($items as $item): ?> 
								<div class="tab-pane fade in" id="<?php echo $item->faq_id ?>">
									 <?php echo $item->answer ?>
								</div>
								<?php endforeach ?>
							</div>

						</div>


					</div>

				</div>
			</section>

