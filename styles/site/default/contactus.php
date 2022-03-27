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
  
			<section class="page_breadcrumbs ds parallax section_padding_top_65 section_padding_bottom_65">
				<div class="container">
					<div class="row">
						<div class="col-sm-12 text-center">
							<h2 class="highlight bold">Contact Us</h2>
							<ol class="breadcrumb">
								<li>
									<a href="<?php echo site_url() ?>">
							Home
						</a>
								</li>
								<li class="active">Contact</li>
							</ol>
						</div>
					</div>
				</div>
			</section>

			<section class="ls section_padding_top_100 section_padding_bottom_75">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<section id="map" class="ls ms" data-address="Terracina, LT, Italia">
								<!-- marker description and marker icon goes here -->
							
                                                      <iframe 
  width="100%" 
  height="100%" 
  frameborder="0" 
  scrolling="no" 
  marginheight="0" 
  marginwidth="0" 
  src="https://maps.google.com/maps?q=<?php echo config('latitude')?>,<?php echo config('longitude')?>&hl=es&z=14&amp;output=embed"
 >
 </iframe>  
                                                        
                                                        </section>
						</div>
					</div>

					<div class="row topmargin_40">
						<div class="col-sm-4 to_animate" data-animation="pullDown">
							<div class="teaser text-center">
								<div class="teaser_icon highlight size_normal">
									<i class="rt-icon2-phone5"></i>
								</div>

								<p>
                        <span class="grey">Phone:</span>  <?php echo config('phone') ?> <br>
                        <span class="grey">WhatsApp:</span> <?php echo config('whatsapp') ?>
                    </p>

							</div>
						</div>
						<div class="col-sm-4 to_animate" data-animation="pullDown">
							<div class="teaser text-center">
								<div class="teaser_icon highlight size_normal">
									<i class="rt-icon2-location2"></i>
								</div>

								<p> 
                         <?php echo config('address') ?>
                    </p>

							</div>
						</div>
						<div class="col-sm-4 to_animate" data-animation="pullDown">
							<div class="teaser text-center">
								<div class="teaser_icon highlight size_normal">
									<i class="rt-icon2-mail"></i>
								</div>
                                                            <p>
								<a href="mailto: <?php echo config('webmaster_email') ?> "> <?php echo config('webmaster_email') ?> </a>
                                                            </p>
							</div>
						</div>

					</div>
					
					<?php
if(!empty($_POST["send"])) {
	$name = $_POST["userName"];
	$email = $_POST["userEmail"];
	$subject = $_POST["subject"];
	$content = $_POST["content"];

	$toEmail = config('webmaster_email');
	$mailHeaders = "From: " . $name . "<". $email .">\r\n";
	if(mail($toEmail, $subject, $content, $mailHeaders)) {
	    $message = "Your contact information is received successfully.";
	    $type = "success";
	}
}
?>

					<div class="row topmargin_40">
						<div class="col-sm-12 to_animate">
						
						<div class="form-container">
        <form name="frmContact" id="" frmContact"" method="post"
            action="" enctype="multipart/form-data"
            onsubmit="return validateContactForm()">

<div id="statusMessage"> 
                        <?php
                        if (! empty($message)) {
                            ?>
                            <p class='<?php echo $type; ?>Message'><?php echo $message; ?></p>
                        <?php
                        }
                        ?>
                    </div>

            <div class="input-row">
                <label style="padding-top: 20px;">Name</label> <span
                    id="userName-info" class="info"></span><br /> <input
                    type="text"class="form-control" name="userName"
                    id="userName" />
            </div>
            <div class="input-row">
                <label>Email</label> <span id="userEmail-info"
                    class="info"></span><br /> <input type="text"
                   class="form-control" name="userEmail" id="userEmail" />
            </div>
            <div class="input-row">
                <label>Subject</label> <span id="subject-info"
                    class="info"></span><br /> <input type="text"
                   class="form-control" name="subject" id="subject" />
            </div>
            <div class="input-row">
                <label>Message</label> <span id="userMessage-info"
                    class="info"></span><br />
                <textarea name="content" id="content"
                   class="form-control" cols="60" rows="6"></textarea>
            </div>
            <div>
                <input type="submit" name="send" class="btn-submit"
                    value="Send" />

            
            </div>
            
        </form>
				
				
				<script src="https://code.jquery.com/jquery-2.1.1.min.js"
        type="text/javascript"></script>
    <script type="text/javascript">
        function validateContactForm() {
            var valid = true;

            $(".info").html("");
            $(".input-field").css('border', '#e0dfdf 1px solid');
            var userName = $("#userName").val();
            var userEmail = $("#userEmail").val();
            var subject = $("#subject").val();
            var content = $("#content").val();
            
            if (userName == "") {
                $("#userName-info").html("Required.");
                $("#userName").css('border', '#e66262 1px solid');
                valid = false;
            }
            if (userEmail == "") {
                $("#userEmail-info").html("Required.");
                $("#userEmail").css('border', '#e66262 1px solid');
                valid = false;
            }
            if (!userEmail.match(/^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/))
            {
                $("#userEmail-info").html("Invalid Email Address.");
                $("#userEmail").css('border', '#e66262 1px solid');
                valid = false;
            }

            if (subject == "") {
                $("#subject-info").html("Required.");
                $("#subject").css('border', '#e66262 1px solid');
                valid = false;
            }
            if (content == "") {
                $("#userMessage-info").html("Required.");
                $("#content").css('border', '#e66262 1px solid');
                valid = false;
            }
            return valid;
        }
</script>
						
						
						</div>
					</div>
				</div>
			</section>
                      