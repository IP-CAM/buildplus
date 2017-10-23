<?php echo $header; ?>
<div class="container">
  <div class="row"><!-- <?php echo $column_left; ?> -->
   	<?php if ($column_left && $column_right) { ?>
   	<?php $class = 'col-sm-6'; ?>
   	<?php } elseif ($column_left || $column_right) { ?>
   	<?php $class = 'col-sm-9'; ?>
   	<?php } else { ?>
   	<?php $class = 'col-sm-12'; ?>
   	<?php } ?>

   	<div id="content" class="col-sm-12">
         <?php echo $content_top; ?>
      </div>

   </div>
</div>

<?php echo $content_bottom; ?>


<div id="home-contact">
   <div class="section-container center">
      <h5 class="page-title-xs">CONTACT US</h5>

      <h1 class="section-title-lg">GET IN TOUCH WITH US</h1>
      <hr class="section-divider-md" />
   </div>

   <div class="section-content">
      <div class="container">
         <div class="row">
            <div class="col-sm-6">
               <?php echo $column_left; ?>

            </div>

            <div class="col-sm-6">
               <div class="home-form">
                  <h4>FORM: </h4>
                  <?php echo $column_right; ?>
               </div>
            </div>
         </div>
      </div>
   </div>

</div>

<!-- FORM -->
<!-- <div class="home-contact-location">
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.772578078375!2d103.85798285850214!3d1.3118460949475637!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da19c92894bd7d%3A0xb68e6aef01fe91a5!2s8+Foch+Rd%2C+Singapore+209255!5e0!3m2!1sen!2sph!4v1508471086487" width="380" height="160" frameborder="0" style="border:0" allowfullscreen></iframe>
   <p>Feel free to contact us using the contact form if you <br>have any questions about our products or services.</p>
   <div class="home-contact-info">
      <strong>8, Foch Road, Singapore 209255</strong><br>
      <strong>Tel : </strong> (65) 62982988, 62972988<br>
      <strong>Fax : </strong> (65) 62962328<br>
      <strong>Email : </strong> buildplusgp@gmail.com<br>
   </div>
   <br>
   <div class="home-social">
      Follow us on : &nbsp;
      <a href="#"><img src="image\catalog\images\social\fb.png"></a> &nbsp;
      <a href="#"><img src="image\catalog\images\social\youtube.png"></a>
   </div>
</div> -->




<!-- WHAT WE DO -->
<!-- <div id="wwd">
<div class="section-container center">
<h5 class="page-title-xs">SERVICES</h5>

<h1 class="section-title-lg">WHAT WE DO?</h1>
<hr class="section-divider-md" />
<h6 class="section-desc">Build Plus specialized contractor and installers for</h6>
</div>


<div class="section-content">

   <div class="wwd-container">

      <div class="wwd-col">
         <img src="image/catalog/images/wwd/1.png" class="img-responsive">
      </div>
      <div class="wwd-col">
         <img src="image/catalog/images/wwd/2.png" class="img-responsive">
      </div>
      <div class="wwd-col">
         <img src="image/catalog/images/wwd/3.png" class="img-responsive">
      </div>
      <div class="wwd-col">
         <img src="image/catalog/images/wwd/4.png" class="img-responsive">
      </div>

   </div>

</div>
</div> -->


<!-- INTERESTED IN OUR SERVICES? -->
<!-- <div id="interested">
<div class="container-fluid home-section-2" style="background-image: url('image/catalog/images/interested-services.jpg');">
   <div class="section-container-fluid center">
      <div class="section-title-md white">INTERESTED IN OUR SERVICES?</div>

      <div class="section-btn-box"><a href="#"><button class="btn section-btn-inversed">CONTACT US</button></a></div>
   </div>
</div>
</div> -->



