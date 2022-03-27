
			<section class="page_breadcrumbs ds parallax section_padding_top_65 section_padding_bottom_65">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h2 class="highlight bold">Sermons / Messages</h2>
							<ol class="breadcrumb">
								<li>
									<a href="<?php echo site_url() ?>">
							Home
						</a>
								</li>
								
								<li class="active">Sermons</li>
							</ol>
						</div>
					</div>
				</div>
			</section>


			<section class="ls section_padding_top_100 section_padding_bottom_75 columns_padding_25">
				<div class="container">
					<div class="row">

						<div class="col-sm-10 col-sm-push-1">


						 <?php foreach ($items as $item): ?> 

							<article class="post format-small-image with_background">

								<div class="side-item">

									<div class="row">

										<div class="col-md-5">
											<div class="item-media entry-thumbnail">
												<img src="<?php echo $item->image ?>" alt="">
											</div>
										</div>

										<div class="col-md-7">
											<div class="item-content flex-content">


												<div class="with_padding">

													<h3 class="entry-title">
														<a href="<?php echo site_url('read/index/' . $item->category_id) ?>" rel="bookmark"><?php echo $item->title ?></a>
													</h3>

													<p>  <?php $this->load->helper('text') ?>
                                        <?php echo word_limiter($item->desc, 50) ?></p>

												</div>

												<footer class="with_top_border entry-meta highlightlinks">
													<div class="content-justify">
														<span class="entry-date">
															<time class="entry-date" datetime="2017-03-13T08:50:40+00:00">
																 <?php echo date('M d, Y h:i:s A', strtotime($item->date)) ?>
															</time>
														</span>
													</div>
												</footer>

											</div>
										</div>

									</div>
								</div>

							</article>
							<!-- .post -->

  <?php endforeach ?>
							
						</div>
						<!--eof .col-sm-8 (main content)-->


					</div>
				</div>
			</section>
			