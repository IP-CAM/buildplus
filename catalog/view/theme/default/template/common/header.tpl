<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/default/stylesheet/bootstrap-text.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/default/stylesheet/bootstrap-equal-height.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap-dialog.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700|Source+Sans+Pro:300,400,600,700,900" rel="stylesheet">
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>


<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.css"/>
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.css"/>

</head>
<body class="<?php echo $class; ?>">


<?php

   $get_route = $_GET['route'];

   if(isset($_GET['route'])){
      if($get_route == "common/home"){
         ?>
            <div class="home-banner">

               <div class="home-banner-title-sm"><h2>SPECIALISED IN</h2></div>
               <div class="home-banner-title-lg">
                  <h1>
                     BUILDING PRODUCTS & CONTRACT SERVICES
                  </h1>
               </div>

            </div>
         <?php
      }
   }
?>















<!-- Modal -->
<div id="modal-contact-form" class="modal fade" role="dialog">
  <div class="modal-dialog">

   <a data-dismiss="modal" class="x-button">
     <img src="image/catalog/images/permeable/gallery/x.png">
  </a>

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-body">
       
      


<div class="contact-form-container">
<div class="row">
<div class="col-sm-8">
<p class="mar-bot-2">We'd love to hear from you! Please fill our form below and we'll contact you as soon as possible.</p>
</div>
</div>
</div>

<form class="form-horizontal" enctype="multipart/form-data" id="contact-page-form" method="post">
<!-- <fieldset> -->
<div class="row row-bp">
<div class="col-sm-6">
<div class="form-group required"><input class="form-control bp-control" id="input-name" name="name" placeholder="* Name" type="text" /> <!--?php if ($error_name) { ?-->
<div class="text-danger"><!--?php echo $error_name; ?--></div>
<!--?php } ?--></div>
</div>

<div class="col-sm-6">
<div class="form-group required"><input class="form-control bp-control" id="input-email" name="email" placeholder="* Email" type="text" /> <!--?php if ($error_email) { ?-->
<div class="text-danger"><!--?php echo $error_email; ?--></div>
<!--?php } ?--></div>
</div>
</div>

<div class="row row-bp">
<div class="col-sm-6">
<div class="form-group required"><input class="form-control bp-control" id="input-contact" name="contact" placeholder="* Contact No." type="text" /> <!--?php if ($error_contact) { ?-->
<div class="text-danger"><!--?php echo $error_contact; ?--></div>
<!--?php } ?--></div>
</div>

<div class="col-sm-6">
<div class="form-group required"><input class="form-control bp-control" id="input-company" name="company" placeholder="Company" type="text" /></div>
</div>
</div>

<div class="col-sm-12">
<div class="form-group required"><textarea class="form-control bp-control" id="input-enquiry" name="enquiry" placeholder="* Message" rows="5"></textarea><!--?php if ($error_enquiry) { ?-->

<div class="text-danger"><!--?php echo $error_enquiry; ?--></div>
<!--?php } ?--></div>
</div>
<!--?php if ($site_key) { ?-->


<div class="row row-bp">
<div class="form-group">
<div class=" col-sm-6">

   <div class="g-recaptcha" data-theme="light" data-sitekey="6Le_lBATAAAAAGxlKWMMz3o2xK9A_zVMAiKLbpEU" style="transform:scale(0.77);-webkit-transform:scale(0.77);transform-origin:0 0;-webkit-transform-origin:0 0;">&nbsp;
   </div>
<!--?php if ($error_captcha) { ?-->

   <div class="text-danger"><!--?php echo $error_captcha; ?--></div>
   <!--?php } ?-->

</div>

<div class=" col-sm-6">
   <div class="buttons">
   <div class="pull-right"><input class="btn btn-primary btn-bp" type="submit" value="submit" /></div>
   <div class="pull-right"><input class="btn btn-primary btn-bp" type="reset" value="clear" /></div>
   </div>
</div>

</div>
</div>
<!--?php } ?--><!-- </fieldset> -->


</form>
</div>

</div>



    </div>

  </div>
</div>









