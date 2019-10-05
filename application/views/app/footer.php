
<!-- footer -->
<section class="footer-top pt-5">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<form action="#" method="post">
					<input type="email" placeholder="Enter your email..." name="email" required="">
					<input type="submit" value="Subscribe">
				</form>
			</div>
			<div class="col-lg-6 social-icon mt-lg-0 mt-3 footer">
				<div class="icon-social">
					<h3>Socialize with us</h3>
					<a href="#" class="button-footr">
						<i class="fab fa-facebook-f"></i>
					</a>
					<a href="#" class="button-footr">
						<i class="fab fa-twitter"></i>
					</a>
					<a href="#" class="button-footr">
						<i class="fab fa-dribbble"></i>
					</a>
					<a href="#" class="button-footr">
						<i class="fab fa-pinterest-p"></i>
					</a>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="agile-footer middle w3ls-section">
	<div class="container">
		<div class="agileits_w3layouts-footer-bottom">
			<div class="row w3_agile-footer-grids py-5">
				<div class="col-lg-2 col-sm-3 mb-sm-0 mb-4 px-sm-0 px-4 w3_agile-footer1 f1">	
					<h5 class="mb-3">Useful Links </h5>
						<ul class="w3ls-footer-bottom-list">
						<li><a href="about.html">About us</a></li>
						<li><a href="#">What we do</a></li>
						<li><a href="projects.html">Projects</a></li>
						<li><a href="#">Team members</a></li>
						<li><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
				<div class="col-lg-7 col-sm-9 mb-sm-0 mb-4 px-sm-0 px-4 row w3_agile-footer1 f2">
					<div class="col-lg-3 col-sm-3  mb-sm-0 mb-4 inner-li">
						<h5 class="mb-3">Account</h5>
						<ul class="w3ls-footer-bottom-list">
							<li><a href="#" data-toggle="modal" aria-pressed="false" data-target="#exampleModal">Login</a></li>
							<li><a href="#" data-toggle="modal" aria-pressed="false" data-target="#exampleModal1">Create account</a></li>
						</ul>
					</div>
					
					<div class="col-lg-6 col-sm-7  mb-sm-0 mb-4 inner-li">
						<h5 class="mb-3">Address</h5>
						<ul class="w3ls-footer-bottom-list">
							<li> <span class="fas fa-map-marker"></span> 3481 Jack Street Beverly Jack<span> Hills 90210, USA </span></li>
							<li> <span class="fas fa-envelope"></span> <a href="mailto:name@example.com"> mail@example.com</a> </li>
							<li> <span class="fas fa-phone"></span> +112 367 896 2449 </li>
							<!-- <li> <span class="fas fa-globe"></span> <a href="#"> www.website.com</a> </li> -->
							<li> <span class="fas fa-clock"></span> Working Hours : 8:00 a.m - 6:00 p.m</li>
						</ul>
					</div>
					
					<div class="col-lg-3 col-sm-2 inner-li">
						<h5 class="mb-3">support</h5>
						<ul class="w3ls-footer-bottom-list">
							<li>
								<a href="#">24/7 Service</a>
							</li>
							<li>
								<a href="#">FAQ's</a>
							</li>
							<li>
								<a href="#">Media Queries</a>
							</li>
							<li>
								<a href="#">Others</a>
							</li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-lg-3 col-md-12 px-sm-0 px-4 w3_agile-footer1 f3">
						<h5 class="mb-3">Latest Tweets</h5>
					<ul class="tweet-agile">
						<li>
							<p class="tweet-p1"><span class="fab fa-twitter" aria-hidden="true"></span><a href="mailto:support@company.com">@example</a> sit amet consectetur adipiscing. <a href="#">http://ax.by/zzzz</a></p>
							<p class="tweet-p2">Posted 2 days ago.</p>
						</li>
						<li>
							<p class="tweet-p1"><span class="fab fa-twitter" aria-hidden="true"></span><a href="mailto:support@company.com">@example</a> sit amet consectetur adipiscing. <a href="#">http://cx.dy/zzzz</a></p>
							<p class="tweet-p2">Posted 4 days ago.</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="copyright py-4">
	<div class="agileits_w3layouts-copyright text-center">
		<p>© 2018 Corp Active. All Rights Reserved | Design by
			<a href="http://w3layouts.com/" target="=_blank"> W3layouts </a>
		</p>
	</div>
</section>
<!-- //footer -->



	
<!-- js-scripts -->		

	<!-- js -->
	<script type="text/javascript" src="<?php echo base_url('assets/js/jquery-2.1.4.min.js')?>"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/js/bootstrap.js')?>"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
	<!-- //js -->	

	<!-- Banner Slider js script file-->
		<script src="<?php base_url('assets/js/JiSlider.js')?>"></script>
		<script>
			$(window).load(function () {
				$('#JiSlider').JiSlider({
					color: '#fff',
					start: 1,
					reverse: false
				}).addClass('ff')
			})
		</script>
		<script>
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-36251023-1']);
			_gaq.push(['_setDomainName', 'jqueryscript.net']);
			_gaq.push(['_trackPageview']);

			(function () {
				var ga = document.createElement('script');
				ga.type = 'text/javascript';
				ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0];
				s.parentNode.insertBefore(ga, s);
			})();
		</script>
	<!-- //Banner Slider js script file-->

	<!-- tabs -->
	<script src="<?php echo base_url('assets/js/easy-responsive-tabs.js')?>"></script>
	<script>
	$(document).ready(function () {
	$('#horizontalTab').easyResponsiveTabs({
	type: 'default', //Types: default, vertical, accordion           
	width: 'auto', //auto or any width like 600px
	fit: true,   // 100% fit in a container
	closed: 'accordion', // Start closed if in accordion view
	activate: function(event) { // Callback function if tab is switched
	var $tab = $(this);
	var $info = $('#tabInfo');
	var $name = $('span', $info);
	$name.text($tab.text());
	$info.show();
	}
	});
	$('#verticalTab').easyResponsiveTabs({
	type: 'vertical',
	width: 'auto',
	fit: true
	});
	});
	</script>
	<!--//tabs-->
	
	<!-- for-Testimonials -->
	<!-- required-js-files-->
	<link href="<?php echo base_url('assets/css/owl.carousel.css')?>" rel="stylesheet">
		<script src="<?php echo base_url('assets/js/owl.carousel.js')?>"></script>
			<script>
		$(document).ready(function() {
		  $("#owl-demo").owlCarousel({
			items : 1,
			lazyLoad : true,
			autoPlay : true,
			navigation : false,
			navigationText :  false,
			pagination : true,
		  });
		});
		</script>
	<!--//required-js-files-->
	<!-- //for-Testimonials -->

	<!-- start-smoth-scrolling -->
	<script src="<?php echo base_url('assets/js/SmoothScroll.min.js')?>"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/js/move-top.js')?>"></script>
	<script type="text/javascript" src="<?php echo base_url('assets/js/easing.js')?>"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<!-- start-smoth-scrolling -->
	
<!-- //js-scripts -->

</body>
</html>