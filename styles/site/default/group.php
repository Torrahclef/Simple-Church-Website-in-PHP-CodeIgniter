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
								<li class="active">
								Groups
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

							<article class="single-post vertical-item with_background">
								<div class="entry-thumbnail item-media">
									<img src="<?php echo $item->image ?>" alt="photo">
								</div>
								<div class="item-content">

									<div class="with_padding">

										<header class="entry-header">

											<h1 class="entry-title">
												<?php echo $item->title ?>
											</h1>

										</header>
										<!-- .entry-header -->

										<div class="entry-content">
											 <?php foreach (explode("\n", $item->description) as $i): ?>
                            <p> <?php echo $i ?></p>
                        <?php endforeach; ?>

										</div>
										<!-- .entry-content -->
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
									<footer class="with_top_border entry-meta highlightlinks">
										<div class="content-justify">
											<span class="entry-date">
												<time class="entry-date" datetime="2017-03-13T08:50:40+00:00">
													<?php echo date('M d, Y h:i:s A', strtotime($item->datetime)) ?>
												</time>
											</span>
											
										</div>
									</footer>

								</div>
								<!-- .item-content -->

							</article>

	<div class="row columns_padding_5 page-nav">
              <?php foreach ($this->db->where('group_id !=', $item->group_id)->get('group', 2)->result() as $post): ?>
								<div class="col-md-6">
									<div class="with_padding_small text-center ds bg_teaser after_cover darkgrey_bg">
										<img src="<?php echo $post->image ?>" alt="">
										<div class="item-content">
											
											<h4>
												<a href="<?php echo site_url('group/index/' . $post->group_id) ?>" rel="bookmark"><?php echo $post->title ?></a>
											</h4>
										</div>
										<!-- eof .item-content -->
									</div>
								</div>
  <?php endforeach ?>

							</div>

							
						</div>
						<!--eof .col-sm-8 (main content)-->

					</div>
				</div>
			</section>
