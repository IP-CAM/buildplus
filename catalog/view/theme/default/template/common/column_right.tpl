<?php if ($modules) {

	if(isset($_GET['route'])){ 

		$route = $_GET['route'];

		if( $route == "common/home"){ ?>

		<column id="column-right" class="">
		  <?php foreach ($modules as $module) { ?>
		  <?php echo $module; ?>
		  <?php } ?>
		</column>
<?php 
	}	} else 
{	?>

<column id="column-right" class="col-sm-3 hidden-xs">
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
</column>
<?php } } ?>
