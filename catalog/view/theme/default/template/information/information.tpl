<?php echo $header; ?>

<?php if(isset($_GET['information_id'])){
    $page_id = $_GET['information_id'];

    if($page_id == 4 || $page_id == 7 ) {  ?>

<!-- IF PAGE == ABOUT US -->

<!-- ABOUT US BANNER -->
<div id="about-page" class="container-fluid" style="background: url('image/catalog/images/about-us/banner.jpg');">

  <div class="container">
    <div class="page-banner-title">
      <?php echo $heading_title; ?>
    </div>
  </div>
</div>

<!-- BREADCRUMBS -->
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
</div>
  

<div class="container">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

    <div id="content" class="<?php echo $class; ?>">
      <?php echo $content_top; ?>

      <?php echo $content_bottom; ?>

    </div>

    <?php echo $column_right; ?>
    <?php echo $column_left; ?>

</div>

<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>

<script type="text/javascript">
  $(document).ready(function(){
    
    // alert('adsasda');

    $('#affiliations-slider').slick({
      dots: true,
      infinite: true,
      speed: 1000,
      autoplay: true,
      autoplaySpeed: 2000,
      slidesToShow: 5,
      slidesToScroll: 5,
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 3,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 600,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }

      ]
    });

  });
</script>

    <?php } 
} ?>



<!--       <div id="pebble-wash" class="row">
        <div class="col-sm-6">
        <p><h1>Pebble Wash</h1></p>

        <p>This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, 
        lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit Duis sed odio sit amet 
        nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit Nam nec tellus a Odia tincidunt auctor 
        a ornare odio. Sed non mauris vitae erat conseguat auctor eu in elit Class aptenttaciti sociosqu ad litora 
        torquent per conubia nostra, per incepts himenaeos. Mauris in erat justo. Nullam ac urna eu felis dapibus 
        condimentum sit ameta augue. Sed non neque elit Sed utimperdiet nisL Proin condimentum fermentum 
        nunc. Etiam pharetra, erat sed fermentum feugiat, velit mauris egestas quam, utaliquam massa nisl quis 
        neque. Suspendisse in orci eninm </p>
        </div>

        <div class="col-sm-6">
          <img src="image\catalog\images\services\pebble-wash.jpg" class="img-responsive">
        </div>
      </div> -->

      <!-- <div id="our-story" class="row">
        <div class="col-sm-6">
        <p><h1>Our Story</h1></p>

        <p>Established in 1985, Build Plus Pte Ltd is one of the most recognized name in the local building industry. Although technology and tastes in building materials may have evolved over the years, our most valuable asset continues to be our long-standing relationships with international factories, which allows us to deliver products of the highest quality at competitive rates and on-time to our customers. Over the years, we have curated a total building material package including Natural stones (Marble and Granite), Full range of tiles, Glass Blocks, Pebble Wash, Pavers and PP ProtectionBoards - addressing the myriad of aesthetic and performance requirements of our customers.</p>

        <p>Our customers are homeowners, businesses, contractors and architects and we vwrk directly with you to understand pur needs and aspirations so as to specify the right products for your needs. Build Plus Pte Ltd is BCA and HD8 registered.&nbsp;</p>
        </div>

        <div class="col-sm-6">
          <img src="image\catalog\images\about-us\our-story.jpg" class="img-responsive">
        </div>
      </div> -->

      <!-- <div id="our-value" class="row">

        <div class="col-sm-6">
          <img src="image\catalog\images\about-us\our-value.jpg" class="img-responsive">
        </div>

        <div class="col-sm-6">
        <p><h1>Our Value</h1></p>

        <p>Established in 1985, Build Plus Pte Ltd is one of the most recognized name in the local building industry. Although technology and tastes in building materials may have evolved over the years, our most valuable asset continues to be our long-standing relationships with international factories, which allows us to deliver products of the highest quality at competitive rates and on-time to our customers. Over the years, we have curated a total building material package including Natural stones (Marble and Granite), Full range of tiles, Glass Blocks, Pebble Wash, Pavers and PP ProtectionBoards - addressing the myriad of aesthetic and performance requirements of our customers.</p>

        <p>Our customers are homeowners, businesses, contractors and architects and we vwrk directly with you to understand pur needs and aspirations so as to specify the right products for your needs. Build Plus Pte Ltd is BCA and HD8 registered.&nbsp;</p>
        </div>
      </div> -->


      <!-- <div id="affiliations">
        <div class="section-title-sm center">
          AFFILIATIONS
        </div>

        <div id="affiliations-slider">
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>
          <div><img src="image\catalog\images\about-us\affiliate1.jpg" class="img-responsive"></div>



        </div>
      </div> -->







<?php echo $footer; ?>