<!-- WHAT WE HAVE -->
<!-- <div id="wwh">
<div class="container-fluid home-section-3" style="background-image: url('image/catalog/images/wwh/prism-top.png');">

   <div class="section-container center transparent">
      <h5 class="page-title-xs">PRODUCTS</h5>

      <h1 class="section-title-lg">WHAT WE HAVE?</h1>
      <hr class="section-divider-md" />

      <ul class="section-nav">
        <li><a>NEW ARRIVAL</a></li>
        <li><a>BEST SELLER</a></li>
        <li><a>MOST POPULAR</a></li>
      </ul>

      <div class="section-content wwh-content wwh">

         <div class="wwh-container">
            <div class="row">
               <div class="col-xs-4 wwh-col">
                  <img src="image/catalog/images/wwh/1.png" class="img-responsive wwh-img">
                  <div class="wwh-overlay">
                     <div class="wwh-text">
                           <div class="wwh-pname">
                              BIANCO STATURIETTO
                           </div>
                           <div class="wwh-imgbox">
                              <img src="image/catalog/images/search-icon-blue.png">
                           </div>
                     </div>
                  </div>
               </div>
               <div class="col-xs-4 wwh-col">
                  <img src="image/catalog/images/wwh/2.png" class="img-responsive wwh-img">
                  <div class="wwh-overlay">
                     <div class="wwh-text">
                           <div class="wwh-pname">
                              BIANCO STATURIETTO
                           </div>
                           <div class="wwh-imgbox">
                              <img src="image/catalog/images/search-icon-blue.png">
                           </div>
                     </div>
                  </div>
               </div>
               <div class="col-xs-4 wwh-col">
                  
               </div>
            </div>

            <div class="row">
               <div class="col-xs-4 wwh-col">
                  <img src="image/catalog/images/wwh/3.png" class="img-responsive wwh-img">
                  <div class="wwh-overlay">
                     <div class="wwh-text">
                        <div class="wwh-flex">
                           <div class="wwh-pname">
                              BIANCO STATURIETTO
                           </div>
                           <div class="wwh-imgbox">
                              <img src="image/catalog/images/search-icon-blue.png">
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-xs-4 wwh-col">
                  <img src="image/catalog/images/wwh/4.png" class="img-responsive wwh-img">
                  <div class="wwh-overlay">
                     <div class="wwh-text">
                           <div class="wwh-pname">
                              BIANCO STATURIETTO
                           </div>
                           <div class="wwh-imgbox">
                              <img src="image/catalog/images/search-icon-blue.png">
                           </div>
                     </div>
                  </div>
               </div>
               <div class="col-xs-4 wwh-col">
                  <img src="image/catalog/images/wwh/5.png" class="img-responsive wwh-img">
                  <div class="wwh-overlay">
                     <div class="wwh-text">
                           <div class="wwh-pname">
                              BIANCO STATURIETTO
                           </div>
                           <div class="wwh-imgbox">
                              <img src="image/catalog/images/search-icon-blue.png">
                           </div>
                     </div>
                  </div>
               </div>
            </div>

            <div class="row">
               <div class="col-xs-4 wwh-col">

               </div>
               <div class="col-xs-4 wwh-col">
                  <img src="image/catalog/images/wwh/6.png" class="img-responsive wwh-img">
                  <div class="wwh-overlay">
                     <div class="wwh-text">
                           <div class="wwh-pname">
                              BIANCO STATURIETTO
                           </div>
                           <div class="wwh-imgbox">
                              <img src="image/catalog/images/search-icon-blue.png">
                           </div>
                     </div>
                  </div>
               </div>
               <div class="col-xs-4 wwh-col">
                  <img src="image/catalog/images/wwh/7.png" class="img-responsive wwh-img">
                  <div class="wwh-overlay">
                     <div class="wwh-text">
                           <div class="wwh-pname">
                              BIANCO STATURIETTO
                           </div>
                           <div class="wwh-imgbox">
                              <img src="image/catalog/images/search-icon-blue.png">
                           </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         
      </div>

      <div class="section-btn-box margin-t-0">
         <a href="#"><button class="btn section-btn-gray">SEE MORE</button></a>
      </div>
   </div>
</div>
</div> -->


<!-- OUR PROJECTS -->
<!-- <div id="our-projects">
   <div class="container-fluid home-section-4" style="background-image: url('image/catalog/images/wwh/bottom.png'), url('image/catalog/images/wwh/prism-bot.png');">
      <div class="section-container-fluid center">
         <div class="section-title-md white">
            OUR PROJECTS
         </div>
         <div class="section-btn-box">
            <a href="#"><button class="btn section-btn-inversed">SEE MORE</button></a>
         </div>

      </div>
   </div>
</div> -->







<!-- 

	<div class="section-container center">
		<h5 class="page-title-xs">
			ABOUT US
		</h5>

		<h1 class="section-title-lg">
			WHO ARE WE?
		</h1>

		<hr class="section-divider-md">

		<div class="section-content">

			<p>
				Build Plus is an established importer and distributor of building materials and products.<br>
				With over 30 years of experience, Build Plus has longstanding supply relationships with <br>
				natural stone quarries, tile manufacturers and other building related product contacts.<br>
			</p>
		  
			<p>
				In addition, Build Plus carries a range of home & garden accessories sourced within Asia.
			</p>

		</div>

		<div class="section-btn-box">
			<a href="#"><button class="btn section-btn">VIEW MORE</button></a>
		</div>
  
	</div> -->

	
	<!-- <div class="container-fluid home-section-1" style="background-image: url('image/catalog/images/high-quality-mats.jpg');">
		<div class="section-container-fluid center">
		  <div class="section-title-md white">
				HIGH QUALITY MATERIAL & PERFECT EXPERIENCE      
		  </div>
		  <div class="section-btn-box">
				<a href="#"><button class="btn section-btn-inversed">VIEW MORE</button></a>
		  </div>
		  
		</div>
	</div> -->



<?php echo $footer; ?>