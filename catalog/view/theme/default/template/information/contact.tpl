<?php echo $header; ?>

<div id="about-page" class="container-fluid" style="background: url('image/catalog/images/contact/banner.jpg');">

  <div class="container">
    <div class="page-banner-title">
      <?php echo $heading_title; ?>
    </div>
  </div>

</div>


<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
</div>

<div id="contact-page" class="container">
  
  <div class="col-sm-12">
    <?php echo $geocode; ?>
  </div>

  <div class="contact-details">

<!--   <?php echo $column_left; ?>
  <?php if ($column_left && $column_right) { ?>
  <?php $class = 'col-sm-6'; ?>
  <?php } elseif ($column_left || $column_right) { ?>
  <?php $class = 'col-sm-9'; ?>
  <?php } else { ?>
  <?php $class = 'col-sm-12'; ?>
  <?php } ?> -->
  <?php echo $content_top; ?>

<!--     <div class="col-sm-6 contact-head">
      <h2>Contact Details</h2>
        <ul class="ul-contact">
          <li><img class="contact-ico" src="image/catalog/images/contact/geo.png">8, Foch Road, Singapore 209255</li>
          <li><img class="contact-ico" src="image/catalog/images/contact/phone.png">(65) 62982988 , 62972988</li>
          <li><img class="contact-ico" src="image/catalog/images/contact/fax.png">(65) 62962328</li>
          <li><img class="contact-ico" src="image/catalog/images/contact/email.png">buildplusgp@gmail.com</li>
        </ul>
    </div> -->

   <!--  <div class="col-sm-6 contact-head">
        <h2>ENQUIRY FORM</h2>
        <div class="contact-form-container">
          <p>Need to get in touch? We'd love to hear from you! Please fill our form below and we'll contact you as soon as possible.</p>

          <form method="post" enctype="multipart/form-data" class="form-horizontal" id="contact-page-form">

            <fieldset>

              <div class="row row-bp">

                <div class="col-sm-6">
                  <div class="form-group required">
                      <input type="text" name="name" id="input-name" class="form-control bp-control" placeholder="Name"/>
                      <?php if ($error_name) { ?>
                      <div class="text-danger"><?php echo $error_name; ?></div>
                      <?php } ?>
                  </div>
                </div>

                <div class="col-sm-6">
                  <div class="form-group required">
                      <input type="text" name="email" id="input-email" class="form-control bp-control" placeholder="Email"/>
                      <?php if ($error_email) { ?>
                      <div class="text-danger"><?php echo $error_email; ?></div>
                      <?php } ?>
                  </div>
                </div>

              </div>


              <div class="row row-bp">

                <div class="col-sm-6">
                  <div class="form-group required">
                    <input type="text" name="contact" id="input-contact" class="form-control bp-control" placeholder="Contact No."/>
                    <?php if ($error_contact) { ?>
                    <div class="text-danger"><?php echo $error_contact; ?></div>
                    <?php } ?>
                  </div>
                </div>

                <div class="col-sm-6">
                  <div class="form-group required">
                    <input type="text" name="company" id="input-company" class="form-control bp-control" placeholder="Company"/>
                  </div>
                </div>

              </div>

              <div class="col-sm-12">
                <div class="form-group required">
                  <textarea name="enquiry" rows="10" id="input-enquiry" placeholder="Message" class="form-control bp-control"></textarea>
                  <?php if ($error_enquiry) { ?>
                  <div class="text-danger"><?php echo $error_enquiry; ?></div>
                  <?php } ?>
                </div>
              </div>
              <?php if ($site_key) { ?>
                <div class="form-group">
                  <div class="float-right col-sm-12">
                    <div class="g-recaptcha" data-sitekey="6Le_lBATAAAAAGxlKWMMz3o2xK9A_zVMAiKLbpEU"></div>
                    <?php if ($error_captcha) { ?>
                      <div class="text-danger"><?php echo $error_captcha; ?></div>
                    <?php } ?>
                  </div>
                </div>
              <?php } ?>

            </fieldset>

            <div class="buttons">

              <div class="pull-right">
                <input class="btn btn-primary btn-bp" type="submit" value="submit" />
              </div>

              <div class="pull-right">
                <input class="btn btn-primary btn-bp" type="reset" value="clear" />
              </div>

            </div>

          </form>



        </div>
    </div> -->


  </div>
</div>

<!-- <div class="container">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
  <div class="row">
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <h3><?php echo $text_location; ?></h3>
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
            <?php if ($image) { ?>
            <div class="col-sm-3"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <div class="col-sm-3"><strong><?php echo $store; ?></strong><br />
              <address>
              <?php echo $address; ?>
              </address>
              <br />
              <?php if ($config_email) { ?>
              <strong><?php echo $text_email; ?></strong><br>
              <?php echo $config_email; ?>
              <?php } ?>
            </div>
            <div class="col-sm-3"><strong><?php echo $text_telephone; ?></strong><br>
              <?php echo $telephone; ?><br />
              <br />
              <?php if ($fax) { ?>
              <strong><?php echo $text_fax; ?></strong><br>
              <?php echo $fax; ?>
              <?php } ?>
            </div>
            <div class="col-sm-3">
              <?php if ($open) { ?>
              <strong><?php echo $text_open; ?></strong><br />
              <?php echo $open; ?><br />
              <br />
              <?php } ?>
              <?php if ($comment) { ?>
              <strong><?php echo $text_comment; ?></strong><br />
              <?php echo $comment; ?>
              <?php } ?>
            </div>
            <?php if ($geocode) { ?>
            <div class="col-sm-12">
              <?php echo $geocode; ?>
            </div>
            <?php } ?>
          </div>
        </div>
      </div>
      <?php if ($locations) { ?>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body">
              <div class="row">
                <?php if ($location['image']) { ?>
                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                  <address>
                  <?php echo $location['address']; ?>
                  </address>
                  <?php if ($location['geocode']) { ?>
                  <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=en&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                  <?php } ?>
                </div>
                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                  <?php echo $location['telephone']; ?><br />
                  <br />
                  <?php if ($location['fax']) { ?>
                  <strong><?php echo $text_fax; ?></strong><br>
                  <?php echo $location['fax']; ?>
                  <?php } ?>
                </div>
                <div class="col-sm-3">
                  <?php if ($location['open']) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $location['open']; ?><br />
                  <br />
                  <?php } ?>
                  <?php if ($location['comment']) { ?>
                  <strong><?php echo $text_comment; ?></strong><br />
                  <?php echo $location['comment']; ?>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <h3><?php echo $text_contact; ?></h3>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
            <div class="col-sm-10">
              <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
              <?php if ($error_name) { ?>
              <div class="text-danger"><?php echo $error_name; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-contact"><?php echo $entry_contact; ?></label>
            <div class="col-sm-10">
              <input type="text" name="contact" value="<?php echo $contact; ?>" id="input-contact" class="form-control" />
              <?php if ($error_contact) { ?>
              <div class="text-danger"><?php echo $error_contact; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
            <div class="col-sm-10">
              <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
              <?php if ($error_enquiry) { ?>
              <div class="text-danger"><?php echo $error_enquiry; ?></div>
              <?php } ?>
            </div>
          </div>
          <?php if ($site_key) { ?>
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                <?php if ($error_captcha) { ?>
                  <div class="text-danger"><?php echo $error_captcha; ?></div>
                <?php } ?>
              </div>
            </div>
          <?php } ?>
        </fieldset>
        <div class="buttons">
          <div class="pull-right">
            <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
          </div>
        </div>
      </form>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div> -->


<?php echo $footer; ?>
