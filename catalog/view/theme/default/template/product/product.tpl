<?php echo $header; ?>

<?php

if(isset($_GET)) {
  $page_route     = $_GET['route'];
  $product_route  = $_GET['product_id'];
  if($page_route == "product/product" && $product_route == "53"){ ?>

<!-- PRODUCT PERMEABLE CERAMIC RAVER -->
<div class="container">


  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>


  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

    <div id="content" class="<?php echo $class; ?>">


      <?php echo $content_top; ?>
      <h2 class="product-title-lg"><?php echo $heading_title; ?></h2>

      <?php if ($thumb || $description) { ?>

      <div class="upper-box-container">
        <div class="row">
          <div class="col-sm-6">

            <div class="<?php echo $class; ?>">
              <?php if ($thumb || $images) { ?>
              <ul class="thumbnails">
                <?php if ($thumb) { ?>
                <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                <?php } ?>
                <?php if ($images) { ?>
                <?php foreach ($images as $image) { ?>
                <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
                <?php } ?>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
          </div>

          <div class="col-sm-6 desc">
            <?php if ($description) { ?>
            <?php echo $description; ?>
            <?php } ?>
            <?php } ?>
            <hr>

            <div id="permeable-prod-desc">

                <?php if ($attribute_groups) { ?>
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                <?php $attr_id = $attribute_group['attribute_group_id']; ?>
                <?php if ($attr_id == 3) { ?>
                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                <div>
                      <div class="perm-div">
                        <?php echo html_entity_decode($attribute['text'], ENT_QUOTES, 'UTF-8'); ?>
                        
                      </div>
                <?php } ?>
                <?php } ?>
                </div>
                <?php } ?>
                <?php } ?>
            
              <hr>

              <div id="perm-colors">
                <?php foreach ($options as $option) { ?>
                <?php if ($option['type'] == 'image') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                      <div class="radio">
                          <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail img-responsive" /> 
                          <div>
                            <?php echo $option_value['name']; ?>
                          </div>
                          <?php if ($option_value['price']) { ?>
                          (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                      </div>
                      <?php } ?>
                      <span><a class="link" href="">More ... </a></span>
                    </div>
                  </div>
                <?php } }?>

                  <div class="enquire-btn-box">
                    <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
                  </div>

              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="lower-box-container">
        <div class="row">
          <?php if ($column_left && $column_right) { ?>
          <?php $class = 'col-sm-6'; ?>
          <?php } elseif ($column_left || $column_right) { ?>
          <?php $class = 'col-sm-6'; ?>
          <?php } else { ?>
          <?php $class = 'col-sm-8'; ?>
          <?php } ?>

            
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab-introduction" data-toggle="tab">
              <?php echo $tab_introduction; ?></a></li>

              <?php if ($attribute_groups) { ?>
              <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_specification; ?></a></li>
              <?php } ?>

              <?php if ($tab_gallery) { ?>
              <li><a href="#tab-gallery" data-toggle="tab"><?php echo $tab_gallery; ?></a></li>
              <?php } ?>
            </ul>

             <!--  <?php if ($attribute_groups) { ?>
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                  <?php $attr_id = $attribute_group['attribute_group_id']; ?>
                    <?php if ($attr_id == 4) { ?>
                      <tbody>
                        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                        <tr>
                          <td><?php echo $attribute['name']; ?></td>
                          <td><?php echo html_entity_decode($attribute['text'], ENT_QUOTES, 'UTF-8'); ?></td>
                        </tr>
                        <?php } ?>
                      </tbody>
                    <?php } else {} ?>
                  <?php } ?>
                <?php } ?> -->

            <div class="tab-content">

              <!-- INTRODUCTION TAB -->
              <div class="tab-pane active" id="tab-introduction">
                <?php if ($attribute_groups) { ?>
                <?php foreach ($attribute_groups as $attribute_group) { ?>
                  <?php $attr_id = $attribute_group['attribute_group_id']; ?>
                    <?php if ($attr_id == 4) { ?>
                        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                        <?php echo html_entity_decode($attribute['text'], ENT_QUOTES, 'UTF-8'); ?></td>
                        <?php } ?>
                    <?php } else {} ?>
                  <?php } ?>
                <?php } ?>    
              </div>
                <!-- <div class="center tab-logo">
                  <img src="image/catalog/images/permeable/intro/perm-eco-logo.jpg" class="perm-tab-logo">
                </div>

                <div class="tab-container">
                  <div class="row">
                    <div class="col-sm-8">
                      <h5>Cerapaver</h5>
                      <p> Eco-Friendly Permeable Paver is now available in Singapore.BuiId Plus Private Ltd is pleased to introduce CERAPAVER, a range of totally permeable to Singapore. Cerapaver attained the Green Label mark It has no toxic or hazardous substances in its composition.Cerapaver is made to last for many years due to its unique manufacturing process. Damaged and rejected tiles are recycled, crushed and added with clay to be compressed at 1600 Tonnes, Kilned & fired for 12 hours at 1200c Therefore, Cerapaver has high compressive strength & breaking load (UP to 20KN) Colours of Cerapaver Can last for many years. 
                      </p>

                      <h5>Key Feature</h5>
                      <ul class="ul-tabs">
                        <li>• Helps to i nfiltrate rain & stormwater runoff </li>
                        <li>• Increases the efficiency Of water management. </li>
                        <li>• Retains water within its structure, allows evaporation & helps to mitigate "Urban Heat Island Effect"</li>
                        <li>• Slip resistant (Rll- R12) </li>
                        <li>• Colourfast, Colours of Cerapaver can last for many years </li>
                        <li>• Available in 7 attractive colou rs ( Please contact us if colours not stated here)</li>
                        <li>• Range Of Sizes, include Large format </li>
                      </ul>

                      <h5>Additional features</h5>
                      <ul class="ul-tabs">
                        <li>• Reduce cost of installing drainage </li>
                        <li>• Allows infiltration into ground and assist in replenishing ground water.</li>
                        <li>• Removes pollutant such as Nitrates, Phosphate & heavy metal from storm water run-off. </li>
                        <li>• Provide water supply to trees & Landscape area, reduce flooding </li>
                        <li>• Absorbs sound and reduce traffic noise due to its porous structure of Cerapaver </li>
                        <li>• Can be recycled and reused on other sites </li>
                        <li>• Easy to maintain (power wash when necessary) </li>
                        <li>• More Cost effective than a Iternative materials</li>
                      </ul>

                      <h5>Cerapaver are prefect for range of application</h5>
                      <ul class="ul-tabs">
                        <li>• Car parks, footpaths, jogging paths, neighbourhood parks & Connectors. public & private plazas/courtyards, pool area, roof terraces, public spaces. Green building projects.</li>
                        <li>• Driveways for residential homes & multi-dwelling developments </li>
                        <li>• Commercial & industrial storage facilities</li>
                        <li>Build Plus Private Ltd has an exclusive agreement with LVDAO Technology Co.,Ltd. to market and supply Eco Friendly Ceramic permeable paver in Singapore as "Cerapaver".</li>
                      </ul>




                    </div>

                    <div class="col-sm-4">
                      <img src="image/catalog/images/permeable/intro/1.jpg" class="perm-tab-img">
                      <br>
                      <img src="image/catalog/images/permeable/intro/2.jpg" class="perm-tab-img">
                    </div>

                  </div>
                </div> -->
              


              <!-- SPECIFICATION TAB -->
              <div class="tab-pane" id="tab-specification">

                <?php if ($attribute_groups) { ?>
                  <?php foreach ($attribute_groups as $attribute_group) { ?>
                    <?php $attr_id = $attribute_group['attribute_group_id']; ?>
                      <?php if ($attr_id == 5) { ?>
                          <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                          <?php echo html_entity_decode($attribute['text'], ENT_QUOTES, 'UTF-8'); ?></td>
                          <?php } ?>
                      <?php } else {} ?>
                    <?php } ?>
                  <?php } ?>  

                  <!-- <div class="tab-container">
                  <div class="row">

                    <div class="col-sm-5">
                      <img src="image/catalog/images/permeable/specs/green-label.png" class="perm-tab-greenlabel">
                      <h4 class="perm-specs-desc">Please contact us for a copy for our Green Label Certificate</h4>
                      <br>
                      <div class="col-xs-6">
                         <img src="image/catalog/images/permeable/specs/image002.png" class="perm-specs-img">
                      </div>
                      <div class="col-xs-6">
                        <img src="image/catalog/images/permeable/specs/image008.png" class="perm-specs-img">
                      </div>
                    
                    </div>

                    <div class="col-sm-7">
                      <p>Cerapaver contains no hazardous substance and is certified by <strong> Green Label - Singapore </strong> to be enviromentally friendly Cerapaver is permeable ceramic paver manufactured from recycle ceramic.<br>
                        * Sizes<br>
                        * Colours<br>
                        * Test Results<br>
                      </p>

                      <table id="specs-tab-table">
                        <tbody>
                          <tr >
                            <th colspan="4">
                              Weight of Cerapaver
                            </th>
                          </tr>
                          <tr>
                            <td>Sizes (mm) *</td>
                            <td>Weight per Piece</td>
                            <td>No. of pieces /m2</td>
                            <td>Weight /m2 (KG)</td>
                          </tr>
                          <tr>
                            <td>200 x 100 x 55</td>
                            <td>1.97 KG</td>
                            <td>50 Pieces</td>
                            <td>98.5 KG</td>
                          </tr>
                           <tr>
                            <td>200 x 200 x 55</td>
                            <td>3.80 KG</td>
                            <td>25 Pieces</td>
                            <td>95 KG</td>
                          </tr>
                           <tr>
                            <td>300 x 150 x 55</td>
                            <td>4.5 KG</td>
                            <td>22.22 Pieces</td>
                            <td>101.32 KG</td>
                          </tr>
                          <tr>
                            <td>300 x 300 x 55</td>
                            <td>9=8.90 KG</td>
                            <td>11.11 Pieces</td>
                            <td>98.89 KG</td>
                          </tr>
                        </tbody>
                      </table>
                    </div>

                  </div>
                </div> -->
              </div>


              <!-- GALLERY TAB -->
              <div class="tab-pane" id="tab-gallery">
                <!-- <?php echo $content_bottom; ?> -->

                asdsad
              </div>
              

               <!--  <form class="form-horizontal" id="form-review">
                  <div id="review"></div>
                  <h2><?php echo $text_write; ?></h2>
                  <?php if ($review_guest) { ?>
                  <div class="form-group required">
                    <div class="col-sm-12">
                      <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                      <input type="text" name="name" value="" id="input-name" class="form-control" />
                    </div>
                  </div>
                  <div class="form-group required">
                    <div class="col-sm-12">
                      <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                      <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                      <div class="help-block"><?php echo $text_note; ?></div>
                    </div>
                  </div>
                  <div class="form-group required">
                    <div class="col-sm-12">
                      <label class="control-label"><?php echo $entry_rating; ?></label>
                      &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                      <input type="radio" name="rating" value="1" />
                      &nbsp;
                      <input type="radio" name="rating" value="2" />
                      &nbsp;
                      <input type="radio" name="rating" value="3" />
                      &nbsp;
                      <input type="radio" name="rating" value="4" />
                      &nbsp;
                      <input type="radio" name="rating" value="5" />
                      &nbsp;<?php echo $entry_good; ?></div>
                  </div>
                  <?php if ($site_key) { ?>
                    <div class="form-group">
                      <div class="col-sm-12">
                        <div class="g-recaptcha" data-sitekey="<?php echo $site_key; ?>"></div>
                      </div>
                    </div>
                  <?php } ?>
                  <div class="buttons clearfix">
                    <div class="pull-right">
                      <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                    </div>
                  </div>
                  <?php } else { ?>
                  <?php echo $text_login; ?>
                  <?php } ?>
                </form> -->
        </div>
      </div>












































        <!-- <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-4'; ?>
        <?php } ?> -->

        <!-- <div class="<?php echo $class; ?>">
          <div class="btn-group">
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product_id; ?>');"><i class="fa fa-heart"></i></button>
            <button type="button" data-toggle="tooltip" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');"><i class="fa fa-exchange"></i></button>
          </div>
          <h1><?php echo $heading_title; ?></h1>
          <ul class="list-unstyled">
            <?php if ($manufacturer) { ?>
            <li><?php echo $text_manufacturer; ?> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></li>
            <?php } ?>
            <li><?php echo $text_model; ?> <?php echo $model; ?></li>
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>
          </ul>
          <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><?php echo $price; ?></h2>
            </li>
            <?php } else { ?>
            <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
            <li>
              <h2><?php echo $special; ?></h2>
            </li>
            <?php } ?>
            <?php if ($tax) { ?>
            <li><?php echo $text_tax; ?> <?php echo $tax; ?></li>
            <?php } ?>
            <?php if ($points) { ?>
            <li><?php echo $text_points; ?> <?php echo $points; ?></li>
            <?php } ?>
            <?php if ($discounts) { ?>
            <li>
              <hr>
            </li>
            <?php foreach ($discounts as $discount) { ?>
            <li><?php echo $discount['quantity']; ?><?php echo $text_discount; ?><?php echo $discount['price']; ?></li>
            <?php } ?>
            <?php } ?>
          </ul>
          <?php } ?>
          <div id="product">
            <?php if ($options) { ?>
            <hr>
            <h3><?php echo $text_option; ?></h3>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <?php if ($recurrings) { ?>
            <hr>
            <h3><?php echo $text_payment_recurring ?></h3>
            <div class="form-group required">
              <select name="recurring_id" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($recurrings as $recurring) { ?>
                <option value="<?php echo $recurring['recurring_id'] ?>"><?php echo $recurring['name'] ?></option>
                <?php } ?>
              </select>
              <div class="help-block" id="recurring-description"></div>
            </div>
            <?php } ?>
            <div class="form-group">
              <label class="control-label" for="input-quantity"><?php echo $entry_qty; ?></label>
              <input type="text" name="quantity" value="<?php echo $minimum; ?>" size="2" id="input-quantity" class="form-control" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <br />
              <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
            </div>
            <?php if ($minimum > 1) { ?>
            <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $text_minimum; ?></div>
            <?php } ?>
          </div>
          <?php if ($review_status) { ?>
          <div class="rating">
            <p>
              <?php for ($i = 1; $i <= 5; $i++) { ?>
              <?php if ($rating < $i) { ?>
              <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } else { ?>
              <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
              <?php } ?>
              <?php } ?>
              <a href="" onclick="$('a[href=\'#tab-gallery\']').trigger('click'); return false;"><?php echo $reviews; ?></a> / <a href="" onclick="$('a[href=\'#tab-gallery\']').trigger('click'); return false;"><?php echo $text_write; ?></a></p>
            <hr> -->
            <!-- AddThis Button BEGIN -->
            <div class="addthis_toolbox addthis_default_style"><a class="addthis_button_facebook_like" fb:like:layout="button_count"></a> <a class="addthis_button_tweet"></a> <a class="addthis_button_pinterest_pinit"></a> <a class="addthis_counter addthis_pill_style"></a></div>
            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
            <!-- AddThis Button END -->
          </div>
          <?php } ?>
        </div>
      </div>

      <?php if ($products) { ?>
      <h3><?php echo $text_related; ?></h3>


      <div class="row">
        <?php $i = 0; ?>
        <?php foreach ($products as $product) { ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
        <?php } else { ?>
        <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
        <?php } ?>
        <div class="<?php echo $class; ?>">
          <div class="product-thumb transition">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div class="caption">
              <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
              <p><?php echo $product['description']; ?></p>
              <?php if ($product['rating']) { ?>
              <div class="rating">
                <?php for ($i = 1; $i <= 5; $i++) { ?>
                <?php if ($product['rating'] < $i) { ?>
                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } else { ?>
                <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                <?php } ?>
                <?php } ?>
              </div>
              <?php } ?>
              <?php if ($product['price']) { ?>
              <p class="price">
                <?php if (!$product['special']) { ?>
                <?php echo $product['price']; ?>
                <?php } else { ?>
                <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php } ?>
                <?php if ($product['tax']) { ?>
                <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                <?php } ?>
              </p>
              <?php } ?>
            </div>
            <div class="button-group">
              <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
              <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
            </div>
          </div>
        </div>
        <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
        <div class="clearfix visible-md visible-sm"></div>
        <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
        <div class="clearfix visible-md"></div>
        <?php } elseif ($i % 4 == 0) { ?>
        <div class="clearfix visible-md"></div>
        <?php } ?>
        <?php $i++; ?>
        <?php } ?>
      </div>
      <?php } ?>
      <?php if ($tags) { ?>
      <p><?php echo $text_tags; ?>
        <?php for ($i = 0; $i < count($tags); $i++) { ?>
        <?php if ($i < (count($tags) - 1)) { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
        <?php } else { ?>
        <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
        <?php } ?>
        <?php } ?>
      </p>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<?php 
} elseif($page_route == "product/product" && $product_route == "54"){ ?>

<!-- PRODUCT GLASS BLOCKS -->
<div class="container">

  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>

  <div class="tab-container">
    <div class="row"><?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>

      <div id="content" class="<?php echo $class; ?>">

        <img src="image/catalog/images/glass/banner.jpg" class="specs-banner">

        <div class="col-sm-8 float-none pad-0">
          <h2 class="product-title-lg"><?php echo $heading_title; ?></h2>
          <?php if ($description) { ?>
          <?php echo $description; ?>
          <?php } ?>
        </div>

        <hr>

        <!-- INSULATING CLEAR GLASS BLOCKS -->
        <div class="tab-sections">
          <?php if ($attribute_groups) { ?>
          <!-- <?php debug($attribute_groups); ?> -->
          <?php foreach ($attribute_groups as $attribute_group) { ?>
          <?php $attr_id = $attribute_group['attribute_group_id']; ?>
          <?php if ($attr_id == 6) { ?>
          <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
          <?php if($attribute['attribute_id'] == 15) { ?>
            
            <h5 class="glass-section-title ">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p>All blocks can be sandblasted on one or both sides</p>

            <div class="tab-image-container clearfix">
              <div class="col-sm-4">
                <img src="image/catalog/images/glass/image020.jpg" class="img-responsive tab-image-glass" >
              </div>
              <div class="col-sm-4">
                <img src="image/catalog/images/glass/image022.jpg" class="img-responsive tab-image-glass" >
              </div>
              <div class="col-sm-4">
                <img src="image/catalog/images/glass/image024.jpg" class="img-responsive tab-image-glass" >
              </div>
            </div>


            <div class="dimensions-box">
              <h6 class="dimensions-title">Available sizes for glass blocks: </h6>
              <p class="">
                190 x 190 x 50mm, 190 x 190 x 80mm, 190 x 190 x100mm<br>
                240 x 240 x80mm, 300 x 300 x100mm, 240 x 115 x80mm<br>
                115 x 115 x 80mm<br>
              </p>

              <p>Please do contact us for Stock availability</p>
            </div>

            <div class="enquire-btn-box">
              <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
            </div>

          <?php } ?>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          <?php } ?>
        </div>

        <hr>
        

        <!-- INSULATING COLOUR GLASS BLOCKS -->
        <div class="tab-sections">
          <?php if ($attribute_groups) { ?>
          <!-- <?php debug($attribute_groups); ?> -->
          <?php foreach ($attribute_groups as $attribute_group) { ?>
          <?php $attr_id = $attribute_group['attribute_group_id']; ?>
          <?php if ($attr_id == 6) { ?>
          <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
          <?php if($attribute['attribute_id'] == 16) { ?>
            
            <h5 class="glass-section-title ">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p>All blocks can be sandblasted on one or both sides</p>

            <div class="tab-image-container clearfix">
                <img src="image/catalog/images/glass/image026.jpg" class="img-responsive" >
            </div>


            <div class="dimensions-box">
              <h6 class="dimensions-title">Available sizes for glass blocks: </h6>
              <p>
                190 x 190 x 80mm
              </p>

              <p>Please do contact us for Stock availability</p>
            </div>

            <div class="enquire-btn-box">
              <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
            </div>

          <?php } ?>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          <?php } ?>
        </div>

        <hr>


        <!-- SKY GLASS PAVER -->
        <div class="tab-sections">
          <?php if ($attribute_groups) { ?>
          <!-- <?php debug($attribute_groups); ?> -->
          <?php foreach ($attribute_groups as $attribute_group) { ?>
          <?php $attr_id = $attribute_group['attribute_group_id']; ?>
          <?php if ($attr_id == 6) { ?>
          <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
          <?php if($attribute['attribute_id'] == 17) { ?>
            
            <h5 class="glass-section-title ">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p>Our glass paver are made of pressed glass, single or double-walled glass pavers can stand heavy loads. Designed to be constructed horizontally, floor or ceiling. It can be laid in many ways, aligned, group individually in a star patter. It creates a decorative inlet of light bringin both luminosity and style to a building.</p>

            <div class="tab-image-container clearfix">
              <div class="col-sm-5 flex">
                <img src="image/catalog/images/glass/image030.jpg" class="img-responsive tab-image-glass" >
              </div>
              <div class="col-sm-5 flex">
                <img src="image/catalog/images/glass/image028.jpg" class="img-responsive tab-image-glass" >
              </div>
            </div>


            <div class="dimensions-box">
              <h6 class="dimensions-title">Available sizes for glass blocks: </h6>
              <p>
                190 x 190 x 80mm
              </p>

              <p>Please do contact us for Stock availability</p>
            </div>

            <div class="enquire-btn-box">
              <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
            </div>

          <?php } ?>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          <?php } ?>
        </div>

        <hr>


        <!-- PC VENTILATION BLOCKS WITH STAINLESS STEEL MESH -->
        <div class="tab-sections">
          <?php if ($attribute_groups) { ?>
          <!-- <?php debug($attribute_groups); ?> -->
          <?php foreach ($attribute_groups as $attribute_group) { ?>
          <?php $attr_id = $attribute_group['attribute_group_id']; ?>
          <?php if ($attr_id == 6) { ?>
          <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
          <?php if($attribute['attribute_id'] == 18) { ?>
            
            <h5 class="glass-section-title ">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p></p>

            <div class="tab-image-container clearfix">
              <div class="col-sm-3 flex">
                <img src="image/catalog/images/glass/image035.jpg" class="img-responsive tab-image-glass" >
              </div>
              <div class="col-sm-3 flex">
                <img src="image/catalog/images/glass/image036.jpg" class="img-responsive tab-image-glass" >
              </div>
              <div class="col-sm-3 flex">
                <img src="image/catalog/images/glass/image032.jpg" class="img-responsive tab-image-glass" >
              </div>
            </div>


            <div class="dimensions-box">
              <h6 class="dimensions-title">Available sizes for glass blocks: </h6>
              <p>
                190 x 190 x 80mm
              </p>

              <p>Please do contact us for Stock availability</p>
            </div>

            <div class="enquire-btn-box">
              <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
            </div>

          <?php } ?>
          <?php } ?>
          <?php } ?>
          <?php } ?>
          <?php } ?>
        </div>


      </div>
    </div>


  </div>
</div>


<?php 
} elseif($page_route == "product/product" && $product_route == "55"){ ?>

<!-- HOMOGENOUS TILES -->
<div class="container">

  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>

  
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

    <div id="content" class="<?php echo $class; ?>">

      <h2 class="product-title-lg"><?php echo $heading_title; ?></h2>
      <?php if ($description) { ?>
      <?php echo $description; ?>
      <?php } ?>

      <div class="tab-image-container clearfix">
        <div class="row row-margin-5 ">
          <div class="col-sm-6 pad-5 flex">
            <img src="image/catalog/images/homo/left.jpg" class="img-responsive image-homo" >
          </div>
          <div class="col-sm-6 pad-5 flex">
            <img src="image/catalog/images/homo/right.jpg" class="img-responsive image-homo" >
          </div>
        </div>
      </div>

      <div class="tab-sections">
        <?php if ($attribute_groups) { ?>
        <!-- <?php debug($attribute_groups); ?> -->
        <?php foreach ($attribute_groups as $attribute_group) { ?>
        <?php $attr_id = $attribute_group['attribute_group_id']; ?>
        <?php if ($attr_id == 7) { ?>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <?php if($attribute['attribute_id'] == 19) { ?>

          <div class="section-container mar-bot-2 mar-top-2 pad-0">
            <h5 class="homo-section-title">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p></p>
            <div class="row">
              <div class="col-sm-7">
                <img src="image/catalog/images/homo/1.jpg" class="img-responsive image-homo" >
              </div>
              <div class="col-sm-5">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Surface Finish: Rock / Soft Polished: </h6>
                    <table class="table-dimensions mar-bot-3 ">
                      <tr><td>Size:</td><td>600 x 600 mm</td><td>Thickness: 10mm</td></tr>
                      <tr><td colspan="1"></td><td>600 x 900 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>800 x 800 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>1200 x 600 mm</td><td>              </td></tr>
                    </table>

                    <div class="enquire-btn-box">
                      <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
                    </div>
                </div>
              </div>
            </div>
          </div>

          <hr>

          <div class="section-container mar-bot-2 mar-top-3 pad-0">
            <h5 class="homo-section-title">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p></p>
            <div class="row">
              <div class="col-sm-7">
                <img src="image/catalog/images/homo/2.jpg" class="img-responsive" >
              </div>
              <div class="col-sm-5">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Surface Finish: Rock / Soft Polished: </h6>
                    <table class="table-dimensions mar-bot-3 ">
                      <tr><td>Size:</td><td>600 x 600 mm</td><td>Thickness: 10mm</td></tr>
                      <tr><td colspan="1"></td><td>600 x 900 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>800 x 800 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>1200 x 600 mm</td><td>              </td></tr>
                    </table>

                    <div class="enquire-btn-box">
                      <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
                    </div>
                </div>
              </div>
            </div>
          </div>

          <hr>

          <div class="section-container mar-bot-2 mar-top-3 pad-0">
            <h5 class="homo-section-title">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p></p>
            <div class="row">
              <div class="col-sm-7">
                <img src="image/catalog/images/homo/3.jpg" class="img-responsive" >
              </div>
              <div class="col-sm-5">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Surface Finish: Rock / Polished: </h6>
                    <table class="table-dimensions mar-bot-3 ">
                      <tr><td>Size:</td><td>600 x 600 mm</td><td>Thickness: 10mm</td></tr>
                      <tr><td colspan="1"></td><td>600 x 900 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>800 x 800 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>1200 x 600 mm</td><td>              </td></tr>
                    </table>

                    <div class="enquire-btn-box">
                      <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
                    </div>
                </div>
              </div>
            </div>
          </div>

        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php } ?>
      </div>


    </div>
  </div>
</div>

<?php 
} elseif($page_route == "product/product" && $product_route == "56"){ ?>

<!-- MARBLE GRANITE -->
<div id="marble-container" class="container">

  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>

  
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

    <div id="content" class="<?php echo $class; ?>">

      <div class="tab-image-container clearfix">
        <img src="image/catalog/images/marble/banner.jpg" class="specs-banner">

      </div>

      <div class="col-sm-10 float-none pad-0">
        <h2 class="product-title-lg"><?php echo $heading_title; ?></h2>
        <p class="mar-0">All blocks can be sandblasted on one or both sides</p>
        <p class="mar-0">(Polished, Flamed, bush hammered, Horn, groove finish)</p>


        <div id="marble-colors-container">
                <?php foreach ($options as $option) { ?>
                <?php if ($option['type'] == 'image') { ?>
                  <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
                    <div id="input-option<?php echo $option['product_option_id']; ?>">
                      <?php foreach ($option['product_option_value'] as $option_value) { ?>
                      <div class="radio">
                          <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail img-responsive" /> 
                          <div>
                            <strong><?php echo $option_value['name']; ?></strong>
                          </div>
                          <?php if ($option_value['price']) { ?>
                          (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                          <?php } ?>
                      </div>
                      <?php } ?>
                      <!-- <span><a class="link" href="">More ... </a></span> -->
                    </div>
                  </div>
                <?php } }?>
        </div>

        <div class="enquire-btn-box">
          <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
        </div>
        
      </div>



      <div class="tab-sections">
        <?php if ($attribute_groups) { ?>
        <!-- <?php debug($attribute_groups); ?> -->
        <?php foreach ($attribute_groups as $attribute_group) { ?>
        <?php $attr_id = $attribute_group['attribute_group_id']; ?>
        <?php if ($attr_id == 7) { ?>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <?php if($attribute['attribute_id'] == 19) { ?>

          <div class="section-container mar-bot-2 mar-top-2 pad-0">
            <h5 class="homo-section-title">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p></p>
            <div class="row">
              <div class="col-sm-7">
                <img src="image/catalog/images/homo/1.jpg" class="img-responsive image-homo" >
              </div>
              <div class="col-sm-5">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Surface Finish: Rock / Soft Polished: </h6>
                    <table class="table-dimensions mar-bot-3 ">
                      <tr><td>Size:</td><td>600 x 600 mm</td><td>Thickness: 10mm</td></tr>
                      <tr><td colspan="1"></td><td>600 x 900 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>800 x 800 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>1200 x 600 mm</td><td>              </td></tr>
                    </table>

                    <div class="enquire-btn-box">
                      <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
                    </div>
                </div>
              </div>
            </div>
          </div>

          <hr>

          <div class="section-container mar-bot-2 mar-top-3 pad-0">
            <h5 class="homo-section-title">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p></p>
            <div class="row">
              <div class="col-sm-7">
                <img src="image/catalog/images/homo/2.jpg" class="img-responsive" >
              </div>
              <div class="col-sm-5">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Surface Finish: Rock / Soft Polished: </h6>
                    <table class="table-dimensions mar-bot-3 ">
                      <tr><td>Size:</td><td>600 x 600 mm</td><td>Thickness: 10mm</td></tr>
                      <tr><td colspan="1"></td><td>600 x 900 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>800 x 800 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>1200 x 600 mm</td><td>              </td></tr>
                    </table>

                    <div class="enquire-btn-box">
                      <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
                    </div>
                </div>
              </div>
            </div>
          </div>

          <hr>

          <div class="section-container mar-bot-2 mar-top-3 pad-0">
            <h5 class="homo-section-title">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p></p>
            <div class="row">
              <div class="col-sm-7">
                <img src="image/catalog/images/homo/3.jpg" class="img-responsive" >
              </div>
              <div class="col-sm-5">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Surface Finish: Rock / Polished: </h6>
                    <table class="table-dimensions mar-bot-3 ">
                      <tr><td>Size:</td><td>600 x 600 mm</td><td>Thickness: 10mm</td></tr>
                      <tr><td colspan="1"></td><td>600 x 900 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>800 x 800 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>1200 x 600 mm</td><td>              </td></tr>
                    </table>

                    <div class="enquire-btn-box">
                      <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
                    </div>
                </div>
              </div>
            </div>
          </div>

        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php } ?>
      </div>


    </div>
  </div>
</div>


<?php 
} elseif($page_route == "product/product" && $product_route == "57"){ ?>

<!-- TACTILES -->
<div id="tactiles-container" class="container">

  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>

  
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

    <div id="content" class="<?php echo $class; ?>">

      <div class="tab-image-container clearfix">
        <img src="image/catalog/images/tactiles/banner.jpg" class="specs-banner">
      </div>

      <h2 class="product-title-lg"><?php echo $heading_title; ?></h2>
      <?php if ($description) { ?>
      <?php echo $description; ?>
      <?php } ?>

      <div class="tab-image-container clearfix">
        <div class="row row-margin-5 mar-bot-2">
          <div class="col-sm-2 pad-5 flex">

            <div class="dimensions-box">
              <h6 class="dimensions-title">Tactiles are used:</h6>
              <p class="">
                Road Crossing<br>
                Bus Stops<br>
                Ramps<br>
                Walks<br>
                Carparks / pavements<br>
              </p>

              <p>Please do contact us for Stock availability</p>
            </div>

          </div>
          <div class="col-sm-5 pad-5 flex">
            <img src="image/catalog/images/tactiles/left.jpg" class="img-responsive image-homo mar-bot-1" >
          </div>
          <div class="col-sm-5 pad-5 flex">
            <img src="image/catalog/images/tactiles/right.jpg" class="img-responsive image-homo mar-bot-1" >
          </div>
        </div>

        <div class="row">
          <div class="col-sm-4">
            <p>Tactiles for visually impaired</p>
            <div class="row">
              <div class="col-xs-6">
                <img src="image/catalog/images/tactiles/image066.jpg" class="img-responsive" >
                <div class="center mar-top-1">
                  <strong>STUDY</strong>
                </div>
              </div>
              <div class="col-xs-6 dimensions-box">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Color :</h6>
                  <p class="">
                    Yellow<br>
                    Black<br>
                    Grey<br>
                  </p>
                  <h6 class="dimensions-title">Size :</h6>
                  <p class="">
                    300 x 300 mm<br>
                  </p>
                </div>
              </div>
            </div>
          </div>

          <div class="col-sm-4">
            <p>&nbsp;</p>
            <div class="row">
              <div class="col-xs-6">
                <img src="image/catalog/images/tactiles/image065.jpg" class="img-responsive" >
                <div class="center mar-top-1">
                  <strong>DIRECTIONAL</strong>
                </div>
              </div>
              <div class="col-xs-6 dimensions-box">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Color :</h6>
                  <p class="">
                    Yellow<br>
                    Black<br>
                    Grey<br>
                  </p>
                  <h6 class="dimensions-title">Size :</h6>
                  <p class="">
                    300 x 300 mm<br>
                  </p>
                </div>
              </div>
            </div>
          </div>


          <div class="col-sm-4">
            <p>&nbsp;</p>
            <div class="row">
              <div class="col-xs-6">
                <img src="image/catalog/images/tactiles/image062.jpg" class="img-responsive" >
                <div class="center mar-top-1">
                  <strong>PLAIN YELLOW TILES</strong>
                </div>
              </div>
              <div class="col-xs-6 dimensions-box">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Available now</h6>
                  <h6 class="dimensions-title">Size :</h6>
                  <p class="">
                    300 x 300 mm<br>
                  </p>
                </div>
              </div>
            </div>
          </div>

        </div>

        <div class="enquire-btn-box mar-top-2">
          <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
        </div>

        </div>
      </div>

      <div class="tab-sections">
        <?php if ($attribute_groups) { ?>
        <!-- <?php debug($attribute_groups); ?> -->
        <?php foreach ($attribute_groups as $attribute_group) { ?>
        <?php $attr_id = $attribute_group['attribute_group_id']; ?>
        <?php if ($attr_id == 7) { ?>
        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
        <?php if($attribute['attribute_id'] == 19) { ?>

          <div class="section-container mar-bot-2 mar-top-2 pad-0">
            <h5 class="homo-section-title">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p></p>
            <div class="row">
              <div class="col-sm-7">
                <img src="image/catalog/images/homo/1.jpg" class="img-responsive image-homo" >
              </div>
              <div class="col-sm-5">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Surface Finish: Rock / Soft Polished: </h6>
                    <table class="table-dimensions mar-bot-3 ">
                      <tr><td>Size:</td><td>600 x 600 mm</td><td>Thickness: 10mm</td></tr>
                      <tr><td colspan="1"></td><td>600 x 900 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>800 x 800 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>1200 x 600 mm</td><td>              </td></tr>
                    </table>

                    <div class="enquire-btn-box">
                      <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
                    </div>
                </div>
              </div>
            </div>
          </div>

          <hr>

          <div class="section-container mar-bot-2 mar-top-3 pad-0">
            <h5 class="homo-section-title">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p></p>
            <div class="row">
              <div class="col-sm-7">
                <img src="image/catalog/images/homo/2.jpg" class="img-responsive" >
              </div>
              <div class="col-sm-5">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Surface Finish: Rock / Soft Polished: </h6>
                    <table class="table-dimensions mar-bot-3 ">
                      <tr><td>Size:</td><td>600 x 600 mm</td><td>Thickness: 10mm</td></tr>
                      <tr><td colspan="1"></td><td>600 x 900 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>800 x 800 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>1200 x 600 mm</td><td>              </td></tr>
                    </table>

                    <div class="enquire-btn-box">
                      <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
                    </div>
                </div>
              </div>
            </div>
          </div>

          <hr>

          <div class="section-container mar-bot-2 mar-top-3 pad-0">
            <h5 class="homo-section-title">
              <?php echo html_entity_decode($attribute['name'], ENT_QUOTES, 'UTF-8'); ?>
            </h5>
            <p></p>
            <div class="row">
              <div class="col-sm-7">
                <img src="image/catalog/images/homo/3.jpg" class="img-responsive" >
              </div>
              <div class="col-sm-5">
                <div class="dimensions-box">
                  <h6 class="dimensions-title">Surface Finish: Rock / Polished: </h6>
                    <table class="table-dimensions mar-bot-3 ">
                      <tr><td>Size:</td><td>600 x 600 mm</td><td>Thickness: 10mm</td></tr>
                      <tr><td colspan="1"></td><td>600 x 900 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>800 x 800 mm</td><td>               </td></tr>
                      <tr><td colspan="1"></td><td>1200 x 600 mm</td><td>              </td></tr>
                    </table>

                    <div class="enquire-btn-box">
                      <a class="btn enquire-btn" data-toggle="modal" data-target="#modal-contact-form">Enquiry Now</a>
                    </div>
                </div>
              </div>
            </div>
          </div>

        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php } ?>
      </div>


    </div>
  </div>
</div>

<?php }
} ?>



<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
  $.ajax({
    url: 'index.php?route=product/product/getRecurringDescription',
    type: 'post',
    data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
    dataType: 'json',
    beforeSend: function() {
      $('#recurring-description').html('');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();

      if (json['success']) {
        $('#recurring-description').html(json['success']);
      }
    }
  });
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
  $.ajax({
    url: 'index.php?route=checkout/cart/add',
    type: 'post',
    data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
    dataType: 'json',
    beforeSend: function() {
      $('#button-cart').button('loading');
    },
    complete: function() {
      $('#button-cart').button('reset');
    },
    success: function(json) {
      $('.alert, .text-danger').remove();
      $('.form-group').removeClass('has-error');

      if (json['error']) {
        if (json['error']['option']) {
          for (i in json['error']['option']) {
            var element = $('#input-option' + i.replace('_', '-'));

            if (element.parent().hasClass('input-group')) {
              element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            } else {
              element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
            }
          }
        }

        if (json['error']['recurring']) {
          $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
        }

        // Highlight any found errors
        $('.text-danger').parent().addClass('has-error');
      }

      if (json['success']) {
        $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

        $('#cart > button').html('<i class="fa fa-shopping-cart"></i> <span id="cart-total">' + json['total'] + '</span>');

        $('html, body').animate({ scrollTop: 0 }, 'slow');

        $('#cart > ul').load('index.php?route=common/cart/info ul li');
      }
    }
  });
});
//--></script>
<script type="text/javascript"><!--
$('.date').datetimepicker({
  pickTime: false
});

$('.datetime').datetimepicker({
  pickDate: true,
  pickTime: true
});

$('.time').datetimepicker({
  pickDate: false
});

$('button[id^=\'button-upload\']').on('click', function() {
  var node = this;

  $('#form-upload').remove();

  $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

  $('#form-upload input[name=\'file\']').trigger('click');

  if (typeof timer != 'undefined') {
      clearInterval(timer);
  }

  timer = setInterval(function() {
    if ($('#form-upload input[name=\'file\']').val() != '') {
      clearInterval(timer);

      $.ajax({
        url: 'index.php?route=tool/upload',
        type: 'post',
        dataType: 'json',
        data: new FormData($('#form-upload')[0]),
        cache: false,
        contentType: false,
        processData: false,
        beforeSend: function() {
          $(node).button('loading');
        },
        complete: function() {
          $(node).button('reset');
        },
        success: function(json) {
          $('.text-danger').remove();

          if (json['error']) {
            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
          }

          if (json['success']) {
            alert(json['success']);

            $(node).parent().find('input').attr('value', json['code']);
          }
        },
        error: function(xhr, ajaxOptions, thrownError) {
          alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
      });
    }
  }, 500);
});
</script>
<script type="text/javascript">
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
  $.ajax({
    url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
    type: 'post',
    dataType: 'json',
    data: $("#form-review").serialize(),
    beforeSend: function() {
      $('#button-review').button('loading');
    },
    complete: function() {
      $('#button-review').button('reset');
    },
    success: function(json) {
      $('.alert-success, .alert-danger').remove();

      if (json['error']) {
        $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
      }

      if (json['success']) {
        $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

        $('input[name=\'name\']').val('');
        $('textarea[name=\'text\']').val('');
        $('input[name=\'rating\']:checked').prop('checked', false);
      }
    }
  });
});

$(document).ready(function() {
  $('.thumbnails').magnificPopup({
    type:'image',
    delegate: 'a',
    gallery: {
      enabled:true
    }
  });
});
//--></script>
<?php echo $footer; ?>