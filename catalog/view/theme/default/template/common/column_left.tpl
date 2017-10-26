<?php if ($modules) {

	if(isset($_GET['route'])){ 

		$route = $_GET['route'];

		if( $route == "common/home"){ ?>

		<column id="column-left" class="">
		  <?php foreach ($modules as $module) { ?>
		  <?php echo $module; ?>
		  <?php } ?>
		</column>
<?php 
	} 
	elseif($_GET['route'] == "product/category") {
	 ?>
	<column id="column-left" class="col-sm-3 hidden-xs left-category">
		<div class="cat-title">
			<?php echo "CATEGORIES"; ?>
			<img src="image/catalog/images/special/line.png" class="divider" >
		</div>

	  	<?php foreach ($modules as $module) { ?>
	  	<?php echo $module; ?>
	  	<?php } ?>
	</column>
	 <?php
	}

	else{
	 ?>
	 <column id="column-left" class="col-sm-3 hidden-xs">
	  <?php foreach ($modules as $module) { ?>
	  <?php echo $module; ?>
	  <?php } ?>
	</column>
	 <?php
	}

		} else 
{	?>

<column id="column-left" class="col-sm-3 hidden-xs">
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
</column>
<?php } } ?>