<!-- <nav id="top">
   <div class="container">
      <?php echo $currency; ?>
      <?php echo $language; ?>
      <div id="top-links" class="nav pull-right">
         <ul class="list-inline">
            <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
            <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
               <ul class="dropdown-menu dropdown-menu-right">
                  <?php if ($logged) { ?>
                  <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                  <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                  <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                  <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                  <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                  <?php } else { ?>
                  <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                  <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                  <?php } ?>
               </ul>
            </li>
            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
            <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
            <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
         </ul>
      </div>
   </div>
</nav> -->

      <!-- <div class="row">
         <div class="col-sm-4">
            <div id="logo">
               <?php if ($logo) { ?>
               <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
               <?php } else { ?>
               <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
               <?php } ?>
            </div>
         </div>
         <div class="col-sm-5"><?php echo $search; ?>
         </div>
         <div class="col-sm-3"><?php echo $cart; ?></div>
      </div> -->

<header>
   <div class="container">
   </div>
</header>
<div class="container-fluid bp-nav-container">
   <nav id="menu" class="navbar navbar-fixed-top">
      <div class="container">
            <div class="row">
               <div class="col-sm-3">
                  <div class="store-logo">
                     <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                  </div>
               </div>
               <div class="col-sm-7">
                        <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_menu; ?></span>
                           <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                        </div>
                        <div class="collapse navbar-collapse navbar-ex1-collapse">
                           <ul class="nav navbar-nav">
                              <li><a href="<?php echo $home; ?>" <?php echo (isset($route) && $route=="common/home") ? 'class="active"' : '' ; ?>><?php echo $text_home; ?></a></li>
                              <?php if ($categories) { ?>
                              <?php foreach ($categories as $category) { ?>
                              <?php if ($category['children']) { ?>
                              <li class="dropdown">
                                 <?php if ($top_category_id == $category['category_id']) { ?>
                                 <a href="<?php echo $category['href']; ?>" class="dropdown-toggle active" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                                 <?php } else { ?>
                                 <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                                 <?php } ?>
                                 <div class="dropdown-menu">
                                    <div class="dropdown-inner">
                                       <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                       <ul class="list-unstyled">
                                          <?php foreach ($children as $child) { ?>
                                          <?php if ($top_child_id == $child['category_id']) { ?>
                                          <li><a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a></li>
                                          <?php } else { ?>
                                          <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                          <?php } ?>
                                          <?php } ?>
                                       </ul>
                                       <?php } ?>
                                    </div>
                                    <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
                              </li>
                              <?php } else { ?>
                              <?php if ($top_category_id == $category['category_id']) { ?>
                              <li><a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a></li>
                              <?php } else { ?>
                              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                              <?php } ?>
                              <?php } ?>
                              <?php } ?>
                              <?php } ?>



                              <li><a href="<?php echo $about_us; ?>" <?php echo (isset($route) && $route=="information/information&information_id=4") ? 'class="active"' : '' ; ?>><?php echo $about_us_title; ?></a></li>
                              <?php if ($categories) { ?>
                              <?php foreach ($categories as $category) { ?>
                              <?php if ($category['children']) { ?>
                              <li class="dropdown">
                                 <?php if ($top_category_id == $category['category_id']) { ?>
                                 <a href="<?php echo $category['href']; ?>" class="dropdown-toggle active" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                                 <?php } else { ?>
                                 <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                                 <?php } ?>
                                 <div class="dropdown-menu">
                                    <div class="dropdown-inner">
                                       <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                       <ul class="list-unstyled">
                                          <?php foreach ($children as $child) { ?>
                                          <?php if ($top_child_id == $child['category_id']) { ?>
                                          <li><a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a></li>
                                          <?php } else { ?>
                                          <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                          <?php } ?>
                                          <?php } ?>
                                       </ul>
                                       <?php } ?>
                                    </div>
                                    <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
                              </li>
                              <?php } else { ?>
                              <?php if ($top_category_id == $category['category_id']) { ?>
                              <li><a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a></li>
                              <?php } else { ?>
                              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                              <?php } ?>
                              <?php } ?>
                              <?php } ?>
                              <?php } ?>



<!--                               <li><a <?php echo (isset($route) && $route=="information/information&information_id=4") ? 'class="active"' : '' ; ?>><?php echo $products_title; ?></a></li>
                              <?php if ($categories) { ?>
                              <?php foreach ($categories as $category) { ?>
                              <?php if ($category['children']) { ?>
                              <li class="dropdown">
                                 <?php if ($top_category_id == $category['category_id']) { ?>
                                 <a href="<?php echo $category['href']; ?>" class="dropdown-toggle active" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                                 <?php } else { ?>
                                 <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
                                 <?php } ?>
                                 <div class="dropdown-menu">
                                    <div class="dropdown-inner">
                                       <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                                       <ul class="list-unstyled">
                                          <?php foreach ($children as $child) { ?>
                                          <?php if ($top_child_id == $child['category_id']) { ?>
                                          <li><a href="<?php echo $child['href']; ?>" class="active"><?php echo $child['name']; ?></a></li>
                                          <?php } else { ?>
                                          <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                          <?php } ?>
                                          <?php } ?>
                                       </ul>
                                       <?php } ?>
                                    </div>
                                    <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
                              </li>
                              <?php } else { ?>
                              <?php if ($top_category_id == $category['category_id']) { ?>
                              <li><a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a></li>
                              <?php } else { ?>
                              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                              <?php } ?>
                              <?php } ?>
                              <?php } ?>
                              <?php } ?> -->




                              <li class="dropdown"><a <?php echo (isset($route) && $route=="product/product") ? 'class="active "' : '' ; ?>><?php echo $products_title; ?></a>
                                 <ul class="dropdown-menu product-dropdown">
                                    <li><a href="<?php echo $product_permeable_link; ?>" <?php echo (isset($route) && $route=="product/product") ? 'class="active"' : '' ; ?>><?php echo $product_permeable_title; ?></a></li>
                                    <li><a href="<?php echo $product_glassblock_link; ?>" <?php echo (isset($route) && $route=="product/product") ? 'class="active"' : '' ; ?>><?php echo $product_glassblock_title; ?></a></li>

                                    <li><a href="<?php echo $product_tiles_link; ?>" <?php echo (isset($route) && $route=="product/product") ? 'class="active"' : '' ; ?>><?php echo $product_tiles_title; ?></a></li>

                                    <li><a href="<?php echo $product_marble_link; ?>" <?php echo (isset($route) && $route=="product/product") ? 'class="active"' : '' ; ?>><?php echo $product_marble_title; ?></a></li>
                                    <li><a>MOSAIC</a></li>
                                    <li><a href="<?php echo $product_tactiles_link; ?>" <?php echo (isset($route) && $route=="product/product") ? 'class="active"' : '' ; ?>><?php echo $product_tactiles_title; ?></a></li>
                                </ul>

                              </li>

                              <li><a href="<?php echo $services; ?>" <?php echo (isset($route) && $route=="information/information&information_id=7") ? 'class="active"' : '' ; ?>><?php echo $services_title; ?></a></li>

                              <li><a href="<?php echo $project_references_link; ?>" <?php echo (isset($route) && $route=="information/information&information_id=10") ? 'class="active"' : '' ; ?>><?php echo $project_references_title; ?></a></li>

                               <li><a href="<?php echo $special_deals_link; ?>" <?php echo (isset($route) && $route=="/product/category") ? 'class="active"' : '' ; ?>><?php echo $special_deals_title; ?></a></li>

                               <li><a href="<?php echo $contact; ?>" <?php echo (isset($route) && $route=="information/contact") ? 'class="active"' : '' ; ?>><?php echo $text_contact; ?></a></li>
                           </ul>
                        </div>

                       <!--  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                          <ul class="dropdown-menu">
                            <li><a href="#">Page 1-1</a></li>
                            <li><a href="#">Page 1-2</a></li>
                            <li><a href="#">Page 1-3</a></li>
                          </ul>
                        </li> -->
               </div>
               <div class="col-sm-1">
                  <img src="image/catalog/images/search-icon.png" class="nav-search-ico">
               </div>
            </div>
      </div>
   </nav>
</div>
<?php if ($content_header) { ?>
<div class="container">
   <div class="row">
      <div class="col-sm-12"><?php echo $content_header; ?></div>
   </div>
</div>
<?php } ?